; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-htc-egpio.c_pt.bc'
source_filename = "../drivers/gpio/gpio-htc-egpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.egpio_info = type { %struct.spinlock, ptr, i32, i32, i32, i32, i32, i16, i32, i32, i32, ptr, i32 }
%struct.htc_egpio_platform_data = type { i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htc_egpio_chip = type { i32, i32, i32, i32, i32 }
%struct.egpio_chip = type { i32, i32, i32, ptr, %struct.gpio_chip }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_htc_egpio__239_409_egpio_init4 = internal global ptr @egpio_init, section ".initcall4.init", align 4
@egpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr @egpio_suspend, ptr @egpio_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"htc-egpio\00", [22 x i8] zeroinitializer }, align 32
@egpio_write_cache.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_htc_egpio\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"egpio_write_cache\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpio/gpio-htc-egpio.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EGPIO: setting %x to %x, was %x\0A\00", [63 x i8] zeroinitializer }, align 32
@egpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ei->lock\00", [22 x i8] zeroinitializer }, align 32
@egpio_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"egpio_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bus_shift = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@egpio_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.8, i8 0, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_shift = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"htc-egpio-%d\00", [19 x i8] zeroinitializer }, align 32
@egpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@egpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@egpio_muxed_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @egpio_ack, ptr @egpio_mask, ptr null, ptr @egpio_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@egpio_get.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"egpio_get\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"egpio_get_value(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@egpio_get.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"readw(%p + %x) = %x\0A\00", [43 x i8] zeroinitializer }, align 32
@egpio_set.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"egpio_set\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"egpio_set(%s, %d(%d), %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@egpio_set.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"egpio %s: reg %d = 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@egpio_mask.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"egpio_mask\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EGPIO mask %d %04x\0A\00", [44 x i8] zeroinitializer }, align 32
@egpio_unmask.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"egpio_unmask\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EGPIO unmask %d %04x\0A\00", [42 x i8] zeroinitializer }, align 32
@egpio_handler.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"egpio_handler\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ reg: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@egpio_handler.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"got IRQ %d\0A\00", [20 x i8] zeroinitializer }, align 32
@ack_irqs.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 17, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ack_irqs\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EGPIO ack - write %x to base+%x\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"egpio_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 395, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 397, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 248, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 277, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 293, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 299, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 319, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 334, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"egpio_muxed_chip\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 95, i32 24 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 143, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 154, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 182, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 191, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 85, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 92, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 109, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 116, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [33 x i8] c"../drivers/gpio/gpio-htc-egpio.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 70, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_gpio_htc_egpio__239_409_egpio_init4, ptr @egpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @egpio_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @egpio_probe.lock_key, ptr @egpio_probe.request_key, ptr @egpio_muxed_chip, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @egpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @egpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @egpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @egpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @egpio_muxed_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @egpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @egpio_driver, ptr noundef nonnull @egpio_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @egpio_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 92, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @egpio_probe.__key, i16 noundef signext 3) #6
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.body.if.end7_crit_edge, label %if.then6

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call4, align 4
  %chained_irq = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %chained_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %chained_irq, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body.if.end7_crit_edge
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base_addr = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end14.cleanup_crit_edge [
    i32 16, label %if.end14.if.end18_crit_edge
    i32 32, label %if.end14.if.end18_crit_edge245
  ]

if.end14.if.end18_crit_edge245:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14.if.end18_crit_edge, %if.end14.if.end18_crit_edge245
  %sub = add nsw i32 %8, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #6, !range !73
  %sub21 = sub nsw i32 29, %10
  %bus_shift = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %bus_shift to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub21, ptr %bus_shift, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_probe, %do.end32)) #6
          to label %if.then28 [label %do.end32], !srcloc !74

if.then28:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_shift, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_probe.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.7, i32 noundef %13) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %if.end18
  %reg_width = getelementptr inbounds %struct.htc_egpio_platform_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %reg_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_width, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %15, label %do.end32.cleanup_crit_edge [
    i32 8, label %do.end32.if.end38_crit_edge
    i32 16, label %do.end32.if.end38_crit_edge246
  ]

do.end32.if.end38_crit_edge246:                   ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end32.if.end38_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %do.end32.if.end38_crit_edge, %do.end32.if.end38_crit_edge246
  %sub40 = add nsw i32 %15, -1
  %17 = tail call i32 @llvm.ctlz.i32(i32 %sub40, i1 true) #6, !range !73
  %sub.i231 = sub nuw nsw i32 32, %17
  %reg_shift = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i231, ptr %reg_shift, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_probe, %do.end60)) #6
          to label %if.then56 [label %do.end60], !srcloc !74

if.then56:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_shift, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_probe.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.8, i32 noundef %20) #6
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %if.end38
  %21 = ptrtoint ptr %reg_width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_width, align 4
  %notmask = shl nsw i32 -1, %22
  %sub62 = xor i32 %notmask, -1
  %reg_mask = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub62, ptr %reg_mask, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %num_chips = getelementptr inbounds %struct.htc_egpio_platform_data, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %num_chips to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_chips, align 4
  %nchips = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %nchips to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %nchips, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 364) #6
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !75

devm_kcalloc.exit.thread:                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  %chip66239 = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 11
  %30 = ptrtoint ptr %chip66239 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %chip66239, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.end60
  %31 = extractvalue { i32, i1 } %28, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %31, i32 noundef 3520) #6
  %chip66 = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 11
  %32 = ptrtoint ptr %chip66 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i, ptr %chip66, align 4
  %tobool68.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool68.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %33 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp72241 = icmp sgt i32 %34, 0
  br i1 %cmp72241, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %chip73 = getelementptr inbounds %struct.htc_egpio_platform_data, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end97.for.body_crit_edge, %for.body.lr.ph
  %i.0242 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end97.for.body_crit_edge ]
  %35 = ptrtoint ptr %chip73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip73, align 4
  %arrayidx = getelementptr %struct.htc_egpio_chip, ptr %36, i32 %i.0242
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %chip66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip66, align 4
  %arrayidx75 = getelementptr %struct.egpio_chip, ptr %40, i32 %i.0242
  %41 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx75, align 4
  %42 = load ptr, ptr %chip73, align 4
  %initial_values = getelementptr %struct.htc_egpio_chip, ptr %42, i32 %i.0242, i32 4
  %43 = ptrtoint ptr %initial_values to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %initial_values, align 4
  %45 = load ptr, ptr %chip66, align 4
  %cached_values = getelementptr %struct.egpio_chip, ptr %45, i32 %i.0242, i32 1
  %46 = ptrtoint ptr %cached_values to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %cached_values, align 4
  %47 = load ptr, ptr %chip73, align 4
  %direction = getelementptr %struct.htc_egpio_chip, ptr %47, i32 %i.0242, i32 3
  %48 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %direction, align 4
  %50 = load ptr, ptr %chip66, align 4
  %is_out = getelementptr %struct.egpio_chip, ptr %50, i32 %i.0242, i32 2
  %51 = ptrtoint ptr %is_out to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %is_out, align 4
  %52 = load ptr, ptr %chip66, align 4
  %dev88 = getelementptr %struct.egpio_chip, ptr %52, i32 %i.0242, i32 3
  %53 = ptrtoint ptr %dev88 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %dev88, align 4
  %54 = load ptr, ptr %chip66, align 4
  %chip91 = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4
  %call93 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %i.0242) #6
  %55 = ptrtoint ptr %chip91 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call93, ptr %chip91, align 4
  %tobool95.not = icmp eq ptr %call93, null
  br i1 %tobool95.not, label %for.body.cleanup_crit_edge, label %if.end97

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end97:                                         ; preds = %for.body
  %parent = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 2
  %56 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev, ptr %parent, align 4
  %owner = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 4
  %57 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %owner, align 4
  %get = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 10
  %58 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @egpio_get, ptr %get, align 4
  %set = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 12
  %59 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @egpio_set, ptr %set, align 4
  %direction_input = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 8
  %60 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @egpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 9
  %61 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @egpio_direction_output, ptr %direction_output, align 4
  %get_direction = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 7
  %62 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @egpio_get_direction, ptr %get_direction, align 4
  %63 = ptrtoint ptr %chip73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip73, align 4
  %gpio_base = getelementptr %struct.htc_egpio_chip, ptr %64, i32 %i.0242, i32 1
  %65 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %gpio_base, align 4
  %base = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 19
  %67 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %base, align 4
  %68 = load ptr, ptr %chip73, align 4
  %num_gpios = getelementptr %struct.htc_egpio_chip, ptr %68, i32 %i.0242, i32 2
  %69 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_gpios, align 4
  %conv = trunc i32 %70 to i16
  %ngpio = getelementptr %struct.egpio_chip, ptr %54, i32 %i.0242, i32 4, i32 20
  %71 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv, ptr %ngpio, align 4
  %72 = ptrtoint ptr %chip66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chip66, align 4
  %arrayidx105 = getelementptr %struct.egpio_chip, ptr %73, i32 %i.0242
  %call106 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip91, ptr noundef %arrayidx105, ptr noundef nonnull @egpio_probe.lock_key, ptr noundef nonnull @egpio_probe.request_key) #6
  %inc = add nuw nsw i32 %i.0242, 1
  %74 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nchips, align 4
  %cmp72 = icmp slt i32 %inc, %75
  br i1 %cmp72, label %if.end97.for.body_crit_edge, label %if.end97.for.end_crit_edge

if.end97.for.end_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end97.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call fastcc void @egpio_write_cache(ptr noundef nonnull %call.i)
  %irq_base = getelementptr inbounds %struct.htc_egpio_platform_data, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq_base, align 4
  %irq_start = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 8
  %78 = ptrtoint ptr %irq_start to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %irq_start, align 4
  %num_irqs = getelementptr inbounds %struct.htc_egpio_platform_data, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_irqs, align 4
  %nirqs = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 9
  %81 = ptrtoint ptr %nirqs to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %nirqs, align 4
  %ack_register = getelementptr inbounds %struct.htc_egpio_platform_data, ptr %1, i32 0, i32 5
  %82 = ptrtoint ptr %ack_register to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ack_register, align 4
  %ack_register107 = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 5
  %84 = ptrtoint ptr %ack_register107 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %ack_register107, align 4
  %chained_irq108 = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 10
  %85 = ptrtoint ptr %chained_irq108 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %chained_irq108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool109.not = icmp eq i32 %86, 0
  br i1 %tobool109.not, label %for.end.cleanup_crit_edge, label %if.then110

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then110:                                       ; preds = %for.end
  %ack_write = getelementptr inbounds %struct.egpio_info, ptr %call.i, i32 0, i32 6
  %invert_acks = getelementptr inbounds %struct.htc_egpio_platform_data, ptr %1, i32 0, i32 4
  %87 = ptrtoint ptr %invert_acks to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %invert_acks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool111.not = icmp eq i32 %88, 0
  %spec.store.select = select i1 %tobool111.not, i32 65535, i32 0
  %89 = ptrtoint ptr %ack_write to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.store.select, ptr %ack_write, align 4
  %add = add i32 %80, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add)
  %cmp119243 = icmp ult i32 %77, %add
  br i1 %cmp119243, label %if.then110.for.body121_crit_edge, label %if.then110.for.end125_crit_edge

if.then110.for.end125_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

if.then110.for.body121_crit_edge:                 ; preds = %if.then110
  br label %for.body121

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %if.then110.for.body121_crit_edge
  %irq.0244 = phi i32 [ %inc124, %for.body121.for.body121_crit_edge ], [ %77, %if.then110.for.body121_crit_edge ]
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq.0244, ptr noundef nonnull @egpio_muxed_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #6
  %call122 = tail call i32 @irq_set_chip_data(i32 noundef %irq.0244, ptr noundef nonnull %call.i) #6
  tail call void @irq_modify_status(i32 noundef %irq.0244, i32 noundef 3072, i32 noundef 0) #6
  %inc124 = add i32 %irq.0244, 1
  %exitcond.not = icmp eq i32 %inc124, %add
  br i1 %exitcond.not, label %for.body121.for.end125_crit_edge, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body121

for.body121.for.end125_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

for.end125:                                       ; preds = %for.body121.for.end125_crit_edge, %if.then110.for.end125_crit_edge
  %90 = ptrtoint ptr %chained_irq108 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chained_irq108, align 4
  %call127 = tail call i32 @irq_set_irq_type(i32 noundef %91, i32 noundef 1) #6
  %92 = ptrtoint ptr %chained_irq108 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %chained_irq108, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %93, ptr noundef nonnull @egpio_handler, ptr noundef nonnull %call.i) #6
  %94 = ptrtoint ptr %ack_write to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ack_write, align 4
  %conv.i = trunc i32 %95 to i16
  %96 = ptrtoint ptr %ack_register107 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ack_register107, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %99 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base_addr, align 4
  %101 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bus_shift, align 4
  %shl.i.i = shl i32 %97, %102
  %add.ptr.i.i = getelementptr i8, ptr %100, i32 %shl.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %98) #6, !srcloc !77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ack_irqs.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_probe, %ack_irqs.exit)) #6
          to label %if.then.i [label %ack_irqs.exit], !srcloc !74

if.then.i:                                        ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %ack_write to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ack_write, align 4
  %105 = ptrtoint ptr %ack_register107 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ack_register107, align 4
  %107 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bus_shift, align 4
  %shl.i = shl i32 %106, %108
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ack_irqs.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.26, i32 noundef %104, i32 noundef %shl.i) #6
  br label %ack_irqs.exit

ack_irqs.exit:                                    ; preds = %if.then.i, %for.end125
  %call130 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %ack_irqs.exit, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end32.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then11 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %do.end32.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %ack_irqs.exit ], [ 0, %for.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @egpio_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chained_irq = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %chained_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chained_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @egpio_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chained_irq = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %chained_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chained_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @egpio_write_cache(ptr noundef %1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @egpio_write_cache(ptr nocapture noundef readonly %ei) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nchips = getelementptr inbounds %struct.egpio_info, ptr %ei, i32 0, i32 12
  %0 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp62 = icmp sgt i32 %1, 0
  br i1 %cmp62, label %for.body.lr.ph, label %entry.for.end29_crit_edge

entry.for.end29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body.lr.ph:                                   ; preds = %entry
  %chip = getelementptr inbounds %struct.egpio_info, ptr %ei, i32 0, i32 11
  %reg_shift.i = getelementptr inbounds %struct.egpio_info, ptr %ei, i32 0, i32 3
  %reg_mask = getelementptr inbounds %struct.egpio_info, ptr %ei, i32 0, i32 4
  %base_addr.i = getelementptr inbounds %struct.egpio_info, ptr %ei, i32 0, i32 1
  %bus_shift.i = getelementptr inbounds %struct.egpio_info, ptr %ei, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc28.for.body_crit_edge ]
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %arrayidx = getelementptr %struct.egpio_chip, ptr %3, i32 %i.063
  %is_out = getelementptr %struct.egpio_chip, ptr %3, i32 %i.063, i32 2
  %4 = ptrtoint ptr %is_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc28_crit_edge, label %for.cond1.preheader

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

for.cond1.preheader:                              ; preds = %for.body
  %ngpio = getelementptr %struct.egpio_chip, ptr %3, i32 %i.063, i32 4, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp358.not = icmp eq i16 %7, 0
  br i1 %cmp358.not, label %for.cond1.preheader.for.inc28_crit_edge, label %for.body5.lr.ph

for.cond1.preheader.for.inc28_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %cached_values = getelementptr %struct.egpio_chip, ptr %3, i32 %i.063, i32 1
  br label %for.body5

for.body5:                                        ; preds = %cleanup.for.body5_crit_edge, %for.body5.lr.ph
  %shift.059 = phi i32 [ 0, %for.body5.lr.ph ], [ %add27, %cleanup.for.body5_crit_edge ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_shift.i, align 4
  %shr.i = ashr i32 %shift.059, %11
  %add = add i32 %shr.i, %9
  %12 = ptrtoint ptr %is_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %is_out, align 4
  %shr = lshr i32 %13, %shift.059
  %14 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_mask, align 4
  %and = and i32 %shr, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %for.body5.cleanup_crit_edge, label %do.body

for.body5.cleanup_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %for.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_write_cache.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_write_cache, %do.end)) #6
          to label %if.then15 [label %do.end], !srcloc !74

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %cached_values to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cached_values, align 4
  %shr16 = ashr i32 %17, %shift.059
  %18 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_mask, align 4
  %and18 = and i32 %shr16, %19
  %20 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i, align 4
  %22 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 %add, %23
  %add.ptr.i = getelementptr i8, ptr %21, i32 %shl.i
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !78
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %conv20 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_write_cache.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.4, i32 noundef %add, i32 noundef %and18, i32 noundef %conv20) #6
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %26 = ptrtoint ptr %cached_values to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cached_values, align 4
  %shr23 = ashr i32 %27, %shift.059
  %28 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_mask, align 4
  %and25 = and i32 %shr23, %29
  %conv26 = trunc i32 %and25 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv26) #6
  %31 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr.i, align 4
  %33 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bus_shift.i, align 4
  %shl.i54 = shl i32 %add, %34
  %add.ptr.i55 = getelementptr i8, ptr %32, i32 %shl.i54
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i55, i16 %30) #6, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body5.cleanup_crit_edge
  %35 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_shift.i, align 4
  %shl = shl nuw i32 1, %36
  %add27 = add i32 %shl, %shift.059
  %37 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %38 to i32
  %cmp3 = icmp slt i32 %add27, %conv
  br i1 %cmp3, label %cleanup.for.body5_crit_edge, label %cleanup.for.inc28_crit_edge

cleanup.for.inc28_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

cleanup.for.body5_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.inc28:                                        ; preds = %cleanup.for.inc28_crit_edge, %for.cond1.preheader.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc = add nuw nsw i32 %i.063, 1
  %39 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nchips, align 4
  %cmp = icmp slt i32 %inc, %40
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.for.end29_crit_edge

for.inc28.for.end29_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end29:                                        ; preds = %for.inc28.for.end29_crit_edge, %entry.for.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @egpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_get.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_get, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_get.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.11, i32 noundef %add) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %dev = getelementptr inbounds %struct.egpio_chip, ptr %call4, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.egpio_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_shift.i, align 4
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  %and.i64 = and i32 %sub.i, %offset
  %shl1.i = shl nuw i32 1, %and.i64
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call4, align 4
  %shr.i66 = ashr i32 %offset, %7
  %add8 = add i32 %9, %shr.i66
  %is_out = getelementptr inbounds %struct.egpio_chip, ptr %call4, i32 0, i32 2
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %is_out, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %cached_values = getelementptr inbounds %struct.egpio_chip, ptr %call4, i32 0, i32 1
  %14 = ptrtoint ptr %cached_values to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cached_values, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %15, %shl
  br label %cleanup

if.else:                                          ; preds = %do.end
  %base_addr.i = getelementptr inbounds %struct.egpio_info, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i, align 4
  %bus_shift.i = getelementptr inbounds %struct.egpio_info, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 %add8, %19
  %add.ptr.i = getelementptr i8, ptr %17, i32 %shl.i
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !78
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %conv = zext i16 %21 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_get.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_get, %do.end36)) #6
          to label %if.then32 [label %do.end36], !srcloc !74

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i, align 4
  %24 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_shift.i, align 4
  %shl33 = shl i32 %add8, %25
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_get.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.12, ptr noundef %23, i32 noundef %shl33, i32 noundef %conv) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %if.else
  %and37 = and i32 %shl1.i, %conv
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.then11
  %retval.0.in.in = phi i32 [ %and, %if.then11 ], [ %and37, %do.end36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.in)
  %retval.0.in = icmp ne i32 %retval.0.in.in, 0
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @egpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_set.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_set, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_set.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %offset, i32 noundef %add, i32 noundef %value) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %dev = getelementptr inbounds %struct.egpio_chip, ptr %call4, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.egpio_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shr.i = ashr i32 %offset, %9
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call4, align 4
  %add7 = add i32 %11, %shr.i
  %shl = shl i32 %shr.i, %9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_set.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_set, %do.body28)) #6
          to label %if.then22 [label %do.body28], !srcloc !74

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool23.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool23.not, ptr @.str.17, ptr @.str.16
  %cached_values = getelementptr inbounds %struct.egpio_chip, ptr %call4, i32 0, i32 1
  %12 = ptrtoint ptr %cached_values to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cached_values, align 4
  %shr = ashr i32 %13, %shl
  %reg_mask = getelementptr inbounds %struct.egpio_info, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_mask, align 4
  %and = and i32 %shr, %15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_set.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond, i32 noundef %add7, i32 noundef %and) #6
  br label %do.body28

do.body28:                                        ; preds = %if.then22, %do.end
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool36.not = icmp eq i32 %value, 0
  %shl40 = shl nuw i32 1, %offset
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %cached_values39 = getelementptr inbounds %struct.egpio_chip, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %cached_values39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cached_values39, align 4
  %or = or i32 %17, %shl40
  store i32 %or, ptr %cached_values39, align 4
  br label %if.end43

if.else:                                          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl40, -1
  %cached_values41 = getelementptr inbounds %struct.egpio_chip, ptr %call4, i32 0, i32 1
  %18 = ptrtoint ptr %cached_values41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cached_values41, align 4
  %and42 = and i32 %19, %neg
  store i32 %and42, ptr %cached_values41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then37
  %cached_values44 = getelementptr inbounds %struct.egpio_chip, ptr %call4, i32 0, i32 1
  %20 = ptrtoint ptr %cached_values44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cached_values44, align 4
  %shr45 = ashr i32 %21, %shl
  %reg_mask46 = getelementptr inbounds %struct.egpio_info, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %reg_mask46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_mask46, align 4
  %and47 = and i32 %shr45, %23
  %conv48 = trunc i32 %and47 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv48) #6
  %base_addr.i = getelementptr inbounds %struct.egpio_info, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr.i, align 4
  %bus_shift.i = getelementptr inbounds %struct.egpio_info, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 %add7, %28
  %add.ptr.i = getelementptr i8, ptr %26, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %24) #6, !srcloc !77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call31) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @egpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %is_out = getelementptr inbounds %struct.egpio_chip, ptr %call, i32 0, i32 2
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %is_out, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @egpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %is_out = getelementptr inbounds %struct.egpio_chip, ptr %call, i32 0, i32 2
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %is_out, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @egpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @egpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %is_out = getelementptr inbounds %struct.egpio_chip, ptr %call, i32 0, i32 2
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %is_out, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %2 = xor i32 %1, -1
  %3 = lshr i32 %2, %and.i
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @egpio_handler(ptr nocapture noundef readonly %desc) #2 align 64 {
entry:
  %readval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readval) #6
  %ack_register = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ack_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ack_register, align 4
  %base_addr.i = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i, align 4
  %bus_shift.i = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 %3, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !78
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %readval, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_handler.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_handler, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %readval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %readval, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_handler.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.23, i32 noundef %12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ack_write.i = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %ack_write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ack_write.i, align 4
  %conv.i = trunc i32 %14 to i16
  %15 = ptrtoint ptr %ack_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ack_register, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %18 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i, align 4
  %20 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bus_shift.i, align 4
  %shl.i.i = shl i32 %16, %21
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %shl.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %17) #6, !srcloc !77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ack_irqs.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_handler, %ack_irqs.exit)) #6
          to label %if.then.i [label %ack_irqs.exit], !srcloc !74

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ack_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ack_write.i, align 4
  %24 = ptrtoint ptr %ack_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ack_register, align 4
  %26 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bus_shift.i, align 4
  %shl.i45 = shl i32 %25, %27
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ack_irqs.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.26, i32 noundef %23, i32 noundef %shl.i45) #6
  br label %ack_irqs.exit

ack_irqs.exit:                                    ; preds = %if.then.i, %do.end
  %irqs_enabled = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %irqs_enabled, align 4
  %conv6 = zext i16 %29 to i32
  %30 = ptrtoint ptr %readval to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %readval, align 4
  %and = and i32 %31, %conv6
  store i32 %and, ptr %readval, align 4
  %nirqs = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nirqs, align 4
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %readval, i32 noundef %33, i32 noundef 0) #6
  %34 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nirqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %35)
  %cmp48 = icmp slt i32 %call7, %35
  br i1 %cmp48, label %do.body10.lr.ph, label %ack_irqs.exit.for.end_crit_edge

ack_irqs.exit.for.end_crit_edge:                  ; preds = %ack_irqs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body10.lr.ph:                                  ; preds = %ack_irqs.exit
  %irq_start = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 8
  br label %do.body10

do.body10:                                        ; preds = %do.end27.do.body10_crit_edge, %do.body10.lr.ph
  %irqpin.049 = phi i32 [ %call7, %do.body10.lr.ph ], [ %call31, %do.end27.do.body10_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_handler.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_handler, %do.end27)) #6
          to label %if.then24 [label %do.end27], !srcloc !74

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_handler.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.24, i32 noundef %irqpin.049) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body10
  %36 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq_start, align 4
  %add = add i32 %37, %irqpin.049
  %call28 = call i32 @generic_handle_irq(i32 noundef %add) #6
  %38 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nirqs, align 4
  %add30 = add nsw i32 %irqpin.049, 1
  %call31 = call i32 @_find_next_bit_be(ptr noundef nonnull %readval, i32 noundef %39, i32 noundef %add30) #6
  %40 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nirqs, align 4
  %cmp = icmp slt i32 %call31, %41
  br i1 %cmp, label %do.end27.do.body10_crit_edge, label %do.end27.for.end_crit_edge

do.end27.for.end_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end27.do.body10_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

for.end:                                          ; preds = %do.end27.for.end_crit_edge, %ack_irqs.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @egpio_ack(ptr nocapture noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @egpio_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_start = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_start, align 4
  %sub = sub i32 %3, %5
  %shl = shl nuw i32 1, %sub
  %irqs_enabled = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irqs_enabled, align 4
  %8 = trunc i32 %shl to i16
  %9 = xor i16 %8, -1
  %conv1 = and i16 %7, %9
  store i16 %conv1, ptr %irqs_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_mask.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_mask, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %12 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %irqs_enabled, align 4
  %conv8 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_mask.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %conv8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @egpio_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_start = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_start, align 4
  %sub = sub i32 %3, %5
  %shl = shl nuw i32 1, %sub
  %irqs_enabled = getelementptr inbounds %struct.egpio_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irqs_enabled, align 4
  %8 = trunc i32 %shl to i16
  %conv1 = or i16 %7, %8
  store i16 %conv1, ptr %irqs_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @egpio_unmask.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@egpio_unmask, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %11 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %irqs_enabled, align 4
  %conv8 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @egpio_unmask.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.21, i32 noundef %10, i32 noundef %conv8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_gpio_htc_egpio__239_409_egpio_init4, !1, !"__initcall__kmod_gpio_htc_egpio__239_409_egpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 409, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 397, i32 11}
!4 = !{ptr @egpio_driver, !5, !"egpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 395, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 248, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @egpio_write_cache.__UNIQUE_ID_ddebug236, !7, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!12 = !{ptr @egpio_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 277, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 293, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @egpio_probe.__UNIQUE_ID_ddebug237, !16, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 299, i32 2}
!21 = !{ptr @egpio_probe.__UNIQUE_ID_ddebug238, !20, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 319, i32 11}
!24 = !{ptr @egpio_probe.lock_key, !25, !"lock_key", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 334, i32 3}
!26 = !{ptr @egpio_probe.request_key, !25, !"request_key", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 143, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @egpio_get.__UNIQUE_ID_ddebug232, !28, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 154, i32 3}
!33 = !{ptr @egpio_get.__UNIQUE_ID_ddebug233, !32, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 182, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @egpio_set.__UNIQUE_ID_ddebug234, !35, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 191, i32 2}
!40 = !{ptr @egpio_set.__UNIQUE_ID_ddebug235, !39, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @egpio_muxed_chip, !44, !"egpio_muxed_chip", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 95, i32 24}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 85, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @egpio_mask.__UNIQUE_ID_ddebug228, !46, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 92, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @egpio_unmask.__UNIQUE_ID_ddebug229, !50, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 109, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @egpio_handler.__UNIQUE_ID_ddebug230, !54, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 116, i32 3}
!59 = !{ptr @egpio_handler.__UNIQUE_ID_ddebug231, !58, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-htc-egpio.c", i32 70, i32 2}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ack_irqs.__UNIQUE_ID_ddebug227, !61, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i32 0, i32 33}
!74 = !{i64 2148699838, i64 2148699843, i64 2148699856, i64 2148699900, i64 2148699934, i64 2148699955}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2153925510}
!77 = !{i64 4205712}
!78 = !{i64 4205912}
!79 = !{i64 2153926451}
