; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-stm32f4.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-stm32f4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.stm32f4_i2c_dev = type { %struct.i2c_adapter, ptr, ptr, %struct.completion, ptr, i32, i32, %struct.stm32f4_i2c_msg }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.stm32f4_i2c_msg = type { i8, i32, ptr, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_stm32f4__292_890_stm32f4_i2c_driver_init6 = internal global ptr @stm32f4_i2c_driver_init, section ".initcall6.init", align 4
@stm32f4_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32f4_i2c_probe, ptr @stm32f4_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32f4_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32f4_i2c_driver_exit = internal global ptr @stm32f4_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [72 x i8] c"i2c_stm32f4.author=M'boumba Cedric Madianga <cedric.madianga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [62 x i8] c"i2c_stm32f4.description=STMicroelectronics STM32F4 I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [48 x i8] c"i2c_stm32f4.file=drivers/i2c/busses/i2c-stm32f4\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [27 x i8] c"i2c_stm32f4.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32f4-i2c\00", [20 x i8] zeroinitializer }, align 32
@stm32f4_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IRQ event missing or invalid\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32f4_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-stm32f4.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry_ptr = internal global ptr @stm32f4_i2c_probe._entry, section ".printk_index", align 4
@stm32f4_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 783, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IRQ error missing or invalid\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry_ptr.8 = internal global ptr @stm32f4_i2c_probe._entry.6, section ".printk_index", align 4
@stm32f4_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 789, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error: Missing controller clock\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry_ptr.11 = internal global ptr @stm32f4_i2c_probe._entry.9, section ".printk_index", align 4
@stm32f4_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry_ptr.14 = internal global ptr @stm32f4_i2c_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error: Missing reset ctrl\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 819, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request irq event %i\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry_ptr.19 = internal global ptr @stm32f4_i2c_probe._entry.17, section ".printk_index", align 4
@stm32f4_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 827, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request irq error %i\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry_ptr.22 = internal global ptr @stm32f4_i2c_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STM32 I2C(%pa)\00", [17 x i8] zeroinitializer }, align 32
@stm32f4_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @stm32f4_i2c_xfer, ptr null, ptr null, ptr null, ptr @stm32f4_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 855, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"STM32F4 I2C driver registered\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32f4_i2c_probe._entry_ptr.27 = internal global ptr @stm32f4_i2c_probe._entry.24, section ".printk_index", align 4
@stm32f4_i2c_isr_event.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_stm32f4\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32f4_i2c_isr_event\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"spurious evt irq (status=0x%08x, ien=0x%08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@stm32f4_i2c_set_periph_clk_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad parent clk freq for standard mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stm32f4_i2c_set_periph_clk_freq\00", [32 x i8] zeroinitializer }, align 32
@stm32f4_i2c_set_periph_clk_freq._entry_ptr = internal global ptr @stm32f4_i2c_set_periph_clk_freq._entry, section ".printk_index", align 4
@stm32f4_i2c_set_periph_clk_freq._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bad parent clk freq for fast mode\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32f4_i2c_set_periph_clk_freq._entry_ptr.35 = internal global ptr @stm32f4_i2c_set_periph_clk_freq._entry.33, section ".printk_index", align 4
@stm32f4_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 733, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32f4_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@stm32f4_i2c_xfer._entry_ptr = internal global ptr @stm32f4_i2c_xfer._entry, section ".printk_index", align 4
@stm32f4_i2c_wait_free_bus.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32f4_i2c_wait_free_bus\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bus not free\0A\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"stm32f4_i2c_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 881, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 883, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"stm32f4_i2c_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 875, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 777, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 783, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 789, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 794, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 801, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 809, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 818, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 826, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 837, i32 43 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"stm32f4_i2c_algo\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 751, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 855, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 573, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 167, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 179, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 733, i32 3 }
@___asan_gen_.158 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-stm32f4.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 308, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 87, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_stm32f4_i2c_driver_exit, ptr @__initcall__kmod_i2c_stm32f4__292_890_stm32f4_i2c_driver_init6, ptr @stm32f4_i2c_driver_exit, ptr @stm32f4_i2c_probe._entry, ptr @stm32f4_i2c_probe._entry.12, ptr @stm32f4_i2c_probe._entry.17, ptr @stm32f4_i2c_probe._entry.20, ptr @stm32f4_i2c_probe._entry.24, ptr @stm32f4_i2c_probe._entry.6, ptr @stm32f4_i2c_probe._entry.9, ptr @stm32f4_i2c_probe._entry_ptr, ptr @stm32f4_i2c_probe._entry_ptr.11, ptr @stm32f4_i2c_probe._entry_ptr.14, ptr @stm32f4_i2c_probe._entry_ptr.19, ptr @stm32f4_i2c_probe._entry_ptr.22, ptr @stm32f4_i2c_probe._entry_ptr.27, ptr @stm32f4_i2c_probe._entry_ptr.8, ptr @stm32f4_i2c_set_periph_clk_freq._entry, ptr @stm32f4_i2c_set_periph_clk_freq._entry.33, ptr @stm32f4_i2c_set_periph_clk_freq._entry_ptr, ptr @stm32f4_i2c_set_periph_clk_freq._entry_ptr.35, ptr @stm32f4_i2c_xfer._entry, ptr @stm32f4_i2c_xfer._entry_ptr, ptr @stm32f4_i2c_driver, ptr @.str, ptr @stm32f4_i2c_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @stm32f4_i2c_algo, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @init_completion.__key, ptr @.str.40], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_set_periph_clk_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_set_periph_clk_freq._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32f4_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32f4_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32f4_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_rate) #8
  %2 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clk_rate, align 4, !annotation !92
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1456, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call2) #8
  %base = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call25, ptr %clk, align 8
  %cmp.i177 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %call.i178 = tail call i32 @clk_prepare(ptr noundef %call25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.do.end42_crit_edge

if.end35.do.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

if.end.i:                                         ; preds = %if.end35
  %call1.i = tail call i32 @clk_enable(ptr noundef %call25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end44, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call25) #8
  br label %do.end42

do.end42:                                         ; preds = %if.then3.i, %if.end35.do.end42_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i178, %if.end35.do.end42_crit_edge ]
  %dev43 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end.i
  %call.i179 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %cmp.i180 = icmp ugt ptr %call.i179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call.i179 to i32
  %call51 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull @.str.15) #8
  br label %clk_free

if.end52:                                         ; preds = %if.end44
  %call53 = tail call i32 @reset_control_assert(ptr noundef %call.i179) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 429496) #8
  %call54 = tail call i32 @reset_control_deassert(ptr noundef %call.i179) #8
  %speed = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %speed, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %clk_rate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool56.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool56.not, label %land.lhs.true, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end52
  %14 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999, i32 %15)
  %cmp = icmp ugt i32 %15, 399999
  br i1 %cmp, label %if.then57, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %speed, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true.if.end59_crit_edge, %if.end52.if.end59_crit_edge
  %dev61 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %dev61 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev61, align 8
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %call.i181 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call11, ptr noundef nonnull @stm32f4_i2c_isr_event, ptr noundef null, i32 noundef 0, ptr noundef %19, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool64.not = icmp eq i32 %call.i181, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call11) #11
  br label %clk_free

if.end70:                                         ; preds = %if.end59
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %call.i182 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call16, ptr noundef nonnull @stm32f4_i2c_isr_error, ptr noundef null, i32 noundef 0, ptr noundef %21, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool74.not = icmp eq i32 %call.i182, 0
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call16) #11
  br label %clk_free

if.end80:                                         ; preds = %if.end70
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 8
  %call.i.i183 = call i32 @clk_get_rate(ptr noundef %23) #8
  %parent_rate.i.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %parent_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i.i183, ptr %parent_rate.i.i, align 8
  %sub.i.i = add i32 %call.i.i183, 999999
  %div.i.i = sdiv i32 %sub.i.i, 1000000
  %25 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 0
  %27 = add nsw i32 %div.i.i, -47
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45, i32 %27)
  %28 = icmp ult i32 %27, -45
  br i1 %28, label %do.end.i.i, label %if.then.i.i.if.end84_crit_edge

if.then.i.i.if.end84_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev61, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.31) #11
  br label %clk_free

if.else.i.i:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -41, i32 %27)
  %31 = icmp ult i32 %27, -41
  br i1 %31, label %do.end11.i.i, label %if.else.i.i.if.end84_crit_edge

if.else.i.i.if.end84_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

do.end11.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev61, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.34) #11
  br label %clk_free

if.end84:                                         ; preds = %if.else.i.i.if.end84_crit_edge, %if.then.i.i.if.end84_crit_edge
  %and.i.i = shl nuw nsw i32 %div.i.i, 24
  %34 = and i32 %and.i.i, 1056964608
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %34) #8, !srcloc !93
  %37 = ptrtoint ptr %parent_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %parent_rate.i.i, align 8
  %sub.i6.i = add i32 %38, 999999
  %div.i7.i = sdiv i32 %sub.i6.i, 1000000
  %39 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i9.i = icmp eq i32 %40, 0
  %mul.i.i = mul nsw i32 %div.i7.i, 3
  %div2.i.i = udiv i32 %mul.i.i, 10
  %trise.0.in.i.i = select i1 %cmp.i9.i, i32 %div.i7.i, i32 %div2.i.i
  %trise.0.i.i = shl i32 %trise.0.in.i.i, 24
  %and.i10.i = add i32 %trise.0.i.i, 16777216
  %41 = and i32 %and.i10.i, 1056964608
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %43, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %41) #8, !srcloc !93
  %44 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i14.i = icmp eq i32 %45, 0
  %46 = ptrtoint ptr %parent_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %parent_rate.i.i, align 8
  %div.i16.i = sdiv i32 %47, 200000
  %sub.i17.i = add i32 %47, 1199999
  %div2.i18.i = sdiv i32 %sub.i17.i, 1200000
  %val.0.i.i = select i1 %cmp.i14.i, i32 %div.i16.i, i32 %div2.i18.i
  %ccr.0.i.i = select i1 %cmp.i14.i, i32 0, i32 32768
  %and.i19.i = and i32 %val.0.i.i, 4095
  %or3.i.i = or i32 %and.i19.i, %ccr.0.i.i
  %48 = call i32 @llvm.bswap.i32(i32 %or3.i.i) #8
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %50, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %48) #8, !srcloc !93
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 16777216) #8, !srcloc !93
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name86 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call87 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name86, i32 noundef 48, ptr noundef nonnull @.str.23, ptr noundef %call2)
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %call.i, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %55 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 200, ptr %timeout, align 4
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %56 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %retries, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %57 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @stm32f4_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev, ptr %parent, align 8
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %of_node93 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %61 = ptrtoint ptr %of_node93 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %of_node93, align 8
  %complete = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %call.i, i32 0, i32 3
  %62 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %call.i, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #8
  %call94 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end84.clk_free_crit_edge

if.end84.clk_free_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_free

if.end97:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i186 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %driver_data.i.i186 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %driver_data.i.i186, align 4
  %64 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %65) #8
  %66 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev61, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.25) #11
  br label %cleanup

clk_free:                                         ; preds = %if.end84.clk_free_crit_edge, %do.end11.i.i, %do.end.i.i, %do.end78, %do.end68, %if.then48
  %ret.0 = phi i32 [ %call51, %if.then48 ], [ %call.i181, %do.end68 ], [ %call.i182, %do.end78 ], [ %call94, %if.end84.clk_free_crit_edge ], [ -22, %do.end.i.i ], [ -22, %do.end11.i.i ]
  %68 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %69) #8
  call void @clk_unprepare(ptr noundef %69) #8
  br label %cleanup

cleanup:                                          ; preds = %clk_free, %if.end97, %do.end42, %do.end31, %do.end21, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %8, %do.end31 ], [ %retval.0.i.ph, %do.end42 ], [ %ret.0, %clk_free ], [ 0, %if.end97 ], [ -22, %do.end21 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_rate) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %clk = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_i2c_isr_event(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7
  %base = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !94
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 1792
  %and2 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %spec.select = select i1 %tobool.not, i32 7, i32 199
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !94
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and8 = and i32 %spec.select, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body, label %if.end19

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_i2c_isr_event.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_i2c_isr_event, %cleanup)) #8
          to label %if.then17 [label %cleanup], !srcloc !95

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_i2c_isr_event.__UNIQUE_ID_ddebug291, ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %7, i32 noundef %and) #8
  br label %cleanup

if.end19:                                         ; preds = %entry
  %and20 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %msg1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msg1, align 4
  %conv.i = zext i8 %11 to i32
  %12 = shl nuw i32 %conv.i, 24
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !93
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %and24 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end40_crit_edge, label %if.then26

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then26:                                        ; preds = %if.end23
  %15 = ptrtoint ptr %msg1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %msg1, align 4
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then26
  %count.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb18.i
  ]

sw.bb.i:                                          ; preds = %if.then30
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !94
  %24 = and i32 %23, -458753
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %24) #8, !srcloc !93
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %stop.i.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 4
  %27 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %stop.i.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = or i32 %29, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %30) #8, !srcloc !93
  br label %stm32f4_i2c_terminate_xfer.exit.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = or i32 %29, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %31) #8, !srcloc !93
  br label %stm32f4_i2c_terminate_xfer.exit.i

stm32f4_i2c_terminate_xfer.exit.i:                ; preds = %if.else.i.i, %if.then.i.i
  %complete.i.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete.i.i) #8
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr.i100 = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #8, !srcloc !94
  br label %if.end36

sw.bb2.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !94
  %38 = and i32 %37, -786433
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #8, !srcloc !93
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr12.i = getelementptr i8, ptr %43, i32 24
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !94
  %stop.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 4
  %45 = ptrtoint ptr %stop.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %stop.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  %cr1.0.v.i = select i1 %tobool.not.i, i32 256, i32 512
  %cr1.0.i = or i32 %cr1.0.v.i, %39
  %47 = tail call i32 @llvm.bswap.i32(i32 %cr1.0.i) #8
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !93
  br label %if.end36

sw.bb18.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !94
  %53 = and i32 %52, -786433
  %54 = or i32 %53, 524288
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !93
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr30.i = getelementptr i8, ptr %58, i32 24
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !94
  br label %if.end36

sw.default.i:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !94
  %63 = and i32 %62, -786433
  %64 = or i32 %63, 262144
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #8, !srcloc !93
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr44.i = getelementptr i8, ptr %68, i32 24
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #8, !srcloc !94
  br label %if.end36

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %71, i32 24
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !94
  br label %if.end36

if.end36:                                         ; preds = %if.else, %sw.default.i, %sw.bb18.i, %sw.bb2.i, %stm32f4_i2c_terminate_xfer.exit.i
  %or37 = or i32 %3, 1024
  %73 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %73) #8, !srcloc !93
  br label %if.end40

if.end40:                                         ; preds = %if.end36, %if.end23.if.end40_crit_edge
  %and41 = and i32 %and8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %land.lhs.true

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end40
  %76 = ptrtoint ptr %msg1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %msg1, align 4
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool46.not = icmp eq i8 %78, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then47:                                        ; preds = %land.lhs.true
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr.i102 = getelementptr i8, ptr %80, i32 4
  %count.i103 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 1
  %81 = ptrtoint ptr %count.i103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i104 = icmp eq i32 %82, 0
  br i1 %tobool.not.i104, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then47
  %buf.i.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 2
  %83 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %84, i32 1
  store ptr %incdec.ptr.i.i, ptr %buf.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 1
  %conv.i.i.i = zext i8 %86 to i32
  %87 = shl nuw i32 %conv.i.i.i, 24
  %add.ptr.i.i.i105 = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i105, i32 %87) #8, !srcloc !93
  %88 = ptrtoint ptr %count.i103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %count.i103, align 4
  %dec.i.i = add i32 %89, -1
  store i32 %dec.i.i, ptr %count.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool3.not.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.if.end48_crit_edge

if.then.i.if.end48_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #8, !srcloc !94
  %91 = and i32 %90, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %91) #8, !srcloc !93
  br label %if.end48

if.else.i:                                        ; preds = %if.then47
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #8, !srcloc !94
  %93 = and i32 %92, -458753
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %93) #8, !srcloc !93
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %stop.i.i106 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 4
  %96 = ptrtoint ptr %stop.i.i106 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %stop.i.i106, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i107 = icmp eq i8 %97, 0
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #8
  br i1 %tobool.not.i.i107, label %if.else.i.i109, label %if.then.i.i108

if.then.i.i108:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = or i32 %98, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %99) #8, !srcloc !93
  br label %stm32f4_i2c_terminate_xfer.exit.i111

if.else.i.i109:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = or i32 %98, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %100) #8, !srcloc !93
  br label %stm32f4_i2c_terminate_xfer.exit.i111

stm32f4_i2c_terminate_xfer.exit.i111:             ; preds = %if.else.i.i109, %if.then.i.i108
  %complete.i.i110 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete.i.i110) #8
  br label %if.end48

if.end48:                                         ; preds = %stm32f4_i2c_terminate_xfer.exit.i111, %if.then4.i, %if.then.i.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %and49 = and i32 %and8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end57_crit_edge, label %land.lhs.true51

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

land.lhs.true51:                                  ; preds = %if.end48
  %101 = ptrtoint ptr %msg1 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %msg1, align 4
  %103 = and i8 %102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool55.not = icmp eq i8 %103, 0
  br i1 %tobool55.not, label %land.lhs.true51.if.end57_crit_edge, label %if.then56

land.lhs.true51.if.end57_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %land.lhs.true51
  %count.i112 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 1
  %104 = ptrtoint ptr %count.i112 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count.i112, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %105, label %sw.default.i120 [
    i32 1, label %sw.bb.i116
    i32 2, label %if.then56.sw.bb2.i119_crit_edge
    i32 3, label %if.then56.sw.bb2.i119_crit_edge156
  ]

if.then56.sw.bb2.i119_crit_edge156:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i119

if.then56.sw.bb2.i119_crit_edge:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i119

sw.bb.i116:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %108, i32 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !94
  %110 = and i32 %109, -458753
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %110) #8, !srcloc !93
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %112, i32 16
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #8, !srcloc !94
  %114 = lshr i32 %113, 24
  %conv.i.i = trunc i32 %114 to i8
  %buf.i.i113 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 2
  %115 = ptrtoint ptr %buf.i.i113 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buf.i.i113, align 4
  %incdec.ptr.i.i114 = getelementptr i8, ptr %116, i32 1
  store ptr %incdec.ptr.i.i114, ptr %buf.i.i113, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv.i.i, ptr %116, align 1
  %118 = ptrtoint ptr %count.i112 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count.i112, align 4
  %dec.i.i115 = add i32 %119, -1
  store i32 %dec.i.i115, ptr %count.i112, align 4
  %complete.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete.i) #8
  br label %if.end57

sw.bb2.i119:                                      ; preds = %if.then56.sw.bb2.i119_crit_edge, %if.then56.sw.bb2.i119_crit_edge156
  %120 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base, align 4
  %add.ptr.i118 = getelementptr i8, ptr %121, i32 4
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #8, !srcloc !94
  %123 = and i32 %122, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %123) #8, !srcloc !93
  br label %if.end57

sw.default.i120:                                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %125, i32 16
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !94
  %127 = lshr i32 %126, 24
  %conv.i12.i = trunc i32 %127 to i8
  %buf.i13.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 2
  %128 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buf.i13.i, align 4
  %incdec.ptr.i14.i = getelementptr i8, ptr %129, i32 1
  store ptr %incdec.ptr.i14.i, ptr %buf.i13.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv.i12.i, ptr %129, align 1
  %131 = ptrtoint ptr %count.i112 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %count.i112, align 4
  %dec.i16.i = add i32 %132, -1
  store i32 %dec.i16.i, ptr %count.i112, align 4
  br label %if.end57

if.end57:                                         ; preds = %sw.default.i120, %sw.bb2.i119, %sw.bb.i116, %land.lhs.true51.if.end57_crit_edge, %if.end48.if.end57_crit_edge
  %and58 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %if.then60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60:                                        ; preds = %if.end57
  %133 = ptrtoint ptr %msg1 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %msg1, align 4
  %135 = and i8 %134, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool64.not = icmp eq i8 %135, 0
  br i1 %tobool64.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %if.then60
  %count.i121 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 1
  %136 = ptrtoint ptr %count.i121 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %count.i121, align 4
  %138 = zext i32 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %137, label %sw.default.i134 [
    i32 2, label %sw.bb.i125
    i32 3, label %sw.bb4.i
  ]

sw.bb.i125:                                       ; preds = %if.then65
  %139 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base, align 4
  %stop.i123 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 4
  %141 = ptrtoint ptr %stop.i123 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %stop.i123, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i124 = icmp eq i8 %142, 0
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #8
  br i1 %tobool.not.i124, label %if.else.i127, label %if.then.i126

if.then.i126:                                     ; preds = %sw.bb.i125
  call void @__sanitizer_cov_trace_pc() #10
  %144 = or i32 %143, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %144) #8, !srcloc !93
  br label %if.end.i

if.else.i127:                                     ; preds = %sw.bb.i125
  call void @__sanitizer_cov_trace_pc() #10
  %145 = or i32 %143, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %145) #8, !srcloc !93
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i127, %if.then.i126
  %buf.i.i128 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 2
  %146 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %147, i32 16
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i129) #8, !srcloc !94
  %149 = lshr i32 %148, 24
  %conv.i.i130 = trunc i32 %149 to i8
  %150 = ptrtoint ptr %buf.i.i128 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %buf.i.i128, align 4
  %incdec.ptr.i.i131 = getelementptr i8, ptr %151, i32 1
  store ptr %incdec.ptr.i.i131, ptr %buf.i.i128, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv.i.i130, ptr %151, align 1
  %153 = ptrtoint ptr %count.i121 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %count.i121, align 4
  %dec.i.i132 = add i32 %154, -1
  store i32 %dec.i.i132, ptr %count.i121, align 4
  %155 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %156, i32 16
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #8, !srcloc !94
  %158 = lshr i32 %157, 24
  %conv.i.1.i = trunc i32 %158 to i8
  %159 = ptrtoint ptr %buf.i.i128 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %buf.i.i128, align 4
  %incdec.ptr.i.1.i = getelementptr i8, ptr %160, i32 1
  store ptr %incdec.ptr.i.1.i, ptr %buf.i.i128, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv.i.1.i, ptr %160, align 1
  %162 = ptrtoint ptr %count.i121 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %count.i121, align 4
  %dec.i.1.i = add i32 %163, -1
  store i32 %dec.i.1.i, ptr %count.i121, align 4
  %164 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base, align 4
  %add.ptr3.i = getelementptr i8, ptr %165, i32 4
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !94
  %167 = and i32 %166, -196609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %167) #8, !srcloc !93
  %complete.i133 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete.i133) #8
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base, align 4
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #8, !srcloc !94
  %171 = and i32 %170, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %171) #8, !srcloc !93
  %172 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %173, i32 16
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #8, !srcloc !94
  %175 = lshr i32 %174, 24
  %conv.i23.i = trunc i32 %175 to i8
  %buf.i24.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 2
  %176 = ptrtoint ptr %buf.i24.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %buf.i24.i, align 4
  %incdec.ptr.i25.i = getelementptr i8, ptr %177, i32 1
  store ptr %incdec.ptr.i25.i, ptr %buf.i24.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv.i23.i, ptr %177, align 1
  %179 = ptrtoint ptr %count.i121 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %count.i121, align 4
  %dec.i27.i = add i32 %180, -1
  store i32 %dec.i27.i, ptr %count.i121, align 4
  br label %cleanup

sw.default.i134:                                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %182, i32 16
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #8, !srcloc !94
  %184 = lshr i32 %183, 24
  %conv.i30.i = trunc i32 %184 to i8
  %buf.i31.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 2
  %185 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %buf.i31.i, align 4
  %incdec.ptr.i32.i = getelementptr i8, ptr %186, i32 1
  store ptr %incdec.ptr.i32.i, ptr %buf.i31.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv.i30.i, ptr %186, align 1
  %188 = ptrtoint ptr %count.i121 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %count.i121, align 4
  %dec.i34.i = add i32 %189, -1
  store i32 %dec.i34.i, ptr %count.i121, align 4
  br label %cleanup

if.else66:                                        ; preds = %if.then60
  %190 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base, align 4
  %add.ptr.i136 = getelementptr i8, ptr %191, i32 4
  %count.i137 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 1
  %192 = ptrtoint ptr %count.i137 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %count.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i138 = icmp eq i32 %193, 0
  br i1 %tobool.not.i138, label %if.else.i149, label %if.then.i145

if.then.i145:                                     ; preds = %if.else66
  %buf.i.i139 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 2
  %194 = ptrtoint ptr %buf.i.i139 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %buf.i.i139, align 4
  %incdec.ptr.i.i140 = getelementptr i8, ptr %195, i32 1
  store ptr %incdec.ptr.i.i140, ptr %buf.i.i139, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %195, align 1
  %conv.i.i.i141 = zext i8 %197 to i32
  %198 = shl nuw i32 %conv.i.i.i141, 24
  %add.ptr.i.i.i142 = getelementptr i8, ptr %191, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i142, i32 %198) #8, !srcloc !93
  %199 = ptrtoint ptr %count.i137 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %count.i137, align 4
  %dec.i.i143 = add i32 %200, -1
  store i32 %dec.i.i143, ptr %count.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i143)
  %tobool3.not.i144 = icmp eq i32 %dec.i.i143, 0
  br i1 %tobool3.not.i144, label %if.then4.i146, label %if.then.i145.cleanup_crit_edge

if.then.i145.cleanup_crit_edge:                   ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i146:                                    ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #10
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #8, !srcloc !94
  %202 = and i32 %201, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %202) #8, !srcloc !93
  br label %cleanup

if.else.i149:                                     ; preds = %if.else66
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #8, !srcloc !94
  %204 = and i32 %203, -458753
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %204) #8, !srcloc !93
  %205 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base, align 4
  %stop.i.i147 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 4
  %207 = ptrtoint ptr %stop.i.i147 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %stop.i.i147, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool.not.i.i148 = icmp eq i8 %208, 0
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #8
  br i1 %tobool.not.i.i148, label %if.else.i.i151, label %if.then.i.i150

if.then.i.i150:                                   ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #10
  %210 = or i32 %209, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %210) #8, !srcloc !93
  br label %stm32f4_i2c_terminate_xfer.exit.i153

if.else.i.i151:                                   ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #10
  %211 = or i32 %209, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %211) #8, !srcloc !93
  br label %stm32f4_i2c_terminate_xfer.exit.i153

stm32f4_i2c_terminate_xfer.exit.i153:             ; preds = %if.else.i.i151, %if.then.i.i150
  %complete.i.i152 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete.i.i152) #8
  br label %cleanup

cleanup:                                          ; preds = %stm32f4_i2c_terminate_xfer.exit.i153, %if.then4.i146, %if.then.i145.cleanup_crit_edge, %sw.default.i134, %sw.bb4.i, %if.end.i, %if.end57.cleanup_crit_edge, %if.then17, %do.body
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 1, %if.end57.cleanup_crit_edge ], [ 1, %if.end.i ], [ 1, %sw.bb4.i ], [ 1, %sw.default.i134 ], [ 1, %if.then.i145.cleanup_crit_edge ], [ 1, %if.then4.i146 ], [ 1, %stm32f4_i2c_terminate_xfer.exit.i153 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_i2c_isr_error(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7
  %base = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !94
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and2 = and i32 %3, -513
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #8, !srcloc !93
  %result = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -11, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %and2, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %and5 = and i32 %status.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end18_crit_edge, label %if.then7

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then7:                                         ; preds = %if.end
  %8 = ptrtoint ptr %msg1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msg1, align 4
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !94
  %14 = or i32 %13, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #8, !srcloc !93
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge
  %and14 = and i32 %status.0, -1025
  %15 = tail call i32 @llvm.bswap.i32(i32 %and14)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %15) #8, !srcloc !93
  %result17 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %result17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -5, ptr %result17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end13, %if.end.if.end18_crit_edge
  %status.1 = phi i32 [ %and14, %if.end13 ], [ %status.0, %if.end.if.end18_crit_edge ]
  %and19 = and i32 %status.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %if.then21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %and22 = and i32 %status.1, -257
  %19 = tail call i32 @llvm.bswap.i32(i32 %and22)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %19) #8, !srcloc !93
  %result25 = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %result25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -5, ptr %result25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18.if.end26_crit_edge
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !94
  %26 = and i32 %25, -458753
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #8, !srcloc !93
  %complete = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete) #8
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp23 = icmp sgt i32 %num, 0
  br i1 %cmp23, label %if.then.i.peel, label %for.end.thread

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  br label %cleanup

if.then.i.peel:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %num, -1
  %msg2.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 7
  %base.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 2
  %buf3.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 7, i32 2
  %count.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 7, i32 1
  %result.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 7, i32 3
  %stop.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 7, i32 4
  %complete.i = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 3
  %timeout13.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4.peel = icmp eq i32 %sub, 0
  %frombool1.i.peel = zext i1 %cmp4.peel to i8
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msgs, align 4
  %conv.i.i.peel = trunc i16 %9 to i8
  %shl.i.i.peel = shl i8 %conv.i.i.peel, 1
  %flags.i.i.peel = getelementptr %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i.peel to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i.i.peel, align 2
  %12 = trunc i16 %11 to i8
  %13 = and i8 %12, 1
  %or.i.i.peel = or i8 %13, %shl.i.i.peel
  %14 = ptrtoint ptr %msg2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or.i.i.peel, ptr %msg2.i, align 4
  %buf.i.peel = getelementptr %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i.peel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf.i.peel, align 4
  %17 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %buf3.i, align 4
  %len.i.peel = getelementptr %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %18 = ptrtoint ptr %len.i.peel to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i.peel, align 4
  %conv.i.peel = zext i16 %19 to i32
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i.peel, ptr %count.i, align 4
  %21 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %result.i, align 4
  %22 = ptrtoint ptr %stop.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool1.i.peel, ptr %stop.i, align 4
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %complete.i, align 4
  %add.ptr6.i.peel = getelementptr i8, ptr %7, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.peel) #8, !srcloc !94
  %25 = or i32 %24, 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.peel, i32 %25) #8, !srcloc !93
  %call8.i.peel = tail call fastcc i32 @stm32f4_i2c_wait_free_bus(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.peel)
  %tobool9.not.i.peel = icmp eq i32 %call8.i.peel, 0
  br i1 %tobool9.not.i.peel, label %stm32f4_i2c_xfer_msg.exit.peel, label %if.then.i.peel.for.end_crit_edge

if.then.i.peel.for.end_crit_edge:                 ; preds = %if.then.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

stm32f4_i2c_xfer_msg.exit.peel:                   ; preds = %if.then.i.peel
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !94
  %27 = or i32 %26, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %27) #8, !srcloc !93
  %28 = ptrtoint ptr %timeout13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timeout13.i, align 4
  %call14.i.peel = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef %29) #8
  %30 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.peel)
  %tobool16.not.i.peel = icmp eq i32 %call14.i.peel, 0
  %spec.store.select.i.peel = select i1 %tobool16.not.i.peel, i32 -110, i32 %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp.peel = icmp ugt i32 %num, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.peel)
  %tobool2.not.peel = icmp eq i32 %spec.store.select.i.peel, 0
  %or.cond.peel = select i1 %cmp.peel, i1 %tobool2.not.peel, i1 false
  br i1 %or.cond.peel, label %stm32f4_i2c_xfer_msg.exit.peel.stm32f4_i2c_xfer_msg.exit_crit_edge, label %stm32f4_i2c_xfer_msg.exit.peel.for.end_crit_edge

stm32f4_i2c_xfer_msg.exit.peel.for.end_crit_edge: ; preds = %stm32f4_i2c_xfer_msg.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

stm32f4_i2c_xfer_msg.exit.peel.stm32f4_i2c_xfer_msg.exit_crit_edge: ; preds = %stm32f4_i2c_xfer_msg.exit.peel
  br label %stm32f4_i2c_xfer_msg.exit

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.36) #11
  br label %cleanup

stm32f4_i2c_xfer_msg.exit:                        ; preds = %stm32f4_i2c_xfer_msg.exit.stm32f4_i2c_xfer_msg.exit_crit_edge, %stm32f4_i2c_xfer_msg.exit.peel.stm32f4_i2c_xfer_msg.exit_crit_edge
  %i.024 = phi i32 [ %inc, %stm32f4_i2c_xfer_msg.exit.stm32f4_i2c_xfer_msg.exit_crit_edge ], [ 1, %stm32f4_i2c_xfer_msg.exit.peel.stm32f4_i2c_xfer_msg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.024
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024, i32 %sub)
  %cmp4 = icmp eq i32 %i.024, %sub
  %frombool1.i = zext i1 %cmp4 to i8
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx, align 4
  %conv.i.i = trunc i16 %37 to i8
  %shl.i.i = shl i8 %conv.i.i, 1
  %flags.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.024, i32 1
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags.i.i, align 2
  %40 = trunc i16 %39 to i8
  %41 = and i8 %40, 1
  %or.i.i = or i8 %41, %shl.i.i
  %42 = ptrtoint ptr %msg2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or.i.i, ptr %msg2.i, align 4
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.024, i32 3
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf.i, align 4
  %45 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %buf3.i, align 4
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.024, i32 2
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %47 to i32
  %48 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv.i, ptr %count.i, align 4
  %49 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %result.i, align 4
  %50 = ptrtoint ptr %stop.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool1.i, ptr %stop.i, align 4
  %51 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %complete.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %35, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !94
  %53 = or i32 %52, 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %53) #8, !srcloc !93
  %54 = ptrtoint ptr %timeout13.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %timeout13.i, align 4
  %call14.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef %55) #8
  %56 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  %spec.store.select.i = select i1 %tobool16.not.i, i32 -110, i32 %57
  %inc = add nuw nsw i32 %i.024, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num)
  %cmp = icmp slt i32 %inc, %num
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %tobool2.not = icmp eq i32 %spec.store.select.i, 0
  %or.cond = select i1 %cmp, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %stm32f4_i2c_xfer_msg.exit.stm32f4_i2c_xfer_msg.exit_crit_edge, label %stm32f4_i2c_xfer_msg.exit.for.end_crit_edge, !llvm.loop !97

stm32f4_i2c_xfer_msg.exit.for.end_crit_edge:      ; preds = %stm32f4_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

stm32f4_i2c_xfer_msg.exit.stm32f4_i2c_xfer_msg.exit_crit_edge: ; preds = %stm32f4_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32f4_i2c_xfer_msg.exit

for.end:                                          ; preds = %stm32f4_i2c_xfer_msg.exit.for.end_crit_edge, %stm32f4_i2c_xfer_msg.exit.peel.for.end_crit_edge, %if.then.i.peel.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %spec.store.select.i.peel, %stm32f4_i2c_xfer_msg.exit.peel.for.end_crit_edge ], [ %call8.i.peel, %if.then.i.peel.for.end_crit_edge ], [ %spec.store.select.i, %stm32f4_i2c_xfer_msg.exit.for.end_crit_edge ]
  %58 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %cmp7 = icmp slt i32 %ret.0.lcssa, 0
  %spec.select = select i1 %cmp7, i32 %ret.0.lcssa, i32 %num
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %for.end.thread
  %retval.0 = phi i32 [ %call1, %do.end ], [ %num, %for.end.thread ], [ %spec.select, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32f4_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32f4_i2c_wait_free_bus(ptr nocapture noundef readonly %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 306) #8
  %base = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #8, !srcloc !94
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not57 = icmp eq i32 %3, 0
  br i1 %tobool.not57, label %entry.if.end42_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !94
  %7 = and i32 %6, 33554432
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then23.if.end42_crit_edge, label %if.then23.land.lhs.true_crit_edge

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then23.if.end42_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !94
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool27.not = icmp eq i32 %11, 0
  br i1 %tobool27.not, label %for.end.if.end42_crit_edge, label %do.body30

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.body30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_i2c_wait_free_bus.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32f4_i2c_wait_free_bus, %if.end42)) #8
          to label %if.then38 [label %if.end42], !srcloc !95

if.then38:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.stm32f4_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_i2c_wait_free_bus.__UNIQUE_ID_ddebug290, ptr noundef %13, ptr noundef nonnull @.str.39) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %do.body30, %for.end.if.end42_crit_edge, %if.then23.if.end42_crit_edge, %entry.if.end42_crit_edge
  %ret.0 = phi i32 [ 0, %for.end.if.end42_crit_edge ], [ -16, %if.then38 ], [ -16, %do.body30 ], [ 0, %entry.if.end42_crit_edge ], [ 0, %if.then23.if.end42_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_i2c_stm32f4__292_890_stm32f4_i2c_driver_init6, !1, !"__initcall__kmod_i2c_stm32f4__292_890_stm32f4_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 890, i32 1}
!2 = !{ptr @__exitcall_stm32f4_i2c_driver_exit, !1, !"__exitcall_stm32f4_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 892, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 893, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 894, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 883, i32 11}
!12 = !{ptr @stm32f4_i2c_driver, !13, !"stm32f4_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 881, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 777, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stm32f4_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stm32f4_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 783, i32 3}
!24 = !{ptr @stm32f4_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @stm32f4_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 789, i32 3}
!28 = !{ptr @stm32f4_i2c_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32f4_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 794, i32 3}
!32 = !{ptr @stm32f4_i2c_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stm32f4_i2c_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 801, i32 9}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 809, i32 33}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 818, i32 3}
!40 = !{ptr @stm32f4_i2c_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @stm32f4_i2c_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 826, i32 3}
!44 = !{ptr @stm32f4_i2c_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @stm32f4_i2c_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 837, i32 43}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 855, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @stm32f4_i2c_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @stm32f4_i2c_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 573, i32 3}
!55 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @stm32f4_i2c_isr_event.__UNIQUE_ID_ddebug291, !54, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 167, i32 4}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @stm32f4_i2c_set_periph_clk_freq._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @stm32f4_i2c_set_periph_clk_freq._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 179, i32 4}
!65 = !{ptr @stm32f4_i2c_set_periph_clk_freq._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @stm32f4_i2c_set_periph_clk_freq._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @stm32f4_i2c_algo, !68, !"stm32f4_i2c_algo", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 751, i32 35}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 733, i32 3}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @stm32f4_i2c_xfer._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @stm32f4_i2c_xfer._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 308, i32 3}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @stm32f4_i2c_wait_free_bus.__UNIQUE_ID_ddebug290, !75, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!78 = !{ptr @init_completion.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/completion.h", i32 87, i32 2}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stm32f4_i2c_match, !82, !"stm32f4_i2c_match", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-stm32f4.c", i32 875, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i64 6885036}
!94 = !{i64 6885454}
!95 = !{i64 2148744454, i64 2148744459, i64 2148744472, i64 2148744516, i64 2148744550, i64 2148744571}
!96 = !{i8 0, i8 2}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.peeled.count", i32 1}
