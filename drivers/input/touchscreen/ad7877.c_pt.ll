; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ad7877.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ad7877.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ad7877 = type { ptr, [32 x i8], ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [13 x %struct.spi_transfer], %struct.spi_message, %struct.mutex, i8, i8, i8, %struct.spinlock, %struct.timer_list, [108 x i8], [11 x i16], [106 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.ad7877_platform_data = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ser_req = type { i16, i16, i16, %struct.spi_message, [6 x %struct.spi_transfer], i16, [126 x i8] }

@__param_str_gpio3 = internal constant [13 x i8] c"ad7877.gpio3\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@gpio3 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gpio3 = internal constant %struct.kernel_param { ptr @__param_str_gpio3, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @gpio3 } }, section "__param", align 4
@__UNIQUE_ID_gpio3type234 = internal constant [27 x i8] c"ad7877.parmtype=gpio3:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio3235 = internal constant [58 x i8] c"ad7877.parm=gpio3:If gpio3 is set to 1 AUX3 acts as GPIO3\00", section ".modinfo", align 1
@__initcall__kmod_ad7877__241_819_ad7877_driver_init6 = internal global ptr @ad7877_driver_init, section ".initcall6.init", align 4
@ad7877_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ad7877_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7877_pm, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7877_driver_exit = internal global ptr @ad7877_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [65 x i8] c"ad7877.author=Michael Hennerich <hennerich@blackfin.uclinux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [45 x i8] c"ad7877.description=AD7877 touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [45 x i8] c"ad7877.file=drivers/input/touchscreen/ad7877\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [19 x i8] c"ad7877.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [24 x i8] c"ad7877.alias=spi:ad7877\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7877\00", [25 x i8] zeroinitializer }, align 32
@ad7877_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ad7877_suspend, ptr @ad7877_resume, ptr @ad7877_suspend, ptr @ad7877_resume, ptr @ad7877_suspend, ptr @ad7877_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ad7877_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7877_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/ad7877.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no IRQ?\0A\00", [23 x i8] zeroinitializer }, align 32
@ad7877_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data?\0A\00", [45 x i8] zeroinitializer }, align 32
@ad7877_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPI CLK %d Hz?\0A\00", [16 x i8] zeroinitializer }, align 32
@ad7877_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"spi master doesn't support 16 bits/word\0A\00", [55 x i8] zeroinitializer }, align 32
@ad7877_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ts->timer)\00", [19 x i8] zeroinitializer }, align 32
@ad7877_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ts->mutex\00", [21 x i8] zeroinitializer }, align 32
@ad7877_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ts->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AD7877 Touchscreen\00", [45 x i8] zeroinitializer }, align 32
@ad7877_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 761, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Failed to probe %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7877_probe._entry_ptr = internal global ptr @ad7877_probe._entry, section ".printk_index", align 4
@ad7877_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq %d busy?\0A\00", [18 x i8] zeroinitializer }, align 32
@ad7877_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @ad7877_attr_is_visible, ptr null, ptr @ad7877_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ad7877_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 394, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_sync --> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ad7877_irq\00", [21 x i8] zeroinitializer }, align 32
@ad7877_irq._entry_ptr = internal global ptr @ad7877_irq._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ad7877_attributes = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @dev_attr_temp1, ptr @dev_attr_temp2, ptr @dev_attr_aux1, ptr @dev_attr_aux2, ptr @dev_attr_aux3, ptr @dev_attr_bat1, ptr @dev_attr_bat2, ptr @dev_attr_disable, ptr @dev_attr_dac, ptr @dev_attr_gpio3, ptr @dev_attr_gpio4, ptr null], [48 x i8] zeroinitializer }, align 32
@dev_attr_aux3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aux3_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7877_gpio3_show, ptr @ad7877_gpio3_store }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aux3\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@dev_attr_temp1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aux1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aux1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aux2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aux2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bat1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bat1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bat2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bat2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_disable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7877_disable_show, ptr @ad7877_disable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dac = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7877_dac_show, ptr @ad7877_dac_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7877_gpio4_show, ptr @ad7877_gpio4_store }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"temp1\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"temp2\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aux1\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aux2\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bat1\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bat2\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dac\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 195, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"ad7877_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 811, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 813, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"ad7877_pm\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 809, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 678, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 683, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 689, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 696, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 716, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 717, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 718, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 731, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 733, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 760, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 776, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"ad7877_attr_group\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 615, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 394, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"ad7877_attributes\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 584, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"dev_attr_aux3\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio3\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 456, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 551, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"dev_attr_temp1\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"dev_attr_temp2\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"dev_attr_aux1\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"dev_attr_aux2\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [14 x i8] c"dev_attr_bat1\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"dev_attr_bat2\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"dev_attr_disable\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"dev_attr_dac\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio4\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 459, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 460, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 454, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 455, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 457, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 458, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 490, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 520, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [38 x i8] c"../drivers/input/touchscreen/ad7877.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 582, i32 8 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_gpio3235, ptr @__UNIQUE_ID_gpio3type234, ptr @__UNIQUE_ID_license245, ptr @__exitcall_ad7877_driver_exit, ptr @__initcall__kmod_ad7877__241_819_ad7877_driver_init6, ptr @__param_gpio3, ptr @ad7877_driver_exit, ptr @ad7877_irq._entry, ptr @ad7877_irq._entry_ptr, ptr @ad7877_probe._entry, ptr @ad7877_probe._entry_ptr, ptr @gpio3, ptr @ad7877_driver, ptr @.str, ptr @ad7877_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad7877_probe.__key, ptr @.str.7, ptr @ad7877_probe.__key.8, ptr @.str.9, ptr @ad7877_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ad7877_attr_group, ptr @.str.18, ptr @.str.19, ptr @ad7877_attributes, ptr @dev_attr_aux3, ptr @dev_attr_gpio3, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @dev_attr_temp1, ptr @dev_attr_temp2, ptr @dev_attr_aux1, ptr @dev_attr_aux2, ptr @dev_attr_bat1, ptr @dev_attr_bat2, ptr @dev_attr_disable, ptr @dev_attr_dac, ptr @dev_attr_gpio4, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7877_attributes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aux3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aux1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aux2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bat1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bat2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dac to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7877_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7877_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7877_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad7877_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad7877_probe, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !114

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad7877_probe.__UNIQUE_ID_ddebug236, ptr noundef %spi, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %do.body10, label %if.end27

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad7877_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad7877_probe, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !114

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad7877_probe.__UNIQUE_ID_ddebug237, ptr noundef %spi, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end7
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %5)
  %cmp = icmp ugt i32 %5, 20000000
  br i1 %cmp, label %do.body29, label %if.end47

do.body29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad7877_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad7877_probe, %if.then41)) #9
          to label %cleanup [label %if.then41], !srcloc !114

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed_hz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad7877_probe.__UNIQUE_ID_ddebug238, ptr noundef %spi, ptr noundef nonnull @.str.5, i32 noundef %7) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end27
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %8 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %bits_per_word, align 1
  %call48 = tail call i32 @spi_setup(ptr noundef %spi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end68, label %do.body51

do.body51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad7877_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad7877_probe, %if.then63)) #9
          to label %cleanup [label %if.then63], !srcloc !114

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad7877_probe.__UNIQUE_ID_ddebug239, ptr noundef %spi, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end68:                                         ; preds = %if.end47
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 1792, i32 noundef 3520) #9
  %tobool71.not = icmp eq ptr %call.i, null
  br i1 %tobool71.not, label %if.end68.cleanup_crit_edge, label %if.end73

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  %call75 = tail call ptr @devm_input_allocate_device(ptr noundef %spi) #9
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.end73.cleanup_crit_edge, label %if.end78

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  %call.i337 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7877_disable, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %tobool.not.i = icmp eq i32 %call.i337, 0
  br i1 %tobool.not.i, label %if.end83, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ad7877_disable(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %spi84 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %spi84 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spi, ptr %spi84, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call75, ptr %call.i, align 128
  %timer = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 23
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ad7877_timer, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @ad7877_probe.__key) #9
  %mutex = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @ad7877_probe.__key.8) #9
  %lock = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ad7877_probe.__key.10, i16 noundef signext 3) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool95.not = icmp eq i16 %13, 0
  %narrow = select i1 %tobool95.not, i16 7877, i16 %13
  %model97 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %model97 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %narrow, ptr %model97, align 8
  %vref_delay_usecs = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %vref_delay_usecs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vref_delay_usecs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool99.not = icmp eq i16 %16, 0
  %narrow316 = select i1 %tobool99.not, i16 100, i16 %16
  %vref_delay_usecs105 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %vref_delay_usecs105 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %narrow316, ptr %vref_delay_usecs105, align 2
  %x_plate_ohms = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %x_plate_ohms to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %x_plate_ohms, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool107.not = icmp eq i16 %19, 0
  %narrow317 = select i1 %tobool107.not, i16 400, i16 %19
  %x_plate_ohms113 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %x_plate_ohms113 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %narrow317, ptr %x_plate_ohms113, align 4
  %pressure_max = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %pressure_max to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pressure_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool115.not = icmp eq i16 %22, 0
  %conv120 = select i1 %tobool115.not, i16 -1, i16 %22
  %pressure_max121 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %pressure_max121 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv120, ptr %pressure_max121, align 2
  %stopacq_polarity = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %stopacq_polarity to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stopacq_polarity, align 2
  %stopacq_polarity122 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %stopacq_polarity122 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %stopacq_polarity122, align 8
  %first_conversion_delay = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %first_conversion_delay to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %first_conversion_delay, align 1
  %first_conversion_delay123 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %first_conversion_delay123 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %first_conversion_delay123, align 1
  %acquisition_time = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %acquisition_time to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %acquisition_time, align 2
  %acquisition_time124 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 13
  %32 = ptrtoint ptr %acquisition_time124 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %acquisition_time124, align 2
  %averaging = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 13
  %33 = ptrtoint ptr %averaging to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %averaging, align 1
  %averaging125 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 14
  %35 = ptrtoint ptr %averaging125 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %averaging125, align 1
  %pen_down_acc_interval = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %pen_down_acc_interval to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pen_down_acc_interval, align 2
  %pen_down_acc_interval126 = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 15
  %38 = ptrtoint ptr %pen_down_acc_interval126 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %pen_down_acc_interval126, align 4
  %phys = getelementptr inbounds %struct.ad7877, ptr %call.i, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i338 = icmp eq ptr %40, null
  br i1 %tobool.not.i338, label %if.end.i, label %if.end83.dev_name.exit_crit_edge

if.end83.dev_name.exit_crit_edge:                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end83.dev_name.exit_crit_edge
  %retval.0.i339 = phi ptr [ %42, %if.end.i ], [ %40, %if.end83.dev_name.exit_crit_edge ]
  %call129 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i339)
  %43 = ptrtoint ptr %call75 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.13, ptr %call75, align 8
  %phys132 = getelementptr inbounds %struct.input_dev, ptr %call75, i32 0, i32 1
  %44 = ptrtoint ptr %phys132 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %phys, ptr %phys132, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call75, i32 0, i32 40, i32 1
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %spi, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call75, i32 0, i32 5
  %46 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call75, i32 0, i32 6, i32 10
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  %or.i329 = or i32 %49, 1024
  store i32 %or.i329, ptr %add.ptr.i, align 4
  %or.i330 = or i32 %47, 10
  store i32 %or.i330, ptr %evbit, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call75, i32 0, i32 8
  %50 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %absbit, align 4
  %or.i333 = or i32 %51, 16777219
  store i32 %or.i333, ptr %absbit, align 4
  %x_min = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %x_min to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %x_min, align 2
  %conv144 = zext i16 %53 to i32
  %x_max = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %x_max to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %x_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool151.not = icmp eq i16 %55, 0
  %narrow318 = select i1 %tobool151.not, i16 4095, i16 %55
  %cond155 = zext i16 %narrow318 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call75, i32 noundef 0, i32 noundef %conv144, i32 noundef %cond155, i32 noundef 0, i32 noundef 0) #9
  %y_min = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %y_min to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %y_min, align 2
  %conv156 = zext i16 %57 to i32
  %y_max = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 7
  %58 = ptrtoint ptr %y_max to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %y_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool163.not = icmp eq i16 %59, 0
  %narrow319 = select i1 %tobool163.not, i16 4095, i16 %59
  %cond167 = zext i16 %narrow319 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call75, i32 noundef 1, i32 noundef %conv156, i32 noundef %cond167, i32 noundef 0, i32 noundef 0) #9
  %pressure_min = getelementptr inbounds %struct.ad7877_platform_data, ptr %1, i32 0, i32 8
  %60 = ptrtoint ptr %pressure_min to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pressure_min, align 2
  %conv168 = zext i16 %61 to i32
  %62 = ptrtoint ptr %pressure_max to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %pressure_max, align 2
  %conv170 = zext i16 %63 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call75, i32 noundef 24, i32 noundef %conv168, i32 noundef %conv170, i32 noundef 0, i32 noundef 0) #9
  tail call fastcc void @ad7877_write(ptr noundef %spi, i16 noundef zeroext 13, i16 noundef zeroext 3586)
  %call172 = tail call fastcc i32 @ad7877_read(ptr noundef %spi)
  %conv174 = and i32 %call172, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3586, i32 %conv174)
  %cmp175.not = icmp eq i32 %conv174, 3586
  br i1 %cmp175.not, label %if.end185, label %do.end180

do.end180:                                        ; preds = %dev_name.exit
  %64 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i341 = icmp eq ptr %65, null
  br i1 %tobool.not.i341, label %if.end.i342, label %do.end180.dev_name.exit344_crit_edge

do.end180.dev_name.exit344_crit_edge:             ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit344

if.end.i342:                                      ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spi, align 4
  br label %dev_name.exit344

dev_name.exit344:                                 ; preds = %if.end.i342, %do.end180.dev_name.exit344_crit_edge
  %retval.0.i343 = phi ptr [ %67, %if.end.i342 ], [ %65, %do.end180.dev_name.exit344_crit_edge ]
  %68 = ptrtoint ptr %call75 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call75, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i343, ptr noundef %69) #12
  br label %cleanup

if.end185:                                        ; preds = %dev_name.exit
  %70 = load i8, ptr @gpio3, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool186.not = icmp eq i8 %70, 0
  br i1 %tobool186.not, label %if.end185.if.end189_crit_edge, label %if.then187

if.end185.if.end189_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then187:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ad7877_write(ptr noundef %spi, i16 noundef zeroext 15, i16 noundef zeroext 452)
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.end185.if.end189_crit_edge
  tail call fastcc void @ad7877_setup_ts_def_msg(ptr noundef %spi, ptr noundef nonnull %call.i)
  %71 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 6
  %73 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %call194 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %72, ptr noundef null, ptr noundef nonnull @ad7877_irq, i32 noundef 8194, ptr noundef %76, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end215, label %do.body197

do.body197:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad7877_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad7877_probe, %if.then209)) #9
          to label %cleanup [label %if.then209], !srcloc !114

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad7877_probe.__UNIQUE_ID_ddebug240, ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef %78) #9
  br label %cleanup

if.end215:                                        ; preds = %if.end189
  %call217 = tail call i32 @devm_device_add_group(ptr noundef %spi, ptr noundef nonnull @ad7877_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.end220, label %if.end215.cleanup_crit_edge

if.end215.cleanup_crit_edge:                      ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end220:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  %call221 = tail call i32 @input_register_device(ptr noundef nonnull %call75) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end220, %if.end215.cleanup_crit_edge, %if.then209, %do.body197, %dev_name.exit344, %devm_add_action_or_reset.exit, %if.end73.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.then63, %do.body51, %if.then41, %do.body29, %if.then22, %do.body10, %if.then5, %do.body
  %retval.0 = phi i32 [ -19, %dev_name.exit344 ], [ -19, %if.then5 ], [ -19, %if.then22 ], [ -22, %if.then41 ], [ %call48, %if.then63 ], [ -12, %if.end68.cleanup_crit_edge ], [ -12, %if.end73.cleanup_crit_edge ], [ %call.i337, %devm_add_action_or_reset.exit ], [ %call194, %if.then209 ], [ %call217, %if.end215.cleanup_crit_edge ], [ %call221, %if.end220 ], [ -19, %do.body ], [ -19, %do.body10 ], [ -22, %do.body29 ], [ %call48, %do.body51 ], [ %call194, %do.body197 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7877_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ad7877, ptr %data, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %disabled = getelementptr inbounds %struct.ad7877, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %disabled, align 4
  %spi = getelementptr inbounds %struct.ad7877, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %6) #9
  %timer = getelementptr inbounds %struct.ad7877, ptr %data, i32 0, i32 23
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 128
  tail call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 24, i32 noundef 0) #9
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 330, i32 noundef 0) #9
  tail call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7877_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1508
  %lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef 0) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 0) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad7877_write(ptr noundef %spi, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 768) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3
  %1 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %msg, ptr %msg, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 10
  %5 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 8
  %prev.i2.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 10, i32 1
  %6 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %shl = shl i16 %reg, 12
  %7 = and i16 %val, 4095
  %or = or i16 %7, %shl
  %command = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %or, ptr %command, align 4
  %xfer = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %command, ptr %xfer, align 64
  %len = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len, align 8
  %transfer_list.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %prev3.i.i.i, align 8
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i, ptr %msg, align 8
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %call10 = tail call i32 @spi_sync(ptr noundef %spi, ptr noundef %msg) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7877_read(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 768) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3
  %1 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %msg, ptr %msg, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 10
  %5 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 8
  %prev.i2.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 10, i32 1
  %6 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %command = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4148, ptr %command, align 4
  %xfer = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %command, ptr %xfer, align 64
  %len = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len, align 8
  %cs_change = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 7
  %10 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %sample = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 5
  %rx_buf = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %11 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sample, ptr %rx_buf, align 4
  %len11 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 2
  %12 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len11, align 8
  %transfer_list.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %prev3.i.i.i, align 8
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i, ptr %msg, align 8
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %transfer_list.i1 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 18
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i3 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i1, ptr noundef %18, ptr noundef %msg) #9
  br i1 %call.i.i.i3, label %if.end.i.i.i5, label %spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit6

if.end.i.i.i5:                                    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i1, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg, ptr %transfer_list.i1, align 4
  %prev3.i.i.i4 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i4, align 8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i1, ptr %18, align 4
  br label %spi_message_add_tail.exit6

spi_message_add_tail.exit6:                       ; preds = %if.end.i.i.i5, %spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge
  %call19 = tail call i32 @spi_sync(ptr noundef %spi, ptr noundef %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cond.false, label %spi_message_add_tail.exit6.cond.end_crit_edge

spi_message_add_tail.exit6.cond.end_crit_edge:    ; preds = %spi_message_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %spi_message_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %sample to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sample, align 128
  %conv22 = zext i16 %24 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %spi_message_add_tail.exit6.cond.end_crit_edge
  %cond = phi i32 [ %conv22, %cond.false ], [ %call19, %spi_message_add_tail.exit6.cond.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad7877_setup_ts_def_msg(ptr noundef %spi, ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stopacq_polarity = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 11
  %0 = ptrtoint ptr %stopacq_polarity to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopacq_polarity, align 8
  %2 = shl i8 %1, 3
  %3 = and i8 %2, 8
  %shl = zext i8 %3 to i16
  %averaging = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 14
  %4 = ptrtoint ptr %averaging to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %averaging, align 1
  %6 = and i8 %5, 3
  %and2 = zext i8 %6 to i16
  %shl3 = shl nuw nsw i16 %and2, 10
  %or = or i16 %shl3, %shl
  %pen_down_acc_interval = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 15
  %7 = ptrtoint ptr %pen_down_acc_interval to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pen_down_acc_interval, align 4
  %9 = and i8 %8, 3
  %and7 = zext i8 %9 to i16
  %or5 = or i16 %or, %and7
  %acquisition_time = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 13
  %10 = ptrtoint ptr %acquisition_time to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %acquisition_time, align 2
  %12 = and i8 %11, 3
  %and11 = zext i8 %12 to i16
  %shl12 = shl nuw nsw i16 %and11, 8
  %or9 = or i16 %or5, %shl12
  %first_conversion_delay = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 12
  %13 = ptrtoint ptr %first_conversion_delay to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %first_conversion_delay, align 1
  %15 = shl i8 %14, 4
  %16 = and i8 %15, 48
  %shl16 = zext i8 %16 to i16
  %or13 = or i16 %or9, %shl16
  %or17 = or i16 %or13, 8256
  %cmd_crtl2 = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 8
  %17 = ptrtoint ptr %cmd_crtl2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or17, ptr %cmd_crtl2, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 768) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.ad7877_write.exit_crit_edge, label %if.end.i

entry.ad7877_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad7877_write.exit

if.end.i:                                         ; preds = %entry
  %msg.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3
  %19 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i, ptr %msg.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 10
  %23 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 8
  %prev.i2.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %or.i = and i16 %or17, 12287
  %command.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or.i, ptr %command.i, align 4
  %xfer.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %command.i, ptr %xfer.i, align 64
  %len.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 2
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len.i, align 8
  %transfer_list.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.spi_message_add_tail.exit.i_crit_edge

if.end.i.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 8
  %31 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 8
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.spi_message_add_tail.exit.i_crit_edge
  %call10.i = tail call i32 @spi_sync(ptr noundef %spi, ptr noundef %msg.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %ad7877_write.exit

ad7877_write.exit:                                ; preds = %spi_message_add_tail.exit.i, %entry.ad7877_write.exit_crit_edge
  %cmd_crtl1 = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 7
  %32 = ptrtoint ptr %cmd_crtl1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 4159, ptr %cmd_crtl1, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i103 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 768) #13
  %tobool.not.i104 = icmp eq ptr %call7.i.i.i103, null
  br i1 %tobool.not.i104, label %ad7877_write.exit.ad7877_write.exit119_crit_edge, label %if.end.i114

ad7877_write.exit.ad7877_write.exit119_crit_edge: ; preds = %ad7877_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad7877_write.exit119

if.end.i114:                                      ; preds = %ad7877_write.exit
  %msg.i105 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 3
  %34 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 3, i32 1
  %35 = call ptr @memset(ptr %34, i32 0, i32 40)
  %36 = ptrtoint ptr %msg.i105 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %msg.i105, ptr %msg.i105, align 8
  %prev.i.i.i.i106 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 3, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i105, ptr %prev.i.i.i.i106, align 4
  %resources.i.i.i107 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 3, i32 10
  %38 = ptrtoint ptr %resources.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i.i107, ptr %resources.i.i.i107, align 8
  %prev.i2.i.i.i108 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 3, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i2.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i.i107, ptr %prev.i2.i.i.i108, align 4
  %command.i109 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 2
  %40 = ptrtoint ptr %command.i109 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 4159, ptr %command.i109, align 4
  %xfer.i110 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 4
  %41 = ptrtoint ptr %xfer.i110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %command.i109, ptr %xfer.i110, align 64
  %len.i111 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 4, i32 0, i32 2
  %42 = ptrtoint ptr %len.i111 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %len.i111, align 8
  %transfer_list.i.i112 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i.i113 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i112, ptr noundef %msg.i105, ptr noundef %msg.i105) #9
  br i1 %call.i.i.i.i113, label %if.end.i.i.i.i116, label %if.end.i114.spi_message_add_tail.exit.i118_crit_edge

if.end.i114.spi_message_add_tail.exit.i118_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i118

if.end.i.i.i.i116:                                ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %transfer_list.i.i112, ptr %prev.i.i.i.i106, align 4
  %44 = ptrtoint ptr %transfer_list.i.i112 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i105, ptr %transfer_list.i.i112, align 4
  %prev3.i.i.i.i115 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i103, i32 0, i32 4, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i105, ptr %prev3.i.i.i.i115, align 8
  %46 = ptrtoint ptr %msg.i105 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %transfer_list.i.i112, ptr %msg.i105, align 8
  br label %spi_message_add_tail.exit.i118

spi_message_add_tail.exit.i118:                   ; preds = %if.end.i.i.i.i116, %if.end.i114.spi_message_add_tail.exit.i118_crit_edge
  %call10.i117 = tail call i32 @spi_sync(ptr noundef %spi, ptr noundef %msg.i105) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i103) #9
  br label %ad7877_write.exit119

ad7877_write.exit119:                             ; preds = %spi_message_add_tail.exit.i118, %ad7877_write.exit.ad7877_write.exit119_crit_edge
  %cmd_dummy = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 9
  %47 = ptrtoint ptr %cmd_dummy to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %cmd_dummy, align 4
  %msg = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 17
  %48 = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 17, i32 1
  %49 = call ptr @memset(ptr %48, i32 0, i32 40)
  %50 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 17, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 17, i32 10
  %52 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 17, i32 10, i32 1
  %53 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %context = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 17, i32 4
  %54 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ts, ptr %context, align 4
  %xfer = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 16
  %55 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cmd_crtl1, ptr %xfer, align 64
  %len = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 16, i32 0, i32 2
  %56 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %len, align 8
  %cs_change = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 16, i32 0, i32 7
  %57 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 16, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %ad7877_write.exit119.spi_message_add_tail.exit_crit_edge

ad7877_write.exit119.spi_message_add_tail.exit_crit_edge: ; preds = %ad7877_write.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %ad7877_write.exit119
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad7877, ptr %ts, i32 0, i32 16, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %ad7877_write.exit119.spi_message_add_tail.exit_crit_edge
  %arrayidx31 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 1
  %62 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cmd_dummy, ptr %arrayidx31, align 32
  %len35 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 1, i32 2
  %63 = ptrtoint ptr %len35 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %len35, align 8
  %cs_change38 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 1, i32 7
  %64 = ptrtoint ptr %cs_change38 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load39 = load i8, ptr %cs_change38, align 4
  %bf.set41 = or i8 %bf.load39, 64
  store i8 %bf.set41, ptr %cs_change38, align 4
  %transfer_list.i120 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 1, i32 18
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i122 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i120, ptr noundef %66, ptr noundef %msg) #9
  br i1 %call.i.i.i122, label %if.end.i.i.i124, label %spi_message_add_tail.exit.for.body.preheader_crit_edge

spi_message_add_tail.exit.for.body.preheader_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.end.i.i.i124:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i120, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %transfer_list.i120 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg, ptr %transfer_list.i120, align 4
  %prev3.i.i.i123 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 1, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i123, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i120, ptr %66, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.i.i.i124, %spi_message_add_tail.exit.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %spi_message_add_tail.exit131.for.body_crit_edge, %for.body.preheader
  %i.0132 = phi i32 [ %inc, %spi_message_add_tail.exit131.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx45 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 25, i32 %i.0132
  %add47 = add nuw nsw i32 %i.0132, 2
  %rx_buf = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 %add47, i32 1
  %71 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx45, ptr %rx_buf, align 4
  %len52 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 %add47, i32 2
  %72 = ptrtoint ptr %len52 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %len52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0132)
  %cmp53.not = icmp eq i32 %i.0132, 10
  br i1 %cmp53.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %cs_change58 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 %add47, i32 7
  %73 = ptrtoint ptr %cs_change58 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load59 = load i8, ptr %cs_change58, align 4
  %bf.set61 = or i8 %bf.load59, 64
  store i8 %bf.set61, ptr %cs_change58, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %transfer_list.i126 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 %add47, i32 18
  %74 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i128 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i126, ptr noundef %75, ptr noundef %msg) #9
  br i1 %call.i.i.i128, label %if.end.i.i.i130, label %if.end.spi_message_add_tail.exit131_crit_edge

if.end.spi_message_add_tail.exit131_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit131

if.end.i.i.i130:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %transfer_list.i126, ptr %prev.i.i.i, align 4
  %77 = ptrtoint ptr %transfer_list.i126 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg, ptr %transfer_list.i126, align 4
  %prev3.i.i.i129 = getelementptr %struct.ad7877, ptr %ts, i32 0, i32 16, i32 %add47, i32 18, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i129, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %transfer_list.i126, ptr %75, align 4
  br label %spi_message_add_tail.exit131

spi_message_add_tail.exit131:                     ; preds = %if.end.i.i.i130, %if.end.spi_message_add_tail.exit131_crit_edge
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %spi_message_add_tail.exit131.for.body_crit_edge

spi_message_add_tail.exit131.for.body_crit_edge:  ; preds = %spi_message_add_tail.exit131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %spi_message_add_tail.exit131
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_irq(i32 noundef %irq, ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.ad7877, ptr %handle, i32 0, i32 2
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %msg = getelementptr inbounds %struct.ad7877, ptr %handle, i32 0, i32 17
  %call = tail call i32 @spi_sync(ptr noundef %1, ptr noundef %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %call) #12
  br label %out

do.body3:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ad7877, ptr %handle, i32 0, i32 22
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 128
  %conversion_data.i = getelementptr inbounds %struct.ad7877, ptr %handle, i32 0, i32 25
  %arrayidx.i = getelementptr %struct.ad7877, ptr %handle, i32 0, i32 25, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %8 = and i16 %7, 4095
  %9 = ptrtoint ptr %conversion_data.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %conversion_data.i, align 128
  %11 = and i16 %10, 4095
  %arrayidx8.i = getelementptr %struct.ad7877, ptr %handle, i32 0, i32 25, i32 10
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx8.i, align 4
  %14 = and i16 %13, 4095
  %conv17.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp ne i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool19.i = icmp ne i16 %14, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %tobool19.i, i1 false
  br i1 %spec.select.i, label %if.then.i, label %do.body3.if.end15_crit_edge, !prof !116

do.body3.if.end15_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then.i:                                        ; preds = %do.body3
  %arrayidx13.i = getelementptr %struct.ad7877, ptr %handle, i32 0, i32 25, i32 2
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx13.i, align 4
  %17 = and i16 %16, 4095
  %conv22.i = zext i16 %17 to i32
  %conv23.i = zext i16 %14 to i32
  %sub.i = sub nsw i32 %conv22.i, %conv23.i
  %x_plate_ohms.i = getelementptr inbounds %struct.ad7877, ptr %handle, i32 0, i32 5
  %18 = ptrtoint ptr %x_plate_ohms.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %x_plate_ohms.i, align 4
  %conv25.i = zext i16 %19 to i32
  %mul.i = mul nuw nsw i32 %conv25.i, %conv17.i
  %mul26.i = mul i32 %mul.i, %sub.i
  %div.i = udiv i32 %mul26.i, %conv23.i
  %add.i = add i32 %div.i, 2047
  %shr.i = lshr i32 %add.i, 12
  %pressure_max.i = getelementptr inbounds %struct.ad7877, ptr %handle, i32 0, i32 6
  %20 = ptrtoint ptr %pressure_max.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pressure_max.i, align 2
  %conv28.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv28.i)
  %cmp.i = icmp ugt i32 %shr.i, %conv28.i
  br i1 %cmp.i, label %if.then.i.if.end15_crit_edge, label %if.end.i

if.then.i.if.end15_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.i:                                         ; preds = %if.then.i
  %pprev.i.i.i = getelementptr inbounds %struct.ad7877, ptr %handle, i32 0, i32 23, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.not.i, label %if.then32.i, label %if.end.i.if.then12_crit_edge

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef 1) #9
  br label %if.then12

if.then12:                                        ; preds = %if.then32.i, %if.end.i.if.then12_crit_edge
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %conv17.i) #9
  %conv35.i = zext i16 %11 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %conv35.i) #9
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %shr.i) #9
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %timer = getelementptr inbounds %struct.ad7877, ptr %handle, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %24, 10
  %call14 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then.i.if.end15_crit_edge, %do.body3.if.end15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %out

out:                                              ; preds = %if.end15, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ad7877_attr_is_visible(ptr nocapture noundef readnone %kobj, ptr noundef readonly %attr, i32 noundef %n) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode1, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_aux3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load i8, ptr @gpio3, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i16 %1, i16 0
  br label %if.end9

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq ptr %attr, @dev_attr_gpio3
  br i1 %cmp3, label %if.then4, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load i8, ptr @gpio3, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  %spec.select12 = select i1 %tobool5.not, i16 0, i16 %1
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.else.if.end9_crit_edge, %if.then
  %mode.0 = phi i16 [ %1, %if.else.if.end9_crit_edge ], [ %spec.select, %if.then ], [ %spec.select12, %if.then4 ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aux3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call fastcc i32 @ad7877_read_adc(ptr noundef %3, i32 noundef 6869)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7877_read_adc(ptr noundef %spi, i32 noundef %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 768) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg, ptr %msg, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 10
  %7 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 8
  %prev.i2.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %stopacq_polarity = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %stopacq_polarity to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stopacq_polarity, align 8
  %11 = shl i8 %10, 3
  %12 = and i8 %11, 8
  %shl = zext i8 %12 to i16
  %acquisition_time = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %acquisition_time to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %acquisition_time, align 2
  %15 = and i8 %14, 3
  %and6 = zext i8 %15 to i16
  %shl7 = shl nuw nsw i16 %and6, 8
  %or3 = or i16 %shl7, %shl
  %or8 = or i16 %or3, 8320
  %ref_on = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %ref_on to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or8, ptr %ref_on, align 2
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4096, ptr %call7.i.i, align 128
  %conv11 = trunc i32 %command to i16
  %command12 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %command12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv11, ptr %command12, align 4
  %xfer = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %xfer, align 64
  %len = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len, align 8
  %cs_change = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 7
  %21 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %arrayidx20 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ref_on, ptr %arrayidx20, align 32
  %len24 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 2
  %23 = ptrtoint ptr %len24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %len24, align 8
  %vref_delay_usecs = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %vref_delay_usecs to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vref_delay_usecs, align 2
  %delay = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 9
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %delay, align 2
  %unit = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 9, i32 1
  %27 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %unit, align 8
  %cs_change32 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 7
  %28 = ptrtoint ptr %cs_change32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load33 = load i8, ptr %cs_change32, align 4
  %bf.set35 = or i8 %bf.load33, 64
  store i8 %bf.set35, ptr %cs_change32, align 4
  %arrayidx38 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %command12, ptr %arrayidx38, align 64
  %len42 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 2
  %30 = ptrtoint ptr %len42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %len42, align 8
  %31 = load i16, ptr %vref_delay_usecs, align 2
  %delay46 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 9
  %32 = ptrtoint ptr %delay46 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %delay46, align 2
  %unit51 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 9, i32 1
  %33 = ptrtoint ptr %unit51 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %unit51, align 8
  %cs_change54 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 7
  %34 = ptrtoint ptr %cs_change54 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load55 = load i8, ptr %cs_change54, align 4
  %bf.set57 = or i8 %bf.load55, 64
  store i8 %bf.set57, ptr %cs_change54, align 4
  %sample58 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 5
  %rx_buf = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 1
  %35 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sample58, ptr %rx_buf, align 4
  %len63 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 2
  %36 = ptrtoint ptr %len63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %len63, align 8
  %cs_change66 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 7
  %37 = ptrtoint ptr %cs_change66 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load67 = load i8, ptr %cs_change66, align 4
  %bf.set69 = or i8 %bf.load67, 64
  store i8 %bf.set69, ptr %cs_change66, align 4
  %cmd_crtl2 = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 8
  %arrayidx71 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cmd_crtl2, ptr %arrayidx71, align 64
  %len75 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 2
  %39 = ptrtoint ptr %len75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %len75, align 8
  %cs_change78 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 7
  %40 = ptrtoint ptr %cs_change78 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load79 = load i8, ptr %cs_change78, align 4
  %bf.set81 = or i8 %bf.load79, 64
  store i8 %bf.set81, ptr %cs_change78, align 4
  %cmd_crtl1 = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 7
  %arrayidx83 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 5
  %41 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cmd_crtl1, ptr %arrayidx83, align 32
  %len87 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 2
  %42 = ptrtoint ptr %len87 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %len87, align 8
  %transfer_list.i = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg, ptr %prev3.i.i.i, align 8
  %46 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %transfer_list.i, ptr %msg, align 8
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %transfer_list.i.1 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 18
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1, ptr noundef %48, ptr noundef %msg) #9
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %spi_message_add_tail.exit.spi_message_add_tail.exit.1_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit.1_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.1

if.end.i.i.i.1:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i.1, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %transfer_list.i.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg, ptr %transfer_list.i.1, align 4
  %prev3.i.i.i.1 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i.1, align 8
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i.1, ptr %48, align 4
  br label %spi_message_add_tail.exit.1

spi_message_add_tail.exit.1:                      ; preds = %if.end.i.i.i.1, %spi_message_add_tail.exit.spi_message_add_tail.exit.1_crit_edge
  %transfer_list.i.2 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 18
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.2, ptr noundef %54, ptr noundef %msg) #9
  br i1 %call.i.i.i.2, label %if.end.i.i.i.2, label %spi_message_add_tail.exit.1.spi_message_add_tail.exit.2_crit_edge

spi_message_add_tail.exit.1.spi_message_add_tail.exit.2_crit_edge: ; preds = %spi_message_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.2

if.end.i.i.i.2:                                   ; preds = %spi_message_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %transfer_list.i.2, ptr %prev.i.i.i, align 4
  %56 = ptrtoint ptr %transfer_list.i.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg, ptr %transfer_list.i.2, align 4
  %prev3.i.i.i.2 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 18, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i.2, align 8
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %transfer_list.i.2, ptr %54, align 4
  br label %spi_message_add_tail.exit.2

spi_message_add_tail.exit.2:                      ; preds = %if.end.i.i.i.2, %spi_message_add_tail.exit.1.spi_message_add_tail.exit.2_crit_edge
  %transfer_list.i.3 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 18
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.3, ptr noundef %60, ptr noundef %msg) #9
  br i1 %call.i.i.i.3, label %if.end.i.i.i.3, label %spi_message_add_tail.exit.2.spi_message_add_tail.exit.3_crit_edge

spi_message_add_tail.exit.2.spi_message_add_tail.exit.3_crit_edge: ; preds = %spi_message_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.3

if.end.i.i.i.3:                                   ; preds = %spi_message_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %transfer_list.i.3, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %transfer_list.i.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg, ptr %transfer_list.i.3, align 4
  %prev3.i.i.i.3 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 18, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i.3, align 8
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %transfer_list.i.3, ptr %60, align 4
  br label %spi_message_add_tail.exit.3

spi_message_add_tail.exit.3:                      ; preds = %if.end.i.i.i.3, %spi_message_add_tail.exit.2.spi_message_add_tail.exit.3_crit_edge
  %transfer_list.i.4 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 18
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.4 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.4, ptr noundef %66, ptr noundef %msg) #9
  br i1 %call.i.i.i.4, label %if.end.i.i.i.4, label %spi_message_add_tail.exit.3.spi_message_add_tail.exit.4_crit_edge

spi_message_add_tail.exit.3.spi_message_add_tail.exit.4_crit_edge: ; preds = %spi_message_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.4

if.end.i.i.i.4:                                   ; preds = %spi_message_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i.4, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %transfer_list.i.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg, ptr %transfer_list.i.4, align 4
  %prev3.i.i.i.4 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i.4, align 8
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i.4, ptr %66, align 4
  br label %spi_message_add_tail.exit.4

spi_message_add_tail.exit.4:                      ; preds = %if.end.i.i.i.4, %spi_message_add_tail.exit.3.spi_message_add_tail.exit.4_crit_edge
  %transfer_list.i.5 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 18
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.5 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.5, ptr noundef %72, ptr noundef %msg) #9
  br i1 %call.i.i.i.5, label %if.end.i.i.i.5, label %spi_message_add_tail.exit.4.spi_message_add_tail.exit.5_crit_edge

spi_message_add_tail.exit.4.spi_message_add_tail.exit.5_crit_edge: ; preds = %spi_message_add_tail.exit.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.5

if.end.i.i.i.5:                                   ; preds = %spi_message_add_tail.exit.4
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %transfer_list.i.5, ptr %prev.i.i.i, align 4
  %74 = ptrtoint ptr %transfer_list.i.5 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg, ptr %transfer_list.i.5, align 4
  %prev3.i.i.i.5 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 18, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i.5, align 8
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %transfer_list.i.5, ptr %72, align 4
  br label %spi_message_add_tail.exit.5

spi_message_add_tail.exit.5:                      ; preds = %if.end.i.i.i.5, %spi_message_add_tail.exit.4.spi_message_add_tail.exit.5_crit_edge
  %call93 = tail call i32 @spi_sync(ptr noundef %spi, ptr noundef %msg) #9
  %77 = ptrtoint ptr %sample58 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sample58, align 128
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool96.not = icmp eq i32 %call93, 0
  %conv95 = zext i16 %78 to i32
  %cond = select i1 %tobool96.not, i32 %conv95, i32 %call93
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit.5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %spi_message_add_tail.exit.5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_gpio3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpio3 = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio3, align 1, !range !115
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_gpio3_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !117
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2 = icmp ne i32 %4, 0
  %gpio3 = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 20
  %frombool = zext i1 %tobool2 to i8
  %5 = ptrtoint ptr %gpio3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %gpio3, align 1
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  %gpio4 = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %gpio4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gpio4, align 2, !range !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 768) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.ad7877_write.exit_crit_edge, label %if.end.i

if.end.ad7877_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad7877_write.exit

if.end.i:                                         ; preds = %if.end
  %11 = shl nuw nsw i8 %9, 4
  %shl = zext i8 %11 to i16
  %msg.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 10
  %16 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 8
  %prev.i2.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %or = select i1 %tobool2, i16 -3552, i16 -3584
  %or.i = or i16 %or, %shl
  %command.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or.i, ptr %command.i, align 4
  %xfer.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %command.i, ptr %xfer.i, align 64
  %len.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 2
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len.i, align 8
  %transfer_list.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.spi_message_add_tail.exit.i_crit_edge

if.end.i.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 8
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 8
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.spi_message_add_tail.exit.i_crit_edge
  %call10.i = call i32 @spi_sync(ptr noundef %7, ptr noundef %msg.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %ad7877_write.exit

ad7877_write.exit:                                ; preds = %spi_message_add_tail.exit.i, %if.end.ad7877_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %ad7877_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ad7877_write.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call fastcc i32 @ad7877_read_adc(ptr noundef %3, i32 noundef 7265)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call fastcc i32 @ad7877_read_adc(ptr noundef %3, i32 noundef 7397)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aux1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call fastcc i32 @ad7877_read_adc(ptr noundef %3, i32 noundef 6605)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aux2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call fastcc i32 @ad7877_read_adc(ptr noundef %3, i32 noundef 6737)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bat1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call fastcc i32 @ad7877_read_adc(ptr noundef %3, i32 noundef 7001)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bat2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call fastcc i32 @ad7877_read_adc(ptr noundef %3, i32 noundef 7133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_disable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %disabled = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 4, !range !115
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_disable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !117
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @ad7877_disable(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %disabled.i = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %disabled.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.else.ad7877_enable.exit_crit_edge, label %if.then.i

if.else.ad7877_enable.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad7877_enable.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %disabled.i, align 4
  %spi.i = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi.i, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  call void @enable_irq(i32 noundef %11) #9
  br label %ad7877_enable.exit

ad7877_enable.exit:                               ; preds = %if.then.i, %if.else.ad7877_enable.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ad7877_enable.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %count, %ad7877_enable.exit ], [ %count, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_dac_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dac = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dac to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dac, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_dac_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !117
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = trunc i32 %4 to i16
  %conv = and i16 %5, 255
  %dac = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %dac to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %dac, align 2
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 768) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.ad7877_write.exit_crit_edge, label %if.end.i

if.end.ad7877_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad7877_write.exit

if.end.i:                                         ; preds = %if.end
  %10 = shl nuw nsw i16 %conv, 4
  %msg.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i, ptr %msg.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 10
  %15 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 8
  %prev.i2.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %or.i = or i16 %10, -8191
  %command.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or.i, ptr %command.i, align 4
  %xfer.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %command.i, ptr %xfer.i, align 64
  %len.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 2
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %len.i, align 8
  %transfer_list.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.spi_message_add_tail.exit.i_crit_edge

if.end.i.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 8
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 8
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.spi_message_add_tail.exit.i_crit_edge
  %call10.i = call i32 @spi_sync(ptr noundef %8, ptr noundef %msg.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %ad7877_write.exit

ad7877_write.exit:                                ; preds = %spi_message_add_tail.exit.i, %if.end.ad7877_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %ad7877_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ad7877_write.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_gpio4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpio4 = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %gpio4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio4, align 2, !range !115
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_gpio4_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !117
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2 = icmp ne i32 %4, 0
  %gpio4 = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 21
  %frombool = zext i1 %tobool2 to i8
  %5 = ptrtoint ptr %gpio4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %gpio4, align 2
  %spi = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  %gpio3 = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gpio3, align 1, !range !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 768) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.ad7877_write.exit_crit_edge, label %if.end.i

if.end.ad7877_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad7877_write.exit

if.end.i:                                         ; preds = %if.end
  %11 = shl nuw nsw i8 %9, 5
  %shl8 = zext i8 %11 to i16
  %msg.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 10
  %16 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 8
  %prev.i2.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 3, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %or9 = select i1 %tobool2, i16 -3568, i16 -3584
  %or.i = or i16 %or9, %shl8
  %command.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or.i, ptr %command.i, align 4
  %xfer.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %command.i, ptr %xfer.i, align 64
  %len.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 2
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len.i, align 8
  %transfer_list.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.spi_message_add_tail.exit.i_crit_edge

if.end.i.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 8
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 8
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.spi_message_add_tail.exit.i_crit_edge
  %call10.i = call i32 @spi_sync(ptr noundef %7, ptr noundef %msg.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %ad7877_write.exit

ad7877_write.exit:                                ; preds = %spi_message_add_tail.exit.i, %if.end.ad7877_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %ad7877_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ad7877_write.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @ad7877_disable(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7877_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex.i = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %disabled.i = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.ad7877_enable.exit_crit_edge, label %if.then.i

entry.ad7877_enable.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad7877_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %disabled.i, align 4
  %spi.i = getelementptr inbounds %struct.ad7877, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi.i, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %8) #9
  br label %ad7877_enable.exit

ad7877_enable.exit:                               ; preds = %if.then.i, %entry.ad7877_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__param_gpio3, !1, !"__param_gpio3", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ad7877.c", i32 196, i32 1}
!2 = !{ptr @__UNIQUE_ID_gpio3type234, !1, !"__UNIQUE_ID_gpio3type234", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_gpio3235, !4, !"__UNIQUE_ID_gpio3235", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/ad7877.c", i32 197, i32 1}
!5 = !{ptr @__initcall__kmod_ad7877__241_819_ad7877_driver_init6, !6, !"__initcall__kmod_ad7877__241_819_ad7877_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/ad7877.c", i32 819, i32 1}
!7 = !{ptr @__exitcall_ad7877_driver_exit, !6, !"__exitcall_ad7877_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author242, !9, !"__UNIQUE_ID_author242", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/ad7877.c", i32 821, i32 1}
!10 = !{ptr @__UNIQUE_ID_description243, !11, !"__UNIQUE_ID_description243", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/ad7877.c", i32 822, i32 1}
!12 = !{ptr @__UNIQUE_ID_file244, !13, !"__UNIQUE_ID_file244", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/ad7877.c", i32 823, i32 1}
!14 = !{ptr @__UNIQUE_ID_license245, !13, !"__UNIQUE_ID_license245", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias246, !16, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/ad7877.c", i32 824, i32 1}
!17 = !{ptr @gpio3, !18, !"gpio3", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/ad7877.c", i32 195, i32 13}
!19 = !{ptr @__param_str_gpio3, !1, !"__param_str_gpio3", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/ad7877.c", i32 813, i32 11}
!22 = !{ptr @ad7877_driver, !23, !"ad7877_driver", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/ad7877.c", i32 811, i32 26}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/ad7877.c", i32 678, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ad7877_probe.__UNIQUE_ID_ddebug236, !25, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/ad7877.c", i32 683, i32 3}
!31 = !{ptr @ad7877_probe.__UNIQUE_ID_ddebug237, !30, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/ad7877.c", i32 689, i32 3}
!34 = !{ptr @ad7877_probe.__UNIQUE_ID_ddebug238, !33, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/ad7877.c", i32 696, i32 3}
!37 = !{ptr @ad7877_probe.__UNIQUE_ID_ddebug239, !36, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!38 = !{ptr @ad7877_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/ad7877.c", i32 716, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ad7877_probe.__key.8, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/ad7877.c", i32 717, i32 2}
!43 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ad7877_probe.__key.10, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/ad7877.c", i32 718, i32 2}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/ad7877.c", i32 731, i32 39}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/ad7877.c", i32 733, i32 20}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/ad7877.c", i32 760, i32 3}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ad7877_probe._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @ad7877_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/ad7877.c", i32 776, i32 3}
!59 = !{ptr @ad7877_probe.__UNIQUE_ID_ddebug240, !58, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/ad7877.c", i32 394, i32 3}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ad7877_irq._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ad7877_irq._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ad7877_attr_group, !66, !"ad7877_attr_group", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/ad7877.c", i32 615, i32 37}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/ad7877.c", i32 456, i32 1}
!69 = !{ptr @dev_attr_aux3, !68, !"dev_attr_aux3", i1 false, i1 false}
!70 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/ad7877.c", i32 551, i32 8}
!73 = !{ptr @dev_attr_gpio3, !72, !"dev_attr_gpio3", i1 false, i1 false}
!74 = !{ptr @ad7877_attributes, !75, !"ad7877_attributes", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/ad7877.c", i32 584, i32 26}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/ad7877.c", i32 459, i32 1}
!78 = !{ptr @dev_attr_temp1, !77, !"dev_attr_temp1", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/ad7877.c", i32 460, i32 1}
!81 = !{ptr @dev_attr_temp2, !80, !"dev_attr_temp2", i1 false, i1 false}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/ad7877.c", i32 454, i32 1}
!84 = !{ptr @dev_attr_aux1, !83, !"dev_attr_aux1", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/ad7877.c", i32 455, i32 1}
!87 = !{ptr @dev_attr_aux2, !86, !"dev_attr_aux2", i1 false, i1 false}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/ad7877.c", i32 457, i32 1}
!90 = !{ptr @dev_attr_bat1, !89, !"dev_attr_bat1", i1 false, i1 false}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/ad7877.c", i32 458, i32 1}
!93 = !{ptr @dev_attr_bat2, !92, !"dev_attr_bat2", i1 false, i1 false}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/ad7877.c", i32 490, i32 8}
!96 = !{ptr @dev_attr_disable, !95, !"dev_attr_disable", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/ad7877.c", i32 520, i32 8}
!99 = !{ptr @dev_attr_dac, !98, !"dev_attr_dac", i1 false, i1 false}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/ad7877.c", i32 582, i32 8}
!102 = !{ptr @dev_attr_gpio4, !101, !"dev_attr_gpio4", i1 false, i1 false}
!103 = !{ptr @ad7877_pm, !104, !"ad7877_pm", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/ad7877.c", i32 809, i32 8}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2148295569, i64 2148295574, i64 2148295587, i64 2148295631, i64 2148295665, i64 2148295686}
!115 = !{i8 0, i8 2}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{!"auto-init"}
