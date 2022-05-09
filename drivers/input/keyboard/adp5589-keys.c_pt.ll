; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/adp5589-keys.c_pt.bc'
source_filename = "../drivers/input/keyboard/adp5589-keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adp_constants = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adp5589_kpad = type { ptr, ptr, ptr, [88 x i16], ptr, i16, i32, i8, i8, [19 x i8], %struct.gpio_chip, %struct.mutex, [3 x i8], [3 x i8] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.87, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }
%struct.adp5589_kpad_platform_data = type { i32, ptr, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, ptr, i16, ptr }
%struct.adp5589_gpi_map = type { i16, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_adp5589_keys__288_1061_adp5589_driver_init6 = internal global ptr @adp5589_driver_init, section ".initcall6.init", align 4
@adp5589_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adp5589_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp5589_dev_pm_ops, ptr null, ptr null }, ptr @adp5589_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adp5589_driver_exit = internal global ptr @adp5589_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [54 x i8] c"adp5589_keys.file=drivers/input/keyboard/adp5589-keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [25 x i8] c"adp5589_keys.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [71 x i8] c"adp5589_keys.author=Michael Hennerich <hennerich@blackfin.uclinux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [55 x i8] c"adp5589_keys.description=ADP5589/ADP5585 Keypad driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5589_keys\00", [19 x i8] zeroinitializer }, align 32
@adp5589_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adp5589_suspend, ptr @adp5589_resume, ptr @adp5589_suspend, ptr @adp5589_resume, ptr @adp5589_suspend, ptr @adp5589_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adp5589_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adp5589-keys\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adp5585-keys\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"adp5585-02-keys\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@adp5589_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 956, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBUS Byte Data not Supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp5589_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/keyboard/adp5589-keys.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp5589_probe._entry_ptr = internal global ptr @adp5589_probe._entry, section ".printk_index", align 4
@adp5589_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 961, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data?\0A\00", [45 x i8] zeroinitializer }, align 32
@adp5589_probe._entry_ptr.8 = internal global ptr @adp5589_probe._entry.6, section ".printk_index", align 4
@const_adp5585 = internal constant { %struct.adp_constants, [36 x i8] } { %struct.adp_constants { i8 11, i8 30, i8 37, i8 42, i8 43, i8 37, i8 47, i8 11, i8 5, i8 4, i8 63, i8 31, i8 6, i8 10, ptr @adp5585_bank, ptr @adp5585_bit, ptr @adp5585_reg }, [36 x i8] zeroinitializer }, align 32
@const_adp5589 = internal constant { %struct.adp_constants, [36 x i8] } { %struct.adp_constants { i8 19, i8 88, i8 97, i8 104, i8 105, i8 97, i8 115, i8 19, i8 7, i8 10, i8 -1, i8 -1, i8 8, i8 12, ptr @adp5589_bank, ptr @adp5589_bit, ptr @adp5589_reg }, [36 x i8] zeroinitializer }, align 32
@adp5589_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1015, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Rev.%d keypad, irq %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adp5589_probe._entry_ptr.12 = internal global ptr @adp5589_probe._entry.9, section ".printk_index", align 4
@adp5585_reg_lut = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\16\00\17\18\19\1A\00\1B\1C\00\1D\1E\00\1F \00!\22\00#$\00%&\00'(\00\00\00\00\00\00)*+,-./0123\004\0056789\00:;<", [49 x i8] zeroinitializer }, align 32
@adp5589_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Read Error\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5589_read\00", [19 x i8] zeroinitializer }, align 32
@adp5589_read._entry_ptr = internal global ptr @adp5589_read._entry, section ".printk_index", align 4
@adp5589_keypad_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no rows, cols or keymap from pdata\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adp5589_keypad_add\00", [45 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr = internal global ptr @adp5589_keypad_add._entry, section ".printk_index", align 4
@adp5589_keypad_add._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 841, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid keymapsize\0A\00", [44 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr.19 = internal global ptr @adp5589_keypad_add._entry.17, section ".printk_index", align 4
@adp5589_keypad_add._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid gpimap from pdata\0A\00", [37 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr.22 = internal global ptr @adp5589_keypad_add._entry.20, section ".printk_index", align 4
@adp5589_keypad_add._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 851, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid gpimapsize\0A\00", [44 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr.25 = internal global ptr @adp5589_keypad_add._entry.23, section ".printk_index", align 4
@adp5589_keypad_add._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 860, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid gpi pin data\0A\00", [42 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr.28 = internal global ptr @adp5589_keypad_add._entry.26, section ".printk_index", align 4
@adp5589_keypad_add._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.3, i32 866, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid gpi row/col data\0A\00", [38 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr.31 = internal global ptr @adp5589_keypad_add._entry.29, section ".printk_index", align 4
@adp5589_keypad_add._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no IRQ?\0A\00", [23 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr.34 = internal global ptr @adp5589_keypad_add._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adp5589-keys/input0\00", [44 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.16, ptr @.str.3, i32 921, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr.38 = internal global ptr @adp5589_keypad_add._entry.36, section ".printk_index", align 4
@adp5589_keypad_add._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.16, ptr @.str.3, i32 930, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@adp5589_keypad_add._entry_ptr.41 = internal global ptr @adp5589_keypad_add._entry.39, section ".printk_index", align 4
@adp5589_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 591, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Event Overflow Error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adp5589_irq\00", [20 x i8] zeroinitializer }, align 32
@adp5589_irq._entry_ptr = internal global ptr @adp5589_irq._entry, section ".printk_index", align 4
@adp5589_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 679, ptr @.str.46, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Conflicting pull resistor config\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp5589_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adp5589_setup._entry_ptr = internal global ptr @adp5589_setup._entry, section ".printk_index", align 4
@adp5589_setup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Write Error\0A\00", [19 x i8] zeroinitializer }, align 32
@adp5589_setup._entry_ptr.49 = internal global ptr @adp5589_setup._entry.47, section ".printk_index", align 4
@adp5589_get_evcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RESET/UNLOCK key not in keycode map\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adp5589_get_evcode\00", [45 x i8] zeroinitializer }, align 32
@adp5589_get_evcode._entry_ptr = internal global ptr @adp5589_get_evcode._entry, section ".printk_index", align 4
@adp5589_report_switch_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 812, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Can't read GPIO_DAT_STAT switch %d, default to OFF\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adp5589_report_switch_state\00", [36 x i8] zeroinitializer }, align 32
@adp5589_report_switch_state._entry_ptr = internal global ptr @adp5589_report_switch_state._entry, section ".printk_index", align 4
@adp5589_gpio_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 512, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No unused gpios left to export\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adp5589_gpio_add\00", [47 x i8] zeroinitializer }, align 32
@adp5589_gpio_add._entry_ptr = internal global ptr @adp5589_gpio_add._entry, section ".printk_index", align 4
@adp5589_gpio_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&kpad->gpio_lock\00", [47 x i8] zeroinitializer }, align 32
@adp5589_gpio_add.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adp5589_gpio_add.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"adp5589_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1052, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1054, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"adp5589_dev_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1041, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"adp5589_id\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1043, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 956, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 961, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"const_adp5585\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 353, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"const_adp5589\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 272, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1015, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"adp5585_reg_lut\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 305, i32 28 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 378, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 836, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 841, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 846, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 851, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 860, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 866, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 872, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 883, i32 16 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 921, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 930, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 591, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 679, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 777, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 614, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 810, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 512, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 526, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.244 = private constant [41 x i8] c"../drivers/input/keyboard/adp5589-keys.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 528, i32 10 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_adp5589_driver_exit, ptr @__initcall__kmod_adp5589_keys__288_1061_adp5589_driver_init6, ptr @adp5589_driver_exit, ptr @adp5589_get_evcode._entry, ptr @adp5589_get_evcode._entry_ptr, ptr @adp5589_gpio_add._entry, ptr @adp5589_gpio_add._entry_ptr, ptr @adp5589_irq._entry, ptr @adp5589_irq._entry_ptr, ptr @adp5589_keypad_add._entry, ptr @adp5589_keypad_add._entry.17, ptr @adp5589_keypad_add._entry.20, ptr @adp5589_keypad_add._entry.23, ptr @adp5589_keypad_add._entry.26, ptr @adp5589_keypad_add._entry.29, ptr @adp5589_keypad_add._entry.32, ptr @adp5589_keypad_add._entry.36, ptr @adp5589_keypad_add._entry.39, ptr @adp5589_keypad_add._entry_ptr, ptr @adp5589_keypad_add._entry_ptr.19, ptr @adp5589_keypad_add._entry_ptr.22, ptr @adp5589_keypad_add._entry_ptr.25, ptr @adp5589_keypad_add._entry_ptr.28, ptr @adp5589_keypad_add._entry_ptr.31, ptr @adp5589_keypad_add._entry_ptr.34, ptr @adp5589_keypad_add._entry_ptr.38, ptr @adp5589_keypad_add._entry_ptr.41, ptr @adp5589_probe._entry, ptr @adp5589_probe._entry.6, ptr @adp5589_probe._entry.9, ptr @adp5589_probe._entry_ptr, ptr @adp5589_probe._entry_ptr.12, ptr @adp5589_probe._entry_ptr.8, ptr @adp5589_read._entry, ptr @adp5589_read._entry_ptr, ptr @adp5589_report_switch_state._entry, ptr @adp5589_report_switch_state._entry_ptr, ptr @adp5589_setup._entry, ptr @adp5589_setup._entry.47, ptr @adp5589_setup._entry_ptr, ptr @adp5589_setup._entry_ptr.49, ptr @adp5589_driver, ptr @.str, ptr @adp5589_dev_pm_ops, ptr @adp5589_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @const_adp5585, ptr @const_adp5589, ptr @.str.10, ptr @.str.11, ptr @adp5585_reg_lut, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @adp5589_gpio_add.__key, ptr @.str.56, ptr @adp5589_gpio_add.lock_key, ptr @adp5589_gpio_add.request_key], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @const_adp5585 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @const_adp5589 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5585_reg_lut to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_keypad_add._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_setup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_get_evcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_report_switch_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_gpio_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_gpio_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_gpio_add.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5589_gpio_add.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5589_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adp5589_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp5589_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @adp5589_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5589_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %pin_used.i.i = alloca [19 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 672, i32 noundef 3520) #6
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end14.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end14.sw.bb16_crit_edge
    i32 0, label %sw.bb17
  ]

if.end14.sw.bb16_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %support_row5 = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %support_row5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %support_row5, align 1
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb, %if.end14.sw.bb16_crit_edge
  %is_adp5585 = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %is_adp5585 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_adp5585, align 4
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %support_row518 = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %support_row518 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %support_row518, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17, %sw.bb16
  %const_adp5589.sink = phi ptr [ @const_adp5589, %sw.bb17 ], [ @const_adp5585, %sw.bb16 ]
  %var19 = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %var19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %const_adp5589.sink, ptr %var19, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end14.sw.epilog_crit_edge
  %call.i89 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @adp5589_clear_config, ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i, label %if.end24, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %var.i.i = getelementptr inbounds %struct.adp5589_kpad, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %var.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %var.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.adp_constants, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i.i, align 4
  %call1.i.i = tail call zeroext i8 %21(i8 noundef zeroext 77) #6
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %call1.i.i, i8 noundef zeroext 0) #6
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %call.i90 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %adp5589_read.exit.thread, label %if.end27

adp5589_read.exit.thread:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %and = and i32 %call.i90, 15
  %keymapsize = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %keymapsize to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %keymapsize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool29.not = icmp eq i16 %23, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %dev.i92 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platform_data.i.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %var.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %var.i, align 4
  %row_mask.i = getelementptr inbounds %struct.adp_constants, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %row_mask.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %row_mask.i, align 2
  %conv.i93 = zext i8 %33 to i32
  %and.i94 = and i32 %29, %conv.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i95 = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i95, label %if.then30.do.end.i96_crit_edge, label %land.lhs.true.i

if.then30.do.end.i96_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i96

land.lhs.true.i:                                  ; preds = %if.then30
  %col_shift.i = getelementptr inbounds %struct.adp_constants, ptr %31, i32 0, i32 12
  %34 = ptrtoint ptr %col_shift.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %col_shift.i, align 4
  %conv4.i = zext i8 %35 to i32
  %shr.i = lshr i32 %29, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool5.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end.i96_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.do.end.i96_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i96

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %keymap.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %27, i32 0, i32 1
  %36 = ptrtoint ptr %keymap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %keymap.i, align 4
  %tobool6.not.i = icmp eq ptr %37, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i.do.end.i96_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i96_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i96

do.end.i96:                                       ; preds = %lor.lhs.false.i.do.end.i96_crit_edge, %land.lhs.true.i.do.end.i96_crit_edge, %if.then30.do.end.i96_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %keymapsize.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %27, i32 0, i32 2
  %38 = ptrtoint ptr %keymapsize.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %keymapsize.i, align 4
  %keymapsize10.i = getelementptr inbounds %struct.adp_constants, ptr %31, i32 0, i32 1
  %40 = ptrtoint ptr %keymapsize10.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %keymapsize10.i, align 1
  %42 = zext i8 %41 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %42)
  %cmp.not.i = icmp eq i16 %39, %42
  br i1 %cmp.not.i, label %if.end18.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end18.i:                                       ; preds = %if.end.i
  %gpimap.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %27, i32 0, i32 20
  %43 = ptrtoint ptr %gpimap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpimap.i, align 4
  %tobool19.not.i = icmp eq ptr %44, null
  br i1 %tobool19.not.i, label %land.lhs.true20.i, label %if.end18.i.if.end28.i_crit_edge

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

land.lhs.true20.i:                                ; preds = %if.end18.i
  %gpimapsize.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %27, i32 0, i32 21
  %45 = ptrtoint ptr %gpimapsize.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %gpimapsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool22.not.i = icmp eq i16 %46, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.if.end28.i_crit_edge, label %do.end26.i

land.lhs.true20.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

do.end26.i:                                       ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end28.i:                                       ; preds = %land.lhs.true20.i.if.end28.i_crit_edge, %if.end18.i.if.end28.i_crit_edge
  %gpimapsize29.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %27, i32 0, i32 21
  %47 = ptrtoint ptr %gpimapsize29.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %gpimapsize29.i, align 4
  %gpimapsize_max.i = getelementptr inbounds %struct.adp_constants, ptr %31, i32 0, i32 7
  %49 = ptrtoint ptr %gpimapsize_max.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %gpimapsize_max.i, align 1
  %51 = zext i8 %50 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %51)
  %cmp33.i = icmp ugt i16 %48, %51
  br i1 %cmp33.i, label %do.end38.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end28.i
  %conv42.i = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp43277.not.i = icmp eq i16 %48, 0
  br i1 %cmp43277.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %gpi_pin_base.i = getelementptr inbounds %struct.adp_constants, ptr %31, i32 0, i32 5
  %52 = ptrtoint ptr %gpi_pin_base.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %gpi_pin_base.i, align 1
  %54 = zext i8 %53 to i16
  %gpi_pin_end.i = getelementptr inbounds %struct.adp_constants, ptr %31, i32 0, i32 6
  %gpi_pin_row_base.i = getelementptr inbounds %struct.adp_constants, ptr %31, i32 0, i32 2
  br label %for.body.i

do.end38.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.24) #9
  br label %cleanup

for.cond.i:                                       ; preds = %if.end63.i
  %inc.i = add nuw nsw i32 %i.0278.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv42.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0278.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adp5589_gpi_map, ptr %44, i32 %i.0278.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.i, align 2
  %conv47.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %54)
  %cmp50.i = icmp ult i16 %56, %54
  br i1 %cmp50.i, label %for.body.i.do.end61.i_crit_edge, label %lor.lhs.false52.i

for.body.i.do.end61.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61.i

lor.lhs.false52.i:                                ; preds = %for.body.i
  %57 = ptrtoint ptr %gpi_pin_end.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %gpi_pin_end.i, align 2
  %59 = zext i8 %58 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %59)
  %cmp56.i = icmp ugt i16 %56, %59
  br i1 %cmp56.i, label %lor.lhs.false52.i.do.end61.i_crit_edge, label %if.end63.i

lor.lhs.false52.i.do.end61.i_crit_edge:           ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61.i

do.end61.i:                                       ; preds = %lor.lhs.false52.i.do.end61.i_crit_edge, %for.body.i.do.end61.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end63.i:                                       ; preds = %lor.lhs.false52.i
  %60 = ptrtoint ptr %gpi_pin_row_base.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %gpi_pin_row_base.i, align 2
  %conv66.i = zext i8 %61 to i32
  %sub.i = sub nsw i32 %conv47.i, %conv66.i
  %shl.i = shl nuw i32 1, %sub.i
  %and68.i = and i32 %shl.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %for.cond.i, label %do.end73.i

do.end73.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.30) #9
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 6
  %62 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool76.not.i = icmp eq i32 %63, 0
  br i1 %tobool76.not.i, label %do.end80.i, label %if.end82.i

do.end80.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end82.i:                                       ; preds = %for.end.i
  %call84.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i92) #6
  %tobool85.not.i = icmp eq ptr %call84.i, null
  br i1 %tobool85.not.i, label %if.end82.i.cleanup_crit_edge, label %if.end87.i

if.end82.i.cleanup_crit_edge:                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end87.i:                                       ; preds = %if.end82.i
  %input88.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 1
  %64 = ptrtoint ptr %input88.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call84.i, ptr %input88.i, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 2
  %65 = ptrtoint ptr %call84.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %name.i, ptr %call84.i, align 8
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 1
  %66 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.35, ptr %phys.i, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 40, i32 1
  %67 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %dev.i92, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 40, i32 8
  %68 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 3
  %69 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 24, ptr %id.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %vendor.i, align 2
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %product.i, align 4
  %conv94.i = trunc i32 %and to i16
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 3, i32 3
  %72 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv94.i, ptr %version.i, align 2
  %keycodesize.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 16
  %73 = ptrtoint ptr %keycodesize.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %keycodesize.i, align 8
  %74 = ptrtoint ptr %keymapsize.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %keymapsize.i, align 4
  %conv97.i = zext i16 %75 to i32
  %keycodemax.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 15
  %76 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv97.i, ptr %keycodemax.i, align 4
  %keycode.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 3
  %keycode99.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 17
  %77 = ptrtoint ptr %keycode99.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %keycode.i, ptr %keycode99.i, align 4
  %78 = ptrtoint ptr %keymap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %keymap.i, align 4
  %80 = load i16, ptr %keymapsize.i, align 4
  %conv104.i = zext i16 %80 to i32
  %mul.i = shl nuw nsw i32 %conv104.i, 1
  %81 = call ptr @memcpy(ptr %keycode.i, ptr %79, i32 %mul.i)
  %82 = ptrtoint ptr %gpimap.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %gpimap.i, align 4
  %gpimap107.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 4
  %84 = ptrtoint ptr %gpimap107.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %gpimap107.i, align 4
  %85 = ptrtoint ptr %gpimapsize29.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %gpimapsize29.i, align 4
  %gpimapsize109.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 5
  %87 = ptrtoint ptr %gpimapsize109.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %gpimapsize109.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 5
  %88 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %89, 2
  store i32 %or.i.i, ptr %evbit.i, align 4
  %repeat.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %27, i32 0, i32 3
  %90 = ptrtoint ptr %repeat.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %repeat.i, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool111.not.i = icmp eq i8 %91, 0
  br i1 %tobool111.not.i, label %if.end87.i.if.end115.i_crit_edge, label %if.then112.i

if.end87.i.if.end115.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115.i

if.then112.i:                                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i269.i = or i32 %89, 1048578
  %92 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or.i269.i, ptr %evbit.i, align 4
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then112.i, %if.end87.i.if.end115.i_crit_edge
  %93 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %keycodemax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp118279.not.i = icmp eq i32 %94, 0
  br i1 %cmp118279.not.i, label %if.end115.i.for.end134.i_crit_edge, label %for.body120.lr.ph.i

if.end115.i.for.end134.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end134.i

for.body120.lr.ph.i:                              ; preds = %if.end115.i
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 6
  br label %for.body120.i

for.body120.i:                                    ; preds = %for.inc132.i.for.body120.i_crit_edge, %for.body120.lr.ph.i
  %i.1280.i = phi i32 [ 0, %for.body120.lr.ph.i ], [ %inc133.i, %for.inc132.i.for.body120.i_crit_edge ]
  %arrayidx122.i = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 3, i32 %i.1280.i
  %95 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx122.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %96)
  %cmp124.i = icmp ult i16 %96, 768
  br i1 %cmp124.i, label %if.then126.i, label %for.body120.i.for.inc132.i_crit_edge

for.body120.i.for.inc132.i_crit_edge:             ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc132.i

if.then126.i:                                     ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv123.i = zext i16 %96 to i32
  %rem.i.i = and i32 %conv123.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv123.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %keybit.i, i32 %div2.i.i
  %97 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i.i, align 4
  %or.i270.i = or i32 %98, %shl.i.i
  store i32 %or.i270.i, ptr %add.ptr.i.i, align 4
  br label %for.inc132.i

for.inc132.i:                                     ; preds = %if.then126.i, %for.body120.i.for.inc132.i_crit_edge
  %inc133.i = add nuw i32 %i.1280.i, 1
  %99 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %keycodemax.i, align 4
  %cmp118.i = icmp ult i32 %inc133.i, %100
  br i1 %cmp118.i, label %for.inc132.i.for.body120.i_crit_edge, label %for.inc132.i.for.end134.i_crit_edge

for.inc132.i.for.end134.i_crit_edge:              ; preds = %for.inc132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end134.i

for.inc132.i.for.body120.i_crit_edge:             ; preds = %for.inc132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body120.i

for.end134.i:                                     ; preds = %for.inc132.i.for.end134.i_crit_edge, %if.end115.i.for.end134.i_crit_edge
  %keybit135.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 6
  %101 = ptrtoint ptr %keybit135.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %keybit135.i, align 4
  %and.i.i = and i32 %102, -2
  store i32 %and.i.i, ptr %keybit135.i, align 4
  %103 = ptrtoint ptr %gpimapsize109.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %gpimapsize109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool138.not.i = icmp eq i16 %104, 0
  br i1 %tobool138.not.i, label %for.end134.i.for.end155.i_crit_edge, label %if.end142.i

for.end134.i.for.end155.i_crit_edge:              ; preds = %for.end134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end155.i

if.end142.i:                                      ; preds = %for.end134.i
  %105 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %evbit.i, align 4
  %or.i271.i = or i32 %106, 32
  store i32 %or.i271.i, ptr %evbit.i, align 4
  %107 = ptrtoint ptr %gpimapsize109.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %.pr.i = load i16, ptr %gpimapsize109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp146282.not.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp146282.not.i, label %if.end142.i.for.end155.i_crit_edge, label %for.body148.lr.ph.i

if.end142.i.for.end155.i_crit_edge:               ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end155.i

for.body148.lr.ph.i:                              ; preds = %if.end142.i
  %swbit.i = getelementptr inbounds %struct.input_dev, ptr %call84.i, i32 0, i32 13
  br label %for.body148.i

for.body148.i:                                    ; preds = %for.body148.i.for.body148.i_crit_edge, %for.body148.lr.ph.i
  %i.2283.i = phi i32 [ 0, %for.body148.lr.ph.i ], [ %inc154.i, %for.body148.i.for.body148.i_crit_edge ]
  %108 = ptrtoint ptr %gpimap107.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %gpimap107.i, align 4
  %sw_evt.i = getelementptr %struct.adp5589_gpi_map, ptr %109, i32 %i.2283.i, i32 1
  %110 = ptrtoint ptr %sw_evt.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %sw_evt.i, align 2
  %conv151.i = zext i16 %111 to i32
  %rem.i272.i = and i32 %conv151.i, 31
  %shl.i273.i = shl nuw i32 1, %rem.i272.i
  %div2.i274.i = lshr i32 %conv151.i, 5
  %add.ptr.i275.i = getelementptr i32, ptr %swbit.i, i32 %div2.i274.i
  %112 = ptrtoint ptr %add.ptr.i275.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i275.i, align 4
  %or.i276.i = or i32 %shl.i273.i, %113
  store i32 %or.i276.i, ptr %add.ptr.i275.i, align 4
  %inc154.i = add nuw nsw i32 %i.2283.i, 1
  %114 = ptrtoint ptr %gpimapsize109.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %gpimapsize109.i, align 4
  %conv145.i = zext i16 %115 to i32
  %cmp146.i = icmp ult i32 %inc154.i, %conv145.i
  br i1 %cmp146.i, label %for.body148.i.for.body148.i_crit_edge, label %for.body148.i.for.end155.i_crit_edge

for.body148.i.for.end155.i_crit_edge:             ; preds = %for.body148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end155.i

for.body148.i.for.body148.i_crit_edge:            ; preds = %for.body148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body148.i

for.end155.i:                                     ; preds = %for.body148.i.for.end155.i_crit_edge, %if.end142.i.for.end155.i_crit_edge, %for.end134.i.for.end155.i_crit_edge
  %call156.i = tail call i32 @input_register_device(ptr noundef nonnull %call84.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %if.end163.i, label %do.end161.i

do.end161.i:                                      ; preds = %for.end155.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.37) #9
  br label %cleanup

if.end163.i:                                      ; preds = %for.end155.i
  %116 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %irq.i, align 4
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 6
  %118 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %driver.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %call168.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i92, i32 noundef %117, ptr noundef null, ptr noundef nonnull @adp5589_irq, i32 noundef 8194, ptr noundef %121, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i)
  %tobool169.not.i = icmp eq i32 %call168.i, 0
  br i1 %tobool169.not.i, label %if.end163.i.if.end35_crit_edge, label %do.end173.i

if.end163.i.if.end35_crit_edge:                   ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end173.i:                                      ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.40, i32 noundef %123) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end163.i.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i, align 4
  %dev.i97 = getelementptr inbounds %struct.i2c_client, ptr %125, i32 0, i32 4
  %platform_data.i.i98 = getelementptr inbounds %struct.i2c_client, ptr %125, i32 0, i32 4, i32 7
  %126 = ptrtoint ptr %platform_data.i.i98 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %platform_data.i.i98, align 8
  %var.i99 = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 2
  %128 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %var.i99, align 4
  %reg2.i = getelementptr inbounds %struct.adp_constants, ptr %129, i32 0, i32 16
  %130 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg2.i, align 4
  %call3.i = tail call zeroext i8 %131(i8 noundef zeroext 73) #6
  %132 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %127, align 4
  %134 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %var.i99, align 4
  %row_mask.i100 = getelementptr inbounds %struct.adp_constants, ptr %135, i32 0, i32 10
  %136 = ptrtoint ptr %row_mask.i100 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %row_mask.i100, align 2
  %138 = trunc i32 %133 to i8
  %conv5.i = and i8 %137, %138
  %call.i.i101 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call3.i, i8 noundef zeroext %conv5.i) #6
  %call7.i = tail call zeroext i8 %131(i8 noundef zeroext 74) #6
  %139 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %127, align 4
  %141 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %var.i99, align 4
  %col_shift.i102 = getelementptr inbounds %struct.adp_constants, ptr %142, i32 0, i32 12
  %143 = ptrtoint ptr %col_shift.i102 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %col_shift.i102, align 4
  %conv10.i = zext i8 %144 to i32
  %shr.i103 = lshr i32 %140, %conv10.i
  %col_mask.i = getelementptr inbounds %struct.adp_constants, ptr %142, i32 0, i32 11
  %145 = ptrtoint ptr %col_mask.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %col_mask.i, align 1
  %147 = trunc i32 %shr.i103 to i8
  %conv14.i = and i8 %146, %147
  %call.i544.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call7.i, i8 noundef zeroext %conv14.i) #6
  %or.i = or i32 %call.i544.i, %call.i.i101
  %is_adp5585.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 7
  %148 = ptrtoint ptr %is_adp5585.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %is_adp5585.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i104 = icmp eq i8 %149, 0
  br i1 %tobool.not.i104, label %if.end.i106, label %if.end35.for.body.i111.preheader_crit_edge

if.end35.for.body.i111.preheader_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i111.preheader

for.body.i111.preheader:                          ; preds = %if.then26.i, %land.lhs.true.i107.for.body.i111.preheader_crit_edge, %if.end.i106.for.body.i111.preheader_crit_edge, %if.end35.for.body.i111.preheader_crit_edge
  %ret.2657.i.ph = phi i32 [ %or.i, %if.end35.for.body.i111.preheader_crit_edge ], [ %or21.i, %land.lhs.true.i107.for.body.i111.preheader_crit_edge ], [ %or37.i, %if.then26.i ], [ %or21.i, %if.end.i106.for.body.i111.preheader_crit_edge ]
  br label %for.body.i111

if.end.i106:                                      ; preds = %if.end35
  %150 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %127, align 4
  %shr17.i = lshr i32 %151, 16
  %conv19.i = trunc i32 %shr17.i to i8
  %call.i545.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 75, i8 noundef zeroext %conv19.i) #6
  %or21.i = or i32 %call.i545.i, %or.i
  %152 = ptrtoint ptr %is_adp5585.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %.pr.i105 = load i8, ptr %is_adp5585.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i105)
  %tobool23.not.i = icmp eq i8 %.pr.i105, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i107, label %if.end.i106.for.body.i111.preheader_crit_edge

if.end.i106.for.body.i111.preheader_crit_edge:    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i111.preheader

land.lhs.true.i107:                               ; preds = %if.end.i106
  %en_keylock.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 4
  %153 = ptrtoint ptr %en_keylock.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %en_keylock.i, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool24.not.i = icmp eq i8 %154, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i107.for.body.i111.preheader_crit_edge, label %if.then26.i

land.lhs.true.i107.for.body.i111.preheader_crit_edge: ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i111.preheader

if.then26.i:                                      ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #8
  %unlock_key1.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 5
  %155 = ptrtoint ptr %unlock_key1.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %unlock_key1.i, align 4
  %call.i546.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 51, i8 noundef zeroext %156) #6
  %or28.i = or i32 %call.i546.i, %or21.i
  %unlock_key2.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 6
  %157 = ptrtoint ptr %unlock_key2.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %unlock_key2.i, align 1
  %call.i547.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 52, i8 noundef zeroext %158) #6
  %or30.i = or i32 %or28.i, %call.i547.i
  %unlock_timer.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 7
  %159 = ptrtoint ptr %unlock_timer.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %unlock_timer.i, align 2
  %161 = and i8 %160, 3
  %call.i548.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 54, i8 noundef zeroext %161) #6
  %or35.i = or i32 %or30.i, %call.i548.i
  %call.i549.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 55, i8 noundef zeroext 1) #6
  %or37.i = or i32 %or35.i, %call.i549.i
  br label %for.body.i111.preheader

for.cond43.preheader.i:                           ; preds = %adp5589_read.exit.i
  %gpimapsize.i108 = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 21
  %162 = ptrtoint ptr %gpimapsize.i108 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %gpimapsize.i108, align 4
  %conv44.i = zext i16 %163 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %cmp45658.not.i = icmp eq i16 %163, 0
  br i1 %cmp45658.not.i, label %for.cond43.preheader.i.if.end104.i_crit_edge, label %for.body47.lr.ph.i

for.cond43.preheader.i.if.end104.i_crit_edge:     ; preds = %for.cond43.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.i

for.body47.lr.ph.i:                               ; preds = %for.cond43.preheader.i
  %gpimap.i109 = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 20
  %164 = ptrtoint ptr %gpimap.i109 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %gpimap.i109, align 4
  %166 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %var.i99, align 4
  %gpi_pin_row_end.i = getelementptr inbounds %struct.adp_constants, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %gpi_pin_row_end.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %gpi_pin_row_end.i, align 1
  %170 = zext i8 %169 to i16
  %gpi_pin_row_base.i110 = getelementptr inbounds %struct.adp_constants, ptr %167, i32 0, i32 2
  %gpi_pin_col_base.i = getelementptr inbounds %struct.adp_constants, ptr %167, i32 0, i32 4
  br label %for.body47.i

for.body.i111:                                    ; preds = %adp5589_read.exit.i.for.body.i111_crit_edge, %for.body.i111.preheader
  %ret.2657.i = phi i32 [ %or42.i, %adp5589_read.exit.i.for.body.i111_crit_edge ], [ %ret.2657.i.ph, %for.body.i111.preheader ]
  %i.0656.i = phi i32 [ %inc.i112, %adp5589_read.exit.i.for.body.i111_crit_edge ], [ 0, %for.body.i111.preheader ]
  %171 = trunc i32 %i.0656.i to i8
  %conv40.i = add i8 %171, 3
  %call.i550.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %125, i8 noundef zeroext %conv40.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i550.i)
  %cmp.i.i = icmp slt i32 %call.i550.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i111.adp5589_read.exit.i_crit_edge

for.body.i111.adp5589_read.exit.i_crit_edge:      ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit.i

do.end.i.i:                                       ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i97, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit.i

adp5589_read.exit.i:                              ; preds = %do.end.i.i, %for.body.i111.adp5589_read.exit.i_crit_edge
  %or42.i = or i32 %call.i550.i, %ret.2657.i
  %inc.i112 = add nuw nsw i32 %i.0656.i, 1
  %exitcond.not.i113 = icmp eq i32 %inc.i112, 16
  br i1 %exitcond.not.i113, label %for.cond43.preheader.i, label %adp5589_read.exit.i.for.body.i111_crit_edge

adp5589_read.exit.i.for.body.i111_crit_edge:      ; preds = %adp5589_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i111

for.body47.i:                                     ; preds = %if.end84.i.for.body47.i_crit_edge, %for.body47.lr.ph.i
  %i.1662.i = phi i32 [ 0, %for.body47.lr.ph.i ], [ %inc86.i, %if.end84.i.for.body47.i_crit_edge ]
  %evt_mode3.0661.i = phi i8 [ 0, %for.body47.lr.ph.i ], [ %evt_mode3.1.i, %if.end84.i.for.body47.i_crit_edge ]
  %evt_mode2.0660.i = phi i8 [ 0, %for.body47.lr.ph.i ], [ %evt_mode2.1.i, %if.end84.i.for.body47.i_crit_edge ]
  %evt_mode1.0659.i = phi i8 [ 0, %for.body47.lr.ph.i ], [ %evt_mode1.1.i, %if.end84.i.for.body47.i_crit_edge ]
  %arrayidx.i114 = getelementptr %struct.adp5589_gpi_map, ptr %165, i32 %i.1662.i
  %172 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %arrayidx.i114, align 2
  %conv49.i = zext i16 %173 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %173, i16 %170)
  %cmp52.not.i = icmp ugt i16 %173, %170
  br i1 %cmp52.not.i, label %if.else.i, label %if.then54.i

if.then54.i:                                      ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  %174 = ptrtoint ptr %gpi_pin_row_base.i110 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %gpi_pin_row_base.i110, align 2
  %conv57.i = zext i8 %175 to i32
  %sub.i115 = sub nsw i32 %conv49.i, %conv57.i
  %shl.i116 = shl nuw i32 1, %sub.i115
  %176 = trunc i32 %shl.i116 to i8
  %conv60.i = or i8 %evt_mode1.0659.i, %176
  br label %if.end84.i

if.else.i:                                        ; preds = %for.body47.i
  %177 = ptrtoint ptr %gpi_pin_col_base.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %gpi_pin_col_base.i, align 4
  %conv63.i = zext i8 %178 to i32
  %sub64.i = sub nsw i32 %conv49.i, %conv63.i
  %shl65.i = shl nuw i32 1, %sub64.i
  %179 = trunc i32 %shl65.i to i8
  %conv69.i = or i8 %evt_mode2.0660.i, %179
  %180 = ptrtoint ptr %is_adp5585.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %is_adp5585.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool71.not.i = icmp eq i8 %181, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.else.i.if.end84.i_crit_edge

if.else.i.if.end84.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

if.then72.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr79.i = lshr i32 %shl65.i, 8
  %182 = trunc i32 %shr79.i to i8
  %conv82.i = or i8 %evt_mode3.0661.i, %182
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then72.i, %if.else.i.if.end84.i_crit_edge, %if.then54.i
  %evt_mode1.1.i = phi i8 [ %conv60.i, %if.then54.i ], [ %evt_mode1.0659.i, %if.else.i.if.end84.i_crit_edge ], [ %evt_mode1.0659.i, %if.then72.i ]
  %evt_mode2.1.i = phi i8 [ %evt_mode2.0660.i, %if.then54.i ], [ %conv69.i, %if.else.i.if.end84.i_crit_edge ], [ %conv69.i, %if.then72.i ]
  %evt_mode3.1.i = phi i8 [ %evt_mode3.0661.i, %if.then54.i ], [ %evt_mode3.0661.i, %if.else.i.if.end84.i_crit_edge ], [ %conv82.i, %if.then72.i ]
  %inc86.i = add nuw nsw i32 %i.1662.i, 1
  %exitcond685.not.i = icmp eq i32 %inc86.i, %conv44.i
  br i1 %exitcond685.not.i, label %if.then90.i, label %if.end84.i.for.body47.i_crit_edge

if.end84.i.for.body47.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body47.i

if.then90.i:                                      ; preds = %if.end84.i
  %call91.i = tail call zeroext i8 %131(i8 noundef zeroext 33) #6
  %call.i551.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call91.i, i8 noundef zeroext %evt_mode1.1.i) #6
  %or93.i = or i32 %call.i551.i, %or42.i
  %call94.i = tail call zeroext i8 %131(i8 noundef zeroext 34) #6
  %call.i552.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call94.i, i8 noundef zeroext %evt_mode2.1.i) #6
  %or96.i = or i32 %or93.i, %call.i552.i
  %183 = ptrtoint ptr %is_adp5585.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %is_adp5585.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool98.not.i = icmp eq i8 %184, 0
  br i1 %tobool98.not.i, label %if.then99.i, label %if.then90.i.if.end104.i_crit_edge

if.then90.i.if.end104.i_crit_edge:                ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.i

if.then99.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #8
  %call100.i = tail call zeroext i8 %131(i8 noundef zeroext 35) #6
  %call.i553.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call100.i, i8 noundef zeroext %evt_mode3.1.i) #6
  %or102.i = or i32 %call.i553.i, %or96.i
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then99.i, %if.then90.i.if.end104.i_crit_edge, %for.cond43.preheader.i.if.end104.i_crit_edge
  %ret.3.i = phi i32 [ %or96.i, %if.then90.i.if.end104.i_crit_edge ], [ %or102.i, %if.then99.i ], [ %or42.i, %for.cond43.preheader.i.if.end104.i_crit_edge ]
  %pull_dis_mask.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 16
  %185 = ptrtoint ptr %pull_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %pull_dis_mask.i, align 4
  %pullup_en_100k.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 17
  %187 = ptrtoint ptr %pullup_en_100k.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %pullup_en_100k.i, align 4
  %and105.i = and i32 %188, %186
  %pullup_en_300k.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 18
  %189 = ptrtoint ptr %pullup_en_300k.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %pullup_en_300k.i, align 4
  %and106.i = and i32 %and105.i, %190
  %pulldown_en_300k.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 19
  %191 = ptrtoint ptr %pulldown_en_300k.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %pulldown_en_300k.i, align 4
  %and107.i = and i32 %and106.i, %192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %if.end104.i.if.end111.i_crit_edge, label %do.end.i117

if.end104.i.if.end111.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i

do.end.i117:                                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i97, ptr noundef nonnull @.str.44) #9
  br label %if.end111.i

if.end111.i:                                      ; preds = %do.end.i117, %if.end104.i.if.end111.i_crit_edge
  %193 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %var.i99, align 4
  %max_row_num666.i = getelementptr inbounds %struct.adp_constants, ptr %194, i32 0, i32 8
  %195 = ptrtoint ptr %max_row_num666.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %max_row_num666.i, align 4
  %conv114667.i = zext i8 %196 to i32
  br label %for.body117.i

for.cond166.preheader.i:                          ; preds = %if.end162.i
  %max_col_num673.i = getelementptr inbounds %struct.adp_constants, ptr %212, i32 0, i32 9
  %197 = ptrtoint ptr %max_col_num673.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %max_col_num673.i, align 1
  %conv168674.i = zext i8 %198 to i32
  br label %for.body171.i

for.body117.i:                                    ; preds = %if.end162.i.for.body117.i_crit_edge, %if.end111.i
  %conv114672.i = phi i32 [ %conv114667.i, %if.end111.i ], [ %conv114.i, %if.end162.i.for.body117.i_crit_edge ]
  %ret.4671.i = phi i32 [ %ret.3.i, %if.end111.i ], [ %ret.5.i, %if.end162.i.for.body117.i_crit_edge ]
  %i.2669.i = phi i32 [ 0, %if.end111.i ], [ %inc164.i, %if.end162.i.for.body117.i_crit_edge ]
  %pull_mask.0668.i = phi i8 [ 0, %if.end111.i ], [ %pull_mask.1.i, %if.end162.i.for.body117.i_crit_edge ]
  %shl118.i = shl nuw i32 1, %i.2669.i
  %199 = ptrtoint ptr %pullup_en_300k.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %pullup_en_300k.i, align 4
  %and120.i = and i32 %200, %shl118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %if.else123.i, label %for.body117.i.if.end141.i_crit_edge

for.body117.i.if.end141.i_crit_edge:              ; preds = %for.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.i

if.else123.i:                                     ; preds = %for.body117.i
  %201 = ptrtoint ptr %pulldown_en_300k.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %pulldown_en_300k.i, align 4
  %and125.i = and i32 %202, %shl118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %if.else128.i, label %if.else123.i.if.end141.i_crit_edge

if.else123.i.if.end141.i_crit_edge:               ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.i

if.else128.i:                                     ; preds = %if.else123.i
  %203 = ptrtoint ptr %pullup_en_100k.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pullup_en_100k.i, align 4
  %and130.i = and i32 %204, %shl118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %if.else133.i, label %if.else128.i.if.end141.i_crit_edge

if.else128.i.if.end141.i_crit_edge:               ; preds = %if.else128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.i

if.else133.i:                                     ; preds = %if.else128.i
  call void @__sanitizer_cov_trace_pc() #8
  %205 = ptrtoint ptr %pull_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pull_dis_mask.i, align 4
  %and135.i = and i32 %206, %shl118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  %spec.select.i = select i1 %tobool136.not.i, i32 0, i32 3
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.else133.i, %if.else128.i.if.end141.i_crit_edge, %if.else123.i.if.end141.i_crit_edge, %for.body117.i.if.end141.i_crit_edge
  %val.0.i = phi i32 [ 0, %for.body117.i.if.end141.i_crit_edge ], [ 1, %if.else123.i.if.end141.i_crit_edge ], [ 2, %if.else128.i.if.end141.i_crit_edge ], [ %spec.select.i, %if.else133.i ]
  %and142.i = shl nuw i32 %i.2669.i, 1
  %mul.i118 = and i32 %and142.i, 6
  %shl143.i = shl nuw nsw i32 %val.0.i, %mul.i118
  %207 = trunc i32 %shl143.i to i8
  %conv146.i = or i8 %pull_mask.0668.i, %207
  %208 = and i32 %i.2669.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %208)
  %cmp147.i = icmp eq i32 %208, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2669.i, i32 %conv114672.i)
  %cmp152.i = icmp eq i32 %i.2669.i, %conv114672.i
  %or.cond.i = select i1 %cmp147.i, i1 true, i1 %cmp152.i
  br i1 %or.cond.i, label %if.then154.i, label %if.end141.i.if.end162.i_crit_edge

if.end141.i.if.end162.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162.i

if.then154.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  %call155.i = tail call zeroext i8 %131(i8 noundef zeroext 23) #6
  %209 = lshr i32 %i.2669.i, 2
  %210 = trunc i32 %209 to i8
  %conv159.i = add i8 %call155.i, %210
  %call.i554.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %conv159.i, i8 noundef zeroext %conv146.i) #6
  %or161.i = or i32 %call.i554.i, %ret.4671.i
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.then154.i, %if.end141.i.if.end162.i_crit_edge
  %pull_mask.1.i = phi i8 [ 0, %if.then154.i ], [ %conv146.i, %if.end141.i.if.end162.i_crit_edge ]
  %ret.5.i = phi i32 [ %or161.i, %if.then154.i ], [ %ret.4671.i, %if.end141.i.if.end162.i_crit_edge ]
  %inc164.i = add nuw nsw i32 %i.2669.i, 1
  %211 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %var.i99, align 4
  %max_row_num.i = getelementptr inbounds %struct.adp_constants, ptr %212, i32 0, i32 8
  %213 = ptrtoint ptr %max_row_num.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %max_row_num.i, align 4
  %conv114.i = zext i8 %214 to i32
  %cmp115.not.not.i = icmp ult i32 %i.2669.i, %conv114.i
  br i1 %cmp115.not.not.i, label %if.end162.i.for.body117.i_crit_edge, label %for.cond166.preheader.i

if.end162.i.for.body117.i_crit_edge:              ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body117.i

for.body171.i:                                    ; preds = %if.end225.i.for.body171.i_crit_edge, %for.cond166.preheader.i
  %conv168679.i = phi i32 [ %conv168674.i, %for.cond166.preheader.i ], [ %conv168.i, %if.end225.i.for.body171.i_crit_edge ]
  %215 = phi ptr [ %212, %for.cond166.preheader.i ], [ %231, %if.end225.i.for.body171.i_crit_edge ]
  %ret.6678.i = phi i32 [ %ret.5.i, %for.cond166.preheader.i ], [ %ret.7.i, %if.end225.i.for.body171.i_crit_edge ]
  %i.3676.i = phi i32 [ 0, %for.cond166.preheader.i ], [ %inc227.i, %if.end225.i.for.body171.i_crit_edge ]
  %pull_mask.2675.i = phi i8 [ %pull_mask.1.i, %for.cond166.preheader.i ], [ %pull_mask.3.i, %if.end225.i.for.body171.i_crit_edge ]
  %col_shift175.i = getelementptr inbounds %struct.adp_constants, ptr %215, i32 0, i32 12
  %216 = ptrtoint ptr %col_shift175.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %col_shift175.i, align 4
  %conv176.i = zext i8 %217 to i32
  %add177.i = add nuw i32 %i.3676.i, %conv176.i
  %shl178.i = shl nuw i32 1, %add177.i
  %218 = ptrtoint ptr %pullup_en_300k.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %pullup_en_300k.i, align 4
  %and180.i = and i32 %shl178.i, %219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180.i)
  %tobool181.not.i = icmp eq i32 %and180.i, 0
  br i1 %tobool181.not.i, label %if.else183.i, label %for.body171.i.if.end201.i_crit_edge

for.body171.i.if.end201.i_crit_edge:              ; preds = %for.body171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201.i

if.else183.i:                                     ; preds = %for.body171.i
  %220 = ptrtoint ptr %pulldown_en_300k.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %pulldown_en_300k.i, align 4
  %and185.i = and i32 %221, %shl178.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.i)
  %tobool186.not.i = icmp eq i32 %and185.i, 0
  br i1 %tobool186.not.i, label %if.else188.i, label %if.else183.i.if.end201.i_crit_edge

if.else183.i.if.end201.i_crit_edge:               ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201.i

if.else188.i:                                     ; preds = %if.else183.i
  %222 = ptrtoint ptr %pullup_en_100k.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pullup_en_100k.i, align 4
  %and190.i = and i32 %223, %shl178.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.i)
  %tobool191.not.i = icmp eq i32 %and190.i, 0
  br i1 %tobool191.not.i, label %if.else193.i, label %if.else188.i.if.end201.i_crit_edge

if.else188.i.if.end201.i_crit_edge:               ; preds = %if.else188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201.i

if.else193.i:                                     ; preds = %if.else188.i
  call void @__sanitizer_cov_trace_pc() #8
  %224 = ptrtoint ptr %pull_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %pull_dis_mask.i, align 4
  %and195.i = and i32 %225, %shl178.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195.i)
  %tobool196.not.i = icmp eq i32 %and195.i, 0
  %spec.select543.i = select i1 %tobool196.not.i, i32 0, i32 3
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.else193.i, %if.else188.i.if.end201.i_crit_edge, %if.else183.i.if.end201.i_crit_edge, %for.body171.i.if.end201.i_crit_edge
  %val172.0.i = phi i32 [ 0, %for.body171.i.if.end201.i_crit_edge ], [ 1, %if.else183.i.if.end201.i_crit_edge ], [ 2, %if.else188.i.if.end201.i_crit_edge ], [ %spec.select543.i, %if.else193.i ]
  %and202.i = shl nuw i32 %i.3676.i, 1
  %mul203.i = and i32 %and202.i, 6
  %shl204.i = shl nuw nsw i32 %val172.0.i, %mul203.i
  %226 = trunc i32 %shl204.i to i8
  %conv207.i = or i8 %pull_mask.2675.i, %226
  %227 = and i32 %i.3676.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %227)
  %cmp209.i = icmp eq i32 %227, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3676.i, i32 %conv168679.i)
  %cmp215.i = icmp eq i32 %i.3676.i, %conv168679.i
  %or.cond646.i = select i1 %cmp209.i, i1 true, i1 %cmp215.i
  br i1 %or.cond646.i, label %if.then217.i, label %if.end201.i.if.end225.i_crit_edge

if.end201.i.if.end225.i_crit_edge:                ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end225.i

if.then217.i:                                     ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #8
  %call218.i = tail call zeroext i8 %131(i8 noundef zeroext 25) #6
  %228 = lshr i32 %i.3676.i, 2
  %229 = trunc i32 %228 to i8
  %conv222.i = add i8 %call218.i, %229
  %call.i555.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %conv222.i, i8 noundef zeroext %conv207.i) #6
  %or224.i = or i32 %call.i555.i, %ret.6678.i
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then217.i, %if.end201.i.if.end225.i_crit_edge
  %pull_mask.3.i = phi i8 [ 0, %if.then217.i ], [ %conv207.i, %if.end201.i.if.end225.i_crit_edge ]
  %ret.7.i = phi i32 [ %or224.i, %if.then217.i ], [ %ret.6678.i, %if.end201.i.if.end225.i_crit_edge ]
  %inc227.i = add nuw nsw i32 %i.3676.i, 1
  %230 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %var.i99, align 4
  %max_col_num.i = getelementptr inbounds %struct.adp_constants, ptr %231, i32 0, i32 9
  %232 = ptrtoint ptr %max_col_num.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %max_col_num.i, align 1
  %conv168.i = zext i8 %233 to i32
  %cmp169.not.not.i = icmp ult i32 %i.3676.i, %conv168.i
  br i1 %cmp169.not.not.i, label %if.end225.i.for.body171.i_crit_edge, label %for.end228.i

if.end225.i.for.body171.i_crit_edge:              ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body171.i

for.end228.i:                                     ; preds = %if.end225.i
  %reset1_key_1.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 10
  %234 = ptrtoint ptr %reset1_key_1.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %reset1_key_1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %235)
  %tobool230.not.i = icmp eq i16 %235, 0
  br i1 %tobool230.not.i, label %for.end228.i.if.end257.i_crit_edge, label %land.lhs.true231.i

for.end228.i.if.end257.i_crit_edge:               ; preds = %for.end228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end257.i

land.lhs.true231.i:                               ; preds = %for.end228.i
  %reset1_key_2.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 11
  %236 = ptrtoint ptr %reset1_key_2.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %reset1_key_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %237)
  %tobool233.not.i = icmp eq i16 %237, 0
  br i1 %tobool233.not.i, label %land.lhs.true231.i.if.end257.i_crit_edge, label %land.lhs.true234.i

land.lhs.true231.i.if.end257.i_crit_edge:         ; preds = %land.lhs.true231.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end257.i

land.lhs.true234.i:                               ; preds = %land.lhs.true231.i
  %reset1_key_3.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 12
  %238 = ptrtoint ptr %reset1_key_3.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %reset1_key_3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %239)
  %tobool236.not.i = icmp eq i16 %239, 0
  br i1 %tobool236.not.i, label %land.lhs.true234.i.if.end257.i_crit_edge, label %if.then237.i

land.lhs.true234.i.if.end257.i_crit_edge:         ; preds = %land.lhs.true234.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end257.i

if.then237.i:                                     ; preds = %land.lhs.true234.i
  %call238.i = tail call zeroext i8 %131(i8 noundef zeroext 56) #6
  %240 = ptrtoint ptr %reset1_key_1.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %reset1_key_1.i, align 2
  %242 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %var.i99, align 4
  %keymapsize.i.i = getelementptr inbounds %struct.adp_constants, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %keymapsize.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %keymapsize.i.i, align 1
  %conv.i.i = zext i8 %245 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %cmp12.not.i.i = icmp eq i8 %245, 0
  br i1 %cmp12.not.i.i, label %if.then237.i.do.end.i557.i_crit_edge, label %if.then237.i.for.body.i.i_crit_edge

if.then237.i.for.body.i.i_crit_edge:              ; preds = %if.then237.i
  br label %for.body.i.i

if.then237.i.do.end.i557.i_crit_edge:             ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i557.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then237.i.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then237.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 3, i32 %i.013.i.i
  %246 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %247, i16 %241)
  %cmp4.i.i = icmp eq i16 %247, %241
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %248 = trunc i32 %i.013.i.i to i8
  %249 = add i8 %248, 1
  %phi.cast.i = or i8 %249, -128
  br label %adp5589_get_evcode.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i557.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.do.end.i557.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i557.i

do.end.i557.i:                                    ; preds = %for.inc.i.i.do.end.i557.i_crit_edge, %if.then237.i.do.end.i557.i_crit_edge
  %250 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %call.i, align 4
  %dev.i556.i = getelementptr inbounds %struct.i2c_client, ptr %251, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i556.i, ptr noundef nonnull @.str.50) #9
  br label %adp5589_get_evcode.exit.i

adp5589_get_evcode.exit.i:                        ; preds = %do.end.i557.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %phi.cast.i, %if.then.i.i ], [ -22, %do.end.i557.i ]
  %call.i558.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call238.i, i8 noundef zeroext %retval.0.i.i) #6
  %or243.i = or i32 %call.i558.i, %ret.7.i
  %call244.i = tail call zeroext i8 %131(i8 noundef zeroext 57) #6
  %252 = ptrtoint ptr %reset1_key_2.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %reset1_key_2.i, align 4
  %254 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %var.i99, align 4
  %keymapsize.i560.i = getelementptr inbounds %struct.adp_constants, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %keymapsize.i560.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %keymapsize.i560.i, align 1
  %conv.i561.i = zext i8 %257 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %cmp12.not.i562.i = icmp eq i8 %257, 0
  br i1 %cmp12.not.i562.i, label %adp5589_get_evcode.exit.i.do.end.i574.i_crit_edge, label %adp5589_get_evcode.exit.i.for.body.i566.i_crit_edge

adp5589_get_evcode.exit.i.for.body.i566.i_crit_edge: ; preds = %adp5589_get_evcode.exit.i
  br label %for.body.i566.i

adp5589_get_evcode.exit.i.do.end.i574.i_crit_edge: ; preds = %adp5589_get_evcode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i574.i

for.body.i566.i:                                  ; preds = %for.inc.i572.i.for.body.i566.i_crit_edge, %adp5589_get_evcode.exit.i.for.body.i566.i_crit_edge
  %i.013.i563.i = phi i32 [ %inc.i570.i, %for.inc.i572.i.for.body.i566.i_crit_edge ], [ 0, %adp5589_get_evcode.exit.i.for.body.i566.i_crit_edge ]
  %arrayidx.i564.i = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 3, i32 %i.013.i563.i
  %258 = ptrtoint ptr %arrayidx.i564.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %arrayidx.i564.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %259, i16 %253)
  %cmp4.i565.i = icmp eq i16 %259, %253
  br i1 %cmp4.i565.i, label %if.then.i569.i, label %for.inc.i572.i

if.then.i569.i:                                   ; preds = %for.body.i566.i
  call void @__sanitizer_cov_trace_pc() #8
  %260 = trunc i32 %i.013.i563.i to i8
  %261 = add i8 %260, 1
  %phi.cast647.i = or i8 %261, -128
  br label %adp5589_get_evcode.exit576.i

for.inc.i572.i:                                   ; preds = %for.body.i566.i
  %inc.i570.i = add nuw nsw i32 %i.013.i563.i, 1
  %exitcond.not.i571.i = icmp eq i32 %inc.i570.i, %conv.i561.i
  br i1 %exitcond.not.i571.i, label %for.inc.i572.i.do.end.i574.i_crit_edge, label %for.inc.i572.i.for.body.i566.i_crit_edge

for.inc.i572.i.for.body.i566.i_crit_edge:         ; preds = %for.inc.i572.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i566.i

for.inc.i572.i.do.end.i574.i_crit_edge:           ; preds = %for.inc.i572.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i574.i

do.end.i574.i:                                    ; preds = %for.inc.i572.i.do.end.i574.i_crit_edge, %adp5589_get_evcode.exit.i.do.end.i574.i_crit_edge
  %262 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %call.i, align 4
  %dev.i573.i = getelementptr inbounds %struct.i2c_client, ptr %263, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i573.i, ptr noundef nonnull @.str.50) #9
  br label %adp5589_get_evcode.exit576.i

adp5589_get_evcode.exit576.i:                     ; preds = %do.end.i574.i, %if.then.i569.i
  %retval.0.i575.i = phi i8 [ %phi.cast647.i, %if.then.i569.i ], [ -22, %do.end.i574.i ]
  %call.i577.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call244.i, i8 noundef zeroext %retval.0.i575.i) #6
  %or249.i = or i32 %or243.i, %call.i577.i
  %call250.i = tail call zeroext i8 %131(i8 noundef zeroext 58) #6
  %264 = ptrtoint ptr %reset1_key_3.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %reset1_key_3.i, align 2
  %266 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %var.i99, align 4
  %keymapsize.i579.i = getelementptr inbounds %struct.adp_constants, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %keymapsize.i579.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %keymapsize.i579.i, align 1
  %conv.i580.i = zext i8 %269 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %cmp12.not.i581.i = icmp eq i8 %269, 0
  br i1 %cmp12.not.i581.i, label %adp5589_get_evcode.exit576.i.do.end.i593.i_crit_edge, label %adp5589_get_evcode.exit576.i.for.body.i585.i_crit_edge

adp5589_get_evcode.exit576.i.for.body.i585.i_crit_edge: ; preds = %adp5589_get_evcode.exit576.i
  br label %for.body.i585.i

adp5589_get_evcode.exit576.i.do.end.i593.i_crit_edge: ; preds = %adp5589_get_evcode.exit576.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i593.i

for.body.i585.i:                                  ; preds = %for.inc.i591.i.for.body.i585.i_crit_edge, %adp5589_get_evcode.exit576.i.for.body.i585.i_crit_edge
  %i.013.i582.i = phi i32 [ %inc.i589.i, %for.inc.i591.i.for.body.i585.i_crit_edge ], [ 0, %adp5589_get_evcode.exit576.i.for.body.i585.i_crit_edge ]
  %arrayidx.i583.i = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 3, i32 %i.013.i582.i
  %270 = ptrtoint ptr %arrayidx.i583.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %arrayidx.i583.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %271, i16 %265)
  %cmp4.i584.i = icmp eq i16 %271, %265
  br i1 %cmp4.i584.i, label %if.then.i588.i, label %for.inc.i591.i

if.then.i588.i:                                   ; preds = %for.body.i585.i
  call void @__sanitizer_cov_trace_pc() #8
  %272 = trunc i32 %i.013.i582.i to i8
  %273 = add i8 %272, 1
  %phi.cast648.i = or i8 %273, -128
  br label %adp5589_get_evcode.exit595.i

for.inc.i591.i:                                   ; preds = %for.body.i585.i
  %inc.i589.i = add nuw nsw i32 %i.013.i582.i, 1
  %exitcond.not.i590.i = icmp eq i32 %inc.i589.i, %conv.i580.i
  br i1 %exitcond.not.i590.i, label %for.inc.i591.i.do.end.i593.i_crit_edge, label %for.inc.i591.i.for.body.i585.i_crit_edge

for.inc.i591.i.for.body.i585.i_crit_edge:         ; preds = %for.inc.i591.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i585.i

for.inc.i591.i.do.end.i593.i_crit_edge:           ; preds = %for.inc.i591.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i593.i

do.end.i593.i:                                    ; preds = %for.inc.i591.i.do.end.i593.i_crit_edge, %adp5589_get_evcode.exit576.i.do.end.i593.i_crit_edge
  %274 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %call.i, align 4
  %dev.i592.i = getelementptr inbounds %struct.i2c_client, ptr %275, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i592.i, ptr noundef nonnull @.str.50) #9
  br label %adp5589_get_evcode.exit595.i

adp5589_get_evcode.exit595.i:                     ; preds = %do.end.i593.i, %if.then.i588.i
  %retval.0.i594.i = phi i8 [ %phi.cast648.i, %if.then.i588.i ], [ -22, %do.end.i593.i ]
  %call.i596.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call250.i, i8 noundef zeroext %retval.0.i594.i) #6
  %or255.i = or i32 %or249.i, %call.i596.i
  %extend_cfg.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 6
  %276 = ptrtoint ptr %extend_cfg.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %extend_cfg.i, align 4
  %or256.i = or i32 %277, 32
  store i32 %or256.i, ptr %extend_cfg.i, align 4
  br label %if.end257.i

if.end257.i:                                      ; preds = %adp5589_get_evcode.exit595.i, %land.lhs.true234.i.if.end257.i_crit_edge, %land.lhs.true231.i.if.end257.i_crit_edge, %for.end228.i.if.end257.i_crit_edge
  %ret.8.i = phi i32 [ %or255.i, %adp5589_get_evcode.exit595.i ], [ %ret.7.i, %land.lhs.true234.i.if.end257.i_crit_edge ], [ %ret.7.i, %land.lhs.true231.i.if.end257.i_crit_edge ], [ %ret.7.i, %for.end228.i.if.end257.i_crit_edge ]
  %reset2_key_1.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 13
  %278 = ptrtoint ptr %reset2_key_1.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %reset2_key_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %279)
  %tobool259.not.i = icmp eq i16 %279, 0
  br i1 %tobool259.not.i, label %if.end257.i.if.end278.i_crit_edge, label %land.lhs.true260.i

if.end257.i.if.end278.i_crit_edge:                ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end278.i

land.lhs.true260.i:                               ; preds = %if.end257.i
  %reset2_key_2.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 14
  %280 = ptrtoint ptr %reset2_key_2.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %reset2_key_2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %281)
  %tobool262.not.i = icmp eq i16 %281, 0
  br i1 %tobool262.not.i, label %land.lhs.true260.i.if.end278.i_crit_edge, label %if.then263.i

land.lhs.true260.i.if.end278.i_crit_edge:         ; preds = %land.lhs.true260.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end278.i

if.then263.i:                                     ; preds = %land.lhs.true260.i
  %call264.i = tail call zeroext i8 %131(i8 noundef zeroext 59) #6
  %282 = ptrtoint ptr %reset2_key_1.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %reset2_key_1.i, align 4
  %284 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %var.i99, align 4
  %keymapsize.i598.i = getelementptr inbounds %struct.adp_constants, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %keymapsize.i598.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %keymapsize.i598.i, align 1
  %conv.i599.i = zext i8 %287 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %cmp12.not.i600.i = icmp eq i8 %287, 0
  br i1 %cmp12.not.i600.i, label %if.then263.i.do.end.i612.i_crit_edge, label %if.then263.i.for.body.i604.i_crit_edge

if.then263.i.for.body.i604.i_crit_edge:           ; preds = %if.then263.i
  br label %for.body.i604.i

if.then263.i.do.end.i612.i_crit_edge:             ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i612.i

for.body.i604.i:                                  ; preds = %for.inc.i610.i.for.body.i604.i_crit_edge, %if.then263.i.for.body.i604.i_crit_edge
  %i.013.i601.i = phi i32 [ %inc.i608.i, %for.inc.i610.i.for.body.i604.i_crit_edge ], [ 0, %if.then263.i.for.body.i604.i_crit_edge ]
  %arrayidx.i602.i = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 3, i32 %i.013.i601.i
  %288 = ptrtoint ptr %arrayidx.i602.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %arrayidx.i602.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %289, i16 %283)
  %cmp4.i603.i = icmp eq i16 %289, %283
  br i1 %cmp4.i603.i, label %if.then.i607.i, label %for.inc.i610.i

if.then.i607.i:                                   ; preds = %for.body.i604.i
  call void @__sanitizer_cov_trace_pc() #8
  %290 = trunc i32 %i.013.i601.i to i8
  %291 = add i8 %290, 1
  %phi.cast649.i = or i8 %291, -128
  br label %adp5589_get_evcode.exit614.i

for.inc.i610.i:                                   ; preds = %for.body.i604.i
  %inc.i608.i = add nuw nsw i32 %i.013.i601.i, 1
  %exitcond.not.i609.i = icmp eq i32 %inc.i608.i, %conv.i599.i
  br i1 %exitcond.not.i609.i, label %for.inc.i610.i.do.end.i612.i_crit_edge, label %for.inc.i610.i.for.body.i604.i_crit_edge

for.inc.i610.i.for.body.i604.i_crit_edge:         ; preds = %for.inc.i610.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i604.i

for.inc.i610.i.do.end.i612.i_crit_edge:           ; preds = %for.inc.i610.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i612.i

do.end.i612.i:                                    ; preds = %for.inc.i610.i.do.end.i612.i_crit_edge, %if.then263.i.do.end.i612.i_crit_edge
  %292 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %call.i, align 4
  %dev.i611.i = getelementptr inbounds %struct.i2c_client, ptr %293, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i611.i, ptr noundef nonnull @.str.50) #9
  br label %adp5589_get_evcode.exit614.i

adp5589_get_evcode.exit614.i:                     ; preds = %do.end.i612.i, %if.then.i607.i
  %retval.0.i613.i = phi i8 [ %phi.cast649.i, %if.then.i607.i ], [ -22, %do.end.i612.i ]
  %call.i615.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call264.i, i8 noundef zeroext %retval.0.i613.i) #6
  %or269.i = or i32 %call.i615.i, %ret.8.i
  %call270.i = tail call zeroext i8 %131(i8 noundef zeroext 60) #6
  %294 = ptrtoint ptr %reset2_key_2.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %reset2_key_2.i, align 2
  %296 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %var.i99, align 4
  %keymapsize.i617.i = getelementptr inbounds %struct.adp_constants, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %keymapsize.i617.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %keymapsize.i617.i, align 1
  %conv.i618.i = zext i8 %299 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %cmp12.not.i619.i = icmp eq i8 %299, 0
  br i1 %cmp12.not.i619.i, label %adp5589_get_evcode.exit614.i.do.end.i631.i_crit_edge, label %adp5589_get_evcode.exit614.i.for.body.i623.i_crit_edge

adp5589_get_evcode.exit614.i.for.body.i623.i_crit_edge: ; preds = %adp5589_get_evcode.exit614.i
  br label %for.body.i623.i

adp5589_get_evcode.exit614.i.do.end.i631.i_crit_edge: ; preds = %adp5589_get_evcode.exit614.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i631.i

for.body.i623.i:                                  ; preds = %for.inc.i629.i.for.body.i623.i_crit_edge, %adp5589_get_evcode.exit614.i.for.body.i623.i_crit_edge
  %i.013.i620.i = phi i32 [ %inc.i627.i, %for.inc.i629.i.for.body.i623.i_crit_edge ], [ 0, %adp5589_get_evcode.exit614.i.for.body.i623.i_crit_edge ]
  %arrayidx.i621.i = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 3, i32 %i.013.i620.i
  %300 = ptrtoint ptr %arrayidx.i621.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %arrayidx.i621.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %301, i16 %295)
  %cmp4.i622.i = icmp eq i16 %301, %295
  br i1 %cmp4.i622.i, label %if.then.i626.i, label %for.inc.i629.i

if.then.i626.i:                                   ; preds = %for.body.i623.i
  call void @__sanitizer_cov_trace_pc() #8
  %302 = trunc i32 %i.013.i620.i to i8
  %303 = add i8 %302, 1
  %phi.cast650.i = or i8 %303, -128
  br label %adp5589_get_evcode.exit633.i

for.inc.i629.i:                                   ; preds = %for.body.i623.i
  %inc.i627.i = add nuw nsw i32 %i.013.i620.i, 1
  %exitcond.not.i628.i = icmp eq i32 %inc.i627.i, %conv.i618.i
  br i1 %exitcond.not.i628.i, label %for.inc.i629.i.do.end.i631.i_crit_edge, label %for.inc.i629.i.for.body.i623.i_crit_edge

for.inc.i629.i.for.body.i623.i_crit_edge:         ; preds = %for.inc.i629.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i623.i

for.inc.i629.i.do.end.i631.i_crit_edge:           ; preds = %for.inc.i629.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i631.i

do.end.i631.i:                                    ; preds = %for.inc.i629.i.do.end.i631.i_crit_edge, %adp5589_get_evcode.exit614.i.do.end.i631.i_crit_edge
  %304 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %call.i, align 4
  %dev.i630.i = getelementptr inbounds %struct.i2c_client, ptr %305, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i630.i, ptr noundef nonnull @.str.50) #9
  br label %adp5589_get_evcode.exit633.i

adp5589_get_evcode.exit633.i:                     ; preds = %do.end.i631.i, %if.then.i626.i
  %retval.0.i632.i = phi i8 [ %phi.cast650.i, %if.then.i626.i ], [ -22, %do.end.i631.i ]
  %call.i634.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call270.i, i8 noundef zeroext %retval.0.i632.i) #6
  %or275.i = or i32 %or269.i, %call.i634.i
  %extend_cfg276.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 6
  %306 = ptrtoint ptr %extend_cfg276.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %extend_cfg276.i, align 4
  %or277.i = or i32 %307, 64
  store i32 %or277.i, ptr %extend_cfg276.i, align 4
  br label %if.end278.i

if.end278.i:                                      ; preds = %adp5589_get_evcode.exit633.i, %land.lhs.true260.i.if.end278.i_crit_edge, %if.end257.i.if.end278.i_crit_edge
  %ret.9.i = phi i32 [ %or275.i, %adp5589_get_evcode.exit633.i ], [ %ret.8.i, %land.lhs.true260.i.if.end278.i_crit_edge ], [ %ret.8.i, %if.end257.i.if.end278.i_crit_edge ]
  %extend_cfg279.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 6
  %308 = ptrtoint ptr %extend_cfg279.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %extend_cfg279.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %tobool280.not.i = icmp eq i32 %309, 0
  br i1 %tobool280.not.i, label %if.end278.i.if.end290.i_crit_edge, label %if.then281.i

if.end278.i.if.end290.i_crit_edge:                ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end290.i

if.then281.i:                                     ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #8
  %call282.i = tail call zeroext i8 %131(i8 noundef zeroext 61) #6
  %reset_cfg.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 9
  %310 = ptrtoint ptr %reset_cfg.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %reset_cfg.i, align 4
  %call.i635.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call282.i, i8 noundef zeroext %311) #6
  %or284.i = or i32 %call.i635.i, %ret.9.i
  %call285.i = tail call zeroext i8 %131(i8 noundef zeroext 76) #6
  %312 = ptrtoint ptr %extend_cfg279.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %extend_cfg279.i, align 4
  %conv287.i = trunc i32 %313 to i8
  %call.i636.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call285.i, i8 noundef zeroext %conv287.i) #6
  %or289.i = or i32 %or284.i, %call.i636.i
  br label %if.end290.i

if.end290.i:                                      ; preds = %if.then281.i, %if.end278.i.if.end290.i_crit_edge
  %ret.10.i = phi i32 [ %or289.i, %if.then281.i ], [ %ret.9.i, %if.end278.i.if.end290.i_crit_edge ]
  %call291.i = tail call zeroext i8 %131(i8 noundef zeroext 39) #6
  %debounce_dis_mask.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 15
  %314 = ptrtoint ptr %debounce_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %debounce_dis_mask.i, align 4
  %316 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %var.i99, align 4
  %row_mask293.i = getelementptr inbounds %struct.adp_constants, ptr %317, i32 0, i32 10
  %318 = ptrtoint ptr %row_mask293.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %row_mask293.i, align 2
  %320 = trunc i32 %315 to i8
  %conv296.i = and i8 %319, %320
  %call.i637.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call291.i, i8 noundef zeroext %conv296.i) #6
  %or298.i = or i32 %call.i637.i, %ret.10.i
  %call299.i = tail call zeroext i8 %131(i8 noundef zeroext 40) #6
  %321 = ptrtoint ptr %debounce_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %debounce_dis_mask.i, align 4
  %323 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %var.i99, align 4
  %col_shift302.i = getelementptr inbounds %struct.adp_constants, ptr %324, i32 0, i32 12
  %325 = ptrtoint ptr %col_shift302.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %col_shift302.i, align 4
  %conv303.i = zext i8 %326 to i32
  %shr304.i = lshr i32 %322, %conv303.i
  %col_mask306.i = getelementptr inbounds %struct.adp_constants, ptr %324, i32 0, i32 11
  %327 = ptrtoint ptr %col_mask306.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %col_mask306.i, align 1
  %329 = trunc i32 %shr304.i to i8
  %conv309.i = and i8 %328, %329
  %call.i638.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call299.i, i8 noundef zeroext %conv309.i) #6
  %or311.i = or i32 %or298.i, %call.i638.i
  %330 = ptrtoint ptr %is_adp5585.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %is_adp5585.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool313.not.i = icmp eq i8 %331, 0
  br i1 %tobool313.not.i, label %if.then314.i, label %if.end290.i.if.end322.i_crit_edge

if.end290.i.if.end322.i_crit_edge:                ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end322.i

if.then314.i:                                     ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #8
  %call315.i = tail call zeroext i8 %131(i8 noundef zeroext 41) #6
  %332 = ptrtoint ptr %debounce_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %debounce_dis_mask.i, align 4
  %shr317.i = lshr i32 %333, 16
  %conv319.i = trunc i32 %shr317.i to i8
  %call.i639.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call315.i, i8 noundef zeroext %conv319.i) #6
  %or321.i = or i32 %call.i639.i, %or311.i
  br label %if.end322.i

if.end322.i:                                      ; preds = %if.then314.i, %if.end290.i.if.end322.i_crit_edge
  %ret.11.i = phi i32 [ %or311.i, %if.end290.i.if.end322.i_crit_edge ], [ %or321.i, %if.then314.i ]
  %call323.i = tail call zeroext i8 %131(i8 noundef zeroext 72) #6
  %scan_cycle_time.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %127, i32 0, i32 8
  %334 = ptrtoint ptr %scan_cycle_time.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %scan_cycle_time.i, align 1
  %336 = and i8 %335, 3
  %call.i640.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call323.i, i8 noundef zeroext %336) #6
  %or328.i = or i32 %call.i640.i, %ret.11.i
  %337 = ptrtoint ptr %is_adp5585.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %is_adp5585.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool330.not.i = icmp eq i8 %338, 0
  %conv341.i = select i1 %tobool330.not.i, i8 63, i8 23
  %call.i641.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext 1, i8 noundef zeroext %conv341.i) #6
  %or343.i = or i32 %or328.i, %call.i641.i
  %call344.i = tail call zeroext i8 %131(i8 noundef zeroext 77) #6
  %call.i642.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call344.i, i8 noundef zeroext -30) #6
  %or346.i = or i32 %or343.i, %call.i642.i
  %call347.i = tail call zeroext i8 %131(i8 noundef zeroext 78) #6
  %call.i643.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %125, i8 noundef zeroext %call347.i, i8 noundef zeroext 7) #6
  %or349.i = or i32 %or346.i, %call.i643.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or349.i)
  %cmp350.i = icmp slt i32 %or349.i, 0
  br i1 %cmp350.i, label %adp5589_setup.exit, label %if.end39

adp5589_setup.exit:                               ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i97, ptr noundef nonnull @.str.48) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end322.i
  %gpimapsize = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 5
  %339 = ptrtoint ptr %gpimapsize to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %gpimapsize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %340)
  %tobool40.not = icmp eq i16 %340, 0
  br i1 %tobool40.not, label %if.end39.if.end42_crit_edge, label %if.then41

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @adp5589_report_switch_state(ptr noundef nonnull %call.i)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %341 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %342, i32 0, i32 4
  %platform_data.i.i119 = getelementptr inbounds %struct.i2c_client, ptr %342, i32 0, i32 4, i32 7
  %343 = ptrtoint ptr %platform_data.i.i119 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %platform_data.i.i119, align 8
  %gpio_data2.i = getelementptr inbounds %struct.adp5589_kpad_platform_data, ptr %344, i32 0, i32 22
  %345 = ptrtoint ptr %gpio_data2.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %gpio_data2.i, align 4
  %tobool.not.i120 = icmp eq ptr %346, null
  br i1 %tobool.not.i120, label %if.end42.if.end46_crit_edge, label %if.end.i123

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end.i123:                                      ; preds = %if.end42
  %parent.i121 = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 2
  %347 = ptrtoint ptr %parent.i121 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %dev1.i, ptr %parent.i121, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %pin_used.i.i) #6
  %348 = getelementptr inbounds [19 x i8], ptr %pin_used.i.i, i32 0, i32 4
  %349 = getelementptr inbounds [19 x i8], ptr %pin_used.i.i, i32 0, i32 5
  %350 = call ptr @memset(ptr %pin_used.i.i, i32 0, i32 19)
  %351 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %var.i99, align 4
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %352, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %cmp69.not.i.i = icmp eq i8 %354, 0
  br i1 %cmp69.not.i.i, label %if.end.i123.for.cond2.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i123.for.cond2.preheader.i.i_crit_edge:    ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i123
  %355 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %344, align 4
  %conv.i.i124 = zext i8 %354 to i32
  br label %for.body.i.i127

for.cond2.preheader.i.i:                          ; preds = %for.inc.i.i132.for.cond2.preheader.i.i_crit_edge, %if.end.i123.for.cond2.preheader.i.i_crit_edge
  %357 = ptrtoint ptr %gpimapsize to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %gpimapsize, align 4
  %conv3.i.i = zext i16 %358 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %358)
  %cmp472.not.i.i = icmp eq i16 %358, 0
  br i1 %cmp472.not.i.i, label %for.cond2.preheader.i.i.for.end14.i.i_crit_edge, label %for.body6.lr.ph.i.i

for.cond2.preheader.i.i.for.end14.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end14.i.i

for.body6.lr.ph.i.i:                              ; preds = %for.cond2.preheader.i.i
  %gpimap.i.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 4
  %359 = ptrtoint ptr %gpimap.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %gpimap.i.i, align 4
  %gpi_pin_base.i.i = getelementptr inbounds %struct.adp_constants, ptr %352, i32 0, i32 5
  %361 = ptrtoint ptr %gpi_pin_base.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %gpi_pin_base.i.i, align 1
  %conv10.i.i = zext i8 %362 to i32
  br label %for.body6.i.i

for.body.i.i127:                                  ; preds = %for.inc.i.i132.for.body.i.i127_crit_edge, %for.body.lr.ph.i.i
  %i.070.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i130, %for.inc.i.i132.for.body.i.i127_crit_edge ]
  %shl.i.i125 = shl nuw i32 1, %i.070.i.i
  %and.i.i126 = and i32 %shl.i.i125, %356
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i126)
  %tobool.not.i.i = icmp eq i32 %and.i.i126, 0
  br i1 %tobool.not.i.i, label %for.body.i.i127.for.inc.i.i132_crit_edge, label %if.then.i.i129

for.body.i.i127.for.inc.i.i132_crit_edge:         ; preds = %for.body.i.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i132

if.then.i.i129:                                   ; preds = %for.body.i.i127
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i128 = getelementptr [19 x i8], ptr %pin_used.i.i, i32 0, i32 %i.070.i.i
  %363 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 1, ptr %arrayidx.i.i128, align 1
  br label %for.inc.i.i132

for.inc.i.i132:                                   ; preds = %if.then.i.i129, %for.body.i.i127.for.inc.i.i132_crit_edge
  %inc.i.i130 = add nuw nsw i32 %i.070.i.i, 1
  %exitcond.not.i131 = icmp eq i32 %inc.i.i130, %conv.i.i124
  br i1 %exitcond.not.i131, label %for.inc.i.i132.for.cond2.preheader.i.i_crit_edge, label %for.inc.i.i132.for.body.i.i127_crit_edge

for.inc.i.i132.for.body.i.i127_crit_edge:         ; preds = %for.inc.i.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i127

for.inc.i.i132.for.cond2.preheader.i.i_crit_edge: ; preds = %for.inc.i.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %for.body6.lr.ph.i.i
  %i.173.i.i = phi i32 [ 0, %for.body6.lr.ph.i.i ], [ %inc13.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr %struct.adp5589_gpi_map, ptr %360, i32 %i.173.i.i
  %364 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %arrayidx7.i.i, align 2
  %conv8.i.i = zext i16 %365 to i32
  %sub.i.i = sub nsw i32 %conv8.i.i, %conv10.i.i
  %arrayidx11.i.i = getelementptr [19 x i8], ptr %pin_used.i.i, i32 0, i32 %sub.i.i
  %366 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 1, ptr %arrayidx11.i.i, align 1
  %inc13.i.i = add nuw nsw i32 %i.173.i.i, 1
  %exitcond.not.i.i133 = icmp eq i32 %inc13.i.i, %conv3.i.i
  br i1 %exitcond.not.i.i133, label %for.body6.i.i.for.end14.i.i_crit_edge, label %for.body6.i.i.for.body6.i.i_crit_edge

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i.i

for.body6.i.i.for.end14.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end14.i.i

for.end14.i.i:                                    ; preds = %for.body6.i.i.for.end14.i.i_crit_edge, %for.cond2.preheader.i.i.for.end14.i.i_crit_edge
  %367 = ptrtoint ptr %extend_cfg279.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %extend_cfg279.i, align 4
  %and15.i.i = and i32 %368, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %for.end14.i.i.if.end19.i.i_crit_edge, label %if.then17.i.i

for.end14.i.i.if.end19.i.i_crit_edge:             ; preds = %for.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i

if.then17.i.i:                                    ; preds = %for.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %369 = ptrtoint ptr %348 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 1, ptr %348, align 1
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %for.end14.i.i.if.end19.i.i_crit_edge
  %and21.i.i = and i32 %368, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end19.i.i.if.end26.i.i_crit_edge, label %if.then23.i.i

if.end19.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

if.then23.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %c4_extend_cfg.i.i = getelementptr inbounds %struct.adp_constants, ptr %352, i32 0, i32 13
  %370 = ptrtoint ptr %c4_extend_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %c4_extend_cfg.i.i, align 1
  %idxprom.i.i = zext i8 %371 to i32
  %arrayidx25.i.i = getelementptr [19 x i8], ptr %pin_used.i.i, i32 0, i32 %idxprom.i.i
  %372 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 1, ptr %arrayidx25.i.i, align 1
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then23.i.i, %if.end19.i.i.if.end26.i.i_crit_edge
  %support_row5.i.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 8
  %373 = ptrtoint ptr %support_row5.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %support_row5.i.i, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool27.not.i.i = icmp eq i8 %374, 0
  br i1 %tobool27.not.i.i, label %if.then28.i.i, label %if.end26.i.i.if.end30.i.i_crit_edge

if.end26.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i.i

if.then28.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %375 = ptrtoint ptr %349 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 1, ptr %349, align 1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then28.i.i, %if.end26.i.i.if.end30.i.i_crit_edge
  br i1 %cmp69.not.i.i, label %adp5589_build_gpiomap.exit.thread.i, label %if.end30.i.i.for.body37.i.i_crit_edge

if.end30.i.i.for.body37.i.i_crit_edge:            ; preds = %if.end30.i.i
  br label %for.body37.i.i

adp5589_build_gpiomap.exit.thread.i:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %pin_used.i.i) #6
  %ngpio97.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 20
  %376 = ptrtoint ptr %ngpio97.i to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 0, ptr %ngpio97.i, align 4
  br label %do.end.i136

for.body37.i.i:                                   ; preds = %for.inc45.i.i.for.body37.i.i_crit_edge, %if.end30.i.i.for.body37.i.i_crit_edge
  %i.277.i.i = phi i32 [ %inc46.i.i, %for.inc45.i.i.for.body37.i.i_crit_edge ], [ 0, %if.end30.i.i.for.body37.i.i_crit_edge ]
  %n_unused.076.i.i = phi i32 [ %n_unused.1.i.i, %for.inc45.i.i.for.body37.i.i_crit_edge ], [ 0, %if.end30.i.i.for.body37.i.i_crit_edge ]
  %arrayidx38.i.i = getelementptr [19 x i8], ptr %pin_used.i.i, i32 0, i32 %i.277.i.i
  %377 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx38.i.i, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %tobool39.not.i.i = icmp eq i8 %378, 0
  br i1 %tobool39.not.i.i, label %if.then40.i.i, label %for.body37.i.i.for.inc45.i.i_crit_edge

for.body37.i.i.for.inc45.i.i_crit_edge:           ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc45.i.i

if.then40.i.i:                                    ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv41.i.i = trunc i32 %i.277.i.i to i8
  %inc42.i.i = add i32 %n_unused.076.i.i, 1
  %arrayidx43.i.i = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 9, i32 %n_unused.076.i.i
  %379 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %conv41.i.i, ptr %arrayidx43.i.i, align 1
  br label %for.inc45.i.i

for.inc45.i.i:                                    ; preds = %if.then40.i.i, %for.body37.i.i.for.inc45.i.i_crit_edge
  %n_unused.1.i.i = phi i32 [ %n_unused.076.i.i, %for.body37.i.i.for.inc45.i.i_crit_edge ], [ %inc42.i.i, %if.then40.i.i ]
  %inc46.i.i = add nuw nsw i32 %i.277.i.i, 1
  %380 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %var.i99, align 4
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %381, align 4
  %conv34.i.i = zext i8 %383 to i32
  %cmp35.i.i = icmp ult i32 %inc46.i.i, %conv34.i.i
  br i1 %cmp35.i.i, label %for.inc45.i.i.for.body37.i.i_crit_edge, label %adp5589_build_gpiomap.exit.i

for.inc45.i.i.for.body37.i.i_crit_edge:           ; preds = %for.inc45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37.i.i

adp5589_build_gpiomap.exit.i:                     ; preds = %for.inc45.i.i
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %pin_used.i.i) #6
  %conv.i134 = trunc i32 %n_unused.1.i.i to i16
  %ngpio.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 20
  %384 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 %conv.i134, ptr %ngpio.i, align 4
  %conv7.i = and i32 %n_unused.1.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7.i)
  %cmp.i135 = icmp eq i32 %conv7.i, 0
  br i1 %cmp.i135, label %adp5589_build_gpiomap.exit.i.do.end.i136_crit_edge, label %if.end10.i

adp5589_build_gpiomap.exit.i.do.end.i136_crit_edge: ; preds = %adp5589_build_gpiomap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i136

do.end.i136:                                      ; preds = %adp5589_build_gpiomap.exit.i.do.end.i136_crit_edge, %adp5589_build_gpiomap.exit.thread.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.54) #9
  br label %if.end46

if.end10.i:                                       ; preds = %adp5589_build_gpiomap.exit.i
  %gc.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10
  %direction_input.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 8
  %385 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr @adp5589_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 9
  %386 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr @adp5589_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 10
  %387 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr @adp5589_gpio_get_value, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 12
  %388 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr @adp5589_gpio_set_value, ptr %set.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 23
  %389 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 1, ptr %can_sleep.i, align 4
  %390 = ptrtoint ptr %346 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %346, align 4
  %base.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 19
  %392 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %391, ptr %base.i, align 4
  %393 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %call.i, align 4
  %name.i137 = getelementptr inbounds %struct.i2c_client, ptr %394, i32 0, i32 2
  %395 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %name.i137, ptr %gc.i, align 4
  %owner.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 10, i32 4
  %396 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr null, ptr %owner.i, align 4
  %gpio_lock.i = getelementptr inbounds %struct.adp5589_kpad, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %gpio_lock.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @adp5589_gpio_add.__key) #6
  %call24.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1.i, ptr noundef %gc.i, ptr noundef %call.i, ptr noundef nonnull @adp5589_gpio_add.lock_key, ptr noundef nonnull @adp5589_gpio_add.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %for.cond.preheader.i138, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i138:                          ; preds = %if.end10.i
  %397 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %var.i99, align 4
  %bank100.i = getelementptr inbounds %struct.adp_constants, ptr %398, i32 0, i32 14
  %399 = ptrtoint ptr %bank100.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %bank100.i, align 4
  %401 = ptrtoint ptr %398 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %398, align 4
  %call29101.i = tail call zeroext i8 %400(i8 noundef zeroext %402) #6
  br label %for.body.i140

for.body.i140:                                    ; preds = %adp5589_read.exit94.i.for.body.i140_crit_edge, %for.cond.preheader.i138
  %i.0103.i = phi i32 [ 0, %for.cond.preheader.i138 ], [ %inc.i144, %adp5589_read.exit94.i.for.body.i140_crit_edge ]
  %403 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %call.i, align 4
  %405 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %var.i99, align 4
  %reg.i = getelementptr inbounds %struct.adp_constants, ptr %406, i32 0, i32 16
  %407 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %reg.i, align 4
  %call35.i = tail call zeroext i8 %408(i8 noundef zeroext 42) #6
  %409 = trunc i32 %i.0103.i to i8
  %conv37.i = add i8 %call35.i, %409
  %call.i.i139 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %404, i8 noundef zeroext %conv37.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %cmp.i89.i = icmp slt i32 %call.i.i139, 0
  br i1 %cmp.i89.i, label %do.end.i.i141, label %for.body.i140.adp5589_read.exit.i143_crit_edge

for.body.i140.adp5589_read.exit.i143_crit_edge:   ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit.i143

do.end.i.i141:                                    ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %404, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit.i143

adp5589_read.exit.i143:                           ; preds = %do.end.i.i141, %for.body.i140.adp5589_read.exit.i143_crit_edge
  %conv39.i = trunc i32 %call.i.i139 to i8
  %arrayidx.i142 = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 12, i32 %i.0103.i
  %410 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %conv39.i, ptr %arrayidx.i142, align 1
  %411 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %call.i, align 4
  %413 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %var.i99, align 4
  %reg42.i = getelementptr inbounds %struct.adp_constants, ptr %414, i32 0, i32 16
  %415 = ptrtoint ptr %reg42.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %reg42.i, align 4
  %call43.i = tail call zeroext i8 %416(i8 noundef zeroext 48) #6
  %conv46.i = add i8 %call43.i, %409
  %call.i90.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %412, i8 noundef zeroext %conv46.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i)
  %cmp.i91.i = icmp slt i32 %call.i90.i, 0
  br i1 %cmp.i91.i, label %do.end.i93.i, label %adp5589_read.exit.i143.adp5589_read.exit94.i_crit_edge

adp5589_read.exit.i143.adp5589_read.exit94.i_crit_edge: ; preds = %adp5589_read.exit.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit94.i

do.end.i93.i:                                     ; preds = %adp5589_read.exit.i143
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i92.i = getelementptr inbounds %struct.i2c_client, ptr %412, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92.i, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit94.i

adp5589_read.exit94.i:                            ; preds = %do.end.i93.i, %adp5589_read.exit.i143.adp5589_read.exit94.i_crit_edge
  %conv48.i = trunc i32 %call.i90.i to i8
  %arrayidx49.i = getelementptr %struct.adp5589_kpad, ptr %call.i, i32 0, i32 13, i32 %i.0103.i
  %417 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %conv48.i, ptr %arrayidx49.i, align 1
  %inc.i144 = add nuw nsw i32 %i.0103.i, 1
  %418 = ptrtoint ptr %var.i99 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %var.i99, align 4
  %bank.i = getelementptr inbounds %struct.adp_constants, ptr %419, i32 0, i32 14
  %420 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %bank.i, align 4
  %422 = ptrtoint ptr %419 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %419, align 4
  %call29.i = tail call zeroext i8 %421(i8 noundef zeroext %423) #6
  %conv30.i = zext i8 %call29.i to i32
  %cmp31.not.not.i = icmp ult i32 %i.0103.i, %conv30.i
  br i1 %cmp31.not.not.i, label %adp5589_read.exit94.i.for.body.i140_crit_edge, label %adp5589_read.exit94.i.if.end46_crit_edge

adp5589_read.exit94.i.if.end46_crit_edge:         ; preds = %adp5589_read.exit94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

adp5589_read.exit94.i.for.body.i140_crit_edge:    ; preds = %adp5589_read.exit94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i140

if.end46:                                         ; preds = %adp5589_read.exit94.i.if.end46_crit_edge, %do.end.i136, %if.end42.if.end46_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %424 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %425 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %and, i32 noundef %426) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end10.i.cleanup_crit_edge, %adp5589_setup.exit, %do.end173.i, %do.end161.i, %if.end82.i.cleanup_crit_edge, %do.end80.i, %do.end73.i, %do.end61.i, %do.end38.i, %do.end26.i, %do.end16.i, %do.end.i96, %adp5589_read.exit.thread, %devm_add_action_or_reset.exit, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -22, %do.end7 ], [ -5, %do.end ], [ -12, %if.end9.cleanup_crit_edge ], [ %call.i89, %devm_add_action_or_reset.exit ], [ %or349.i, %adp5589_setup.exit ], [ %call.i90, %adp5589_read.exit.thread ], [ %call24.i, %if.end10.i.cleanup_crit_edge ], [ -12, %if.end82.i.cleanup_crit_edge ], [ -22, %do.end61.i ], [ -22, %do.end73.i ], [ -22, %do.end.i96 ], [ -22, %do.end26.i ], [ -22, %do.end80.i ], [ %call168.i, %do.end173.i ], [ %call156.i, %do.end161.i ], [ -22, %do.end38.i ], [ -22, %do.end16.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5589_clear_config(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %var = getelementptr inbounds %struct.adp5589_kpad, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %var, align 4
  %reg = getelementptr inbounds %struct.adp_constants, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %call1 = tail call zeroext i8 %5(i8 noundef zeroext 77) #6
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %data, i8 noundef zeroext %call1, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adp5589_report_switch_state(ptr nocapture noundef readonly %kpad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kpad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kpad, align 4
  %var = getelementptr inbounds %struct.adp5589_kpad, ptr %kpad, i32 0, i32 2
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %var, align 4
  %reg = getelementptr inbounds %struct.adp_constants, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %call = tail call zeroext i8 %5(i8 noundef zeroext 22) #6
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5589_read.exit_crit_edge

entry.adp5589_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit

adp5589_read.exit:                                ; preds = %do.end.i, %entry.adp5589_read.exit_crit_edge
  %6 = ptrtoint ptr %kpad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kpad, align 4
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %var, align 4
  %reg4 = getelementptr inbounds %struct.adp_constants, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %reg4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg4, align 4
  %call5 = tail call zeroext i8 %11(i8 noundef zeroext 23) #6
  %call.i76 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.i77 = icmp slt i32 %call.i76, 0
  br i1 %cmp.i77, label %do.end.i79, label %adp5589_read.exit.adp5589_read.exit80_crit_edge

adp5589_read.exit.adp5589_read.exit80_crit_edge:  ; preds = %adp5589_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit80

do.end.i79:                                       ; preds = %adp5589_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i78 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i78, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit80

adp5589_read.exit80:                              ; preds = %do.end.i79, %adp5589_read.exit.adp5589_read.exit80_crit_edge
  %is_adp5585 = getelementptr inbounds %struct.adp5589_kpad, ptr %kpad, i32 0, i32 7
  %12 = ptrtoint ptr %is_adp5585 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_adp5585, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %cond.true, label %adp5589_read.exit80.cond.end_crit_edge

adp5589_read.exit80.cond.end_crit_edge:           ; preds = %adp5589_read.exit80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %adp5589_read.exit80
  %14 = ptrtoint ptr %kpad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kpad, align 4
  %call.i81 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i82 = icmp slt i32 %call.i81, 0
  br i1 %cmp.i82, label %do.end.i84, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

do.end.i84:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i83 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i83, ptr noundef nonnull @.str.13) #9
  br label %cond.end

cond.end:                                         ; preds = %do.end.i84, %cond.true.cond.end_crit_edge, %adp5589_read.exit80.cond.end_crit_edge
  %cond = phi i32 [ 0, %adp5589_read.exit80.cond.end_crit_edge ], [ %call.i81, %cond.true.cond.end_crit_edge ], [ %call.i81, %do.end.i84 ]
  %gpimapsize = getelementptr inbounds %struct.adp5589_kpad, ptr %kpad, i32 0, i32 5
  %16 = ptrtoint ptr %gpimapsize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gpimapsize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp87.not = icmp eq i16 %17, 0
  br i1 %cmp87.not, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %gpimap = getelementptr inbounds %struct.adp5589_kpad, ptr %kpad, i32 0, i32 4
  %input = getelementptr inbounds %struct.adp5589_kpad, ptr %kpad, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.lr.ph
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end44.for.body_crit_edge ]
  %18 = ptrtoint ptr %gpimap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpimap, align 4
  %arrayidx = getelementptr %struct.adp5589_gpi_map, ptr %19, i32 %i.088
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %conv11 = zext i16 %21 to i32
  %22 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %var, align 4
  %gpi_pin_row_end = getelementptr inbounds %struct.adp_constants, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %gpi_pin_row_end to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %gpi_pin_row_end, align 1
  %26 = zext i8 %25 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %26)
  %cmp14.not = icmp ugt i16 %21, %26
  br i1 %cmp14.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %gpi_pin_row_base = getelementptr inbounds %struct.adp_constants, ptr %23, i32 0, i32 2
  %27 = ptrtoint ptr %gpi_pin_row_base to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %gpi_pin_row_base, align 2
  %conv18 = zext i8 %28 to i32
  %sub = sub nsw i32 %conv11, %conv18
  br label %if.end38

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %gpi_pin_col_base = getelementptr inbounds %struct.adp_constants, ptr %23, i32 0, i32 4
  %29 = ptrtoint ptr %gpi_pin_col_base to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %gpi_pin_col_base, align 4
  %conv21 = zext i8 %30 to i32
  %sub22 = sub nsw i32 %conv11, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub22)
  %cmp23 = icmp slt i32 %sub22, 8
  %sub37 = add nsw i32 %sub22, -8
  %spec.select = select i1 %cmp23, i32 %call.i76, i32 %cond
  %spec.select75 = select i1 %cmp23, i32 %sub22, i32 %sub37
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then
  %gpi_stat_tmp.0 = phi i32 [ %call.i, %if.then ], [ %spec.select, %if.else ]
  %pin_loc.0 = phi i32 [ %sub, %if.then ], [ %spec.select75, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpi_stat_tmp.0)
  %cmp39 = icmp slt i32 %gpi_stat_tmp.0, 0
  br i1 %cmp39, label %do.end, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %kpad to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kpad, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %conv11) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.end38.if.end44_crit_edge
  %gpi_stat_tmp.1 = phi i32 [ 0, %do.end ], [ %gpi_stat_tmp.0, %if.end38.if.end44_crit_edge ]
  %33 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input, align 4
  %35 = ptrtoint ptr %gpimap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpimap, align 4
  %sw_evt = getelementptr %struct.adp5589_gpi_map, ptr %36, i32 %i.088, i32 1
  %37 = ptrtoint ptr %sw_evt to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sw_evt, align 2
  %conv47 = zext i16 %38 to i32
  %39 = xor i32 %gpi_stat_tmp.1, -1
  %40 = lshr i32 %39, %pin_loc.0
  %41 = and i32 %40, 1
  tail call void @input_event(ptr noundef %34, i32 noundef 5, i32 noundef %conv47, i32 noundef %41) #6
  %inc = add nuw nsw i32 %i.088, 1
  %42 = ptrtoint ptr %gpimapsize to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %gpimapsize, align 4
  %conv = zext i16 %43 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end44.for.body_crit_edge, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %cond.end.for.end_crit_edge
  %input49 = getelementptr inbounds %struct.adp5589_kpad, ptr %kpad, i32 0, i32 1
  %44 = ptrtoint ptr %input49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input49, align 4
  tail call void @input_event(ptr noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @adp5585_bank(i8 noundef zeroext %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %offset)
  %cmp = icmp ugt i8 %offset, 5
  %conv2 = zext i1 %cmp to i8
  ret i8 %conv2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @adp5585_bit(i8 noundef zeroext %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %offset to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %offset)
  %cmp = icmp ugt i8 %offset, 5
  %sub = add nsw i32 %conv, -6
  %sub.pn = select i1 %cmp, i32 %sub, i32 %conv
  %cond = shl nuw i32 1, %sub.pn
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @adp5585_reg(i8 noundef zeroext %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %reg to i32
  %arrayidx = getelementptr [79 x i8], ptr @adp5585_reg_lut, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  ret i8 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @adp5589_bank(i8 noundef zeroext %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i8 %offset, 3
  ret i8 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @adp5589_bit(i8 noundef zeroext %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %offset, 7
  %shl = shl nuw i8 1, %0
  ret i8 %shl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @adp5589_reg(i8 noundef returned zeroext %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 %reg
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5589_irq(i32 noundef %irq, ptr nocapture noundef readonly %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5589_read.exit_crit_edge

entry.adp5589_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit

adp5589_read.exit:                                ; preds = %do.end.i, %entry.adp5589_read.exit_crit_edge
  %and = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %adp5589_read.exit.if.end_crit_edge, label %do.end

adp5589_read.exit.if.end_crit_edge:               ; preds = %adp5589_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %adp5589_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %adp5589_read.exit.if.end_crit_edge
  %and2 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call.i20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i21 = icmp slt i32 %call.i20, 0
  br i1 %cmp.i21, label %do.end.i23, label %if.then4.adp5589_read.exit24_crit_edge

if.then4.adp5589_read.exit24_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit24

do.end.i23:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit24

adp5589_read.exit24:                              ; preds = %do.end.i23, %if.then4.adp5589_read.exit24_crit_edge
  %and6 = and i32 %call.i20, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %adp5589_read.exit24.if.end10_crit_edge, label %for.body.lr.ph.i

adp5589_read.exit24.if.end10_crit_edge:           ; preds = %adp5589_read.exit24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %adp5589_read.exit24
  %var.i = getelementptr inbounds %struct.adp5589_kpad, ptr %handle, i32 0, i32 2
  %gpimapsize.i.i = getelementptr inbounds %struct.adp5589_kpad, ptr %handle, i32 0, i32 5
  %gpimap.i.i = getelementptr inbounds %struct.adp5589_kpad, ptr %handle, i32 0, i32 4
  %input.i.i = getelementptr inbounds %struct.adp5589_kpad, ptr %handle, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %4 = trunc i32 %i.024.i to i8
  %conv.i = add i8 %4, 3
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i.adp5589_read.exit.i_crit_edge

for.body.i.adp5589_read.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit.i

adp5589_read.exit.i:                              ; preds = %do.end.i.i, %for.body.i.adp5589_read.exit.i_crit_edge
  %and.i = and i32 %call.i.i, 127
  %5 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %var.i, align 4
  %gpi_pin_base.i = getelementptr inbounds %struct.adp_constants, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %gpi_pin_base.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gpi_pin_base.i, align 1
  %conv1.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv1.i)
  %cmp2.not.i = icmp ult i32 %and.i, %conv1.i
  br i1 %cmp2.not.i, label %adp5589_read.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

adp5589_read.exit.i.if.else.i_crit_edge:          ; preds = %adp5589_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %adp5589_read.exit.i
  %gpi_pin_end.i = getelementptr inbounds %struct.adp_constants, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %gpi_pin_end.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gpi_pin_end.i, align 2
  %conv5.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv5.i)
  %cmp6.not.i = icmp ugt i32 %and.i, %conv5.i
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %gpimapsize.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gpimapsize.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp15.not.i.i = icmp eq i16 %12, 0
  br i1 %cmp15.not.i.i, label %if.then.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %13 = ptrtoint ptr %gpimap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpimap.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adp5589_gpi_map, ptr %14, i32 %i.016.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i.i, align 2
  %conv2.i.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv2.i.i)
  %cmp3.i.i = icmp eq i32 %and.i, %conv2.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input.i.i, align 4
  %sw_evt.i.i = getelementptr %struct.adp5589_gpi_map, ptr %14, i32 %i.016.i.i, i32 1
  %19 = ptrtoint ptr %sw_evt.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sw_evt.i.i, align 2
  %conv7.i.i = zext i16 %20 to i32
  %and.i.i = lshr i32 %call.i.i, 7
  %and.lobit.i.i = and i32 %and.i.i, 1
  tail call void @input_event(ptr noundef %18, i32 noundef 5, i32 noundef %conv7.i.i, i32 noundef %and.lobit.i.i) #6
  br label %if.end.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %adp5589_read.exit.i.if.else.i_crit_edge
  %21 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input.i.i, align 4
  %sub.i = add nsw i32 %and.i, -1
  %arrayidx.i = getelementptr %struct.adp5589_kpad, ptr %handle, i32 0, i32 3, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 2
  %conv8.i = zext i16 %24 to i32
  %and9.i = lshr i32 %call.i.i, 7
  %and9.lobit.i = and i32 %and9.i, 1
  tail call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %conv8.i, i32 noundef %and9.lobit.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %for.inc.i.i.if.end.i_crit_edge, %if.then.i.i, %if.then.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and6
  br i1 %exitcond.not.i, label %adp5589_report_events.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

adp5589_report_events.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input.i.i, align 4
  tail call void @input_event(ptr noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end10

if.end10:                                         ; preds = %adp5589_report_events.exit, %adp5589_read.exit24.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %conv = trunc i32 %call.i to i8
  %call.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5589_gpio_direction_input(ptr noundef %chip, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %var = getelementptr inbounds %struct.adp5589_kpad, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %bank1 = getelementptr inbounds %struct.adp_constants, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bank1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank1, align 4
  %arrayidx = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 9, i32 %off
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %call2 = tail call zeroext i8 %3(i8 noundef zeroext %5) #6
  %conv = zext i8 %call2 to i32
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %var, align 4
  %bit4 = getelementptr inbounds %struct.adp_constants, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %bit4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bit4, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %call7 = tail call zeroext i8 %9(i8 noundef zeroext %11) #6
  %gpio_lock = getelementptr inbounds %struct.adp5589_kpad, ptr %call, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #6
  %neg = xor i8 %call7, -1
  %arrayidx9 = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 13, i32 %conv
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %and = and i8 %13, %neg
  store i8 %and, ptr %arrayidx9, align 1
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %16 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %var, align 4
  %reg = getelementptr inbounds %struct.adp_constants, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %call13 = tail call zeroext i8 %19(i8 noundef zeroext 48) #6
  %add = add i8 %call13, %call2
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext %add, i8 noundef zeroext %21) #6
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5589_gpio_direction_output(ptr noundef %chip, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %var = getelementptr inbounds %struct.adp5589_kpad, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %bank1 = getelementptr inbounds %struct.adp_constants, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bank1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank1, align 4
  %arrayidx = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 9, i32 %off
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %call2 = tail call zeroext i8 %3(i8 noundef zeroext %5) #6
  %conv = zext i8 %call2 to i32
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %var, align 4
  %bit4 = getelementptr inbounds %struct.adp_constants, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %bit4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bit4, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %call7 = tail call zeroext i8 %9(i8 noundef zeroext %11) #6
  %gpio_lock = getelementptr inbounds %struct.adp5589_kpad, ptr %call, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #6
  %arrayidx9 = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 13, i32 %conv
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %or63 = or i8 %13, %call7
  store i8 %or63, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx12 = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 12, i32 %conv
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %or1464 = or i8 %15, %call7
  store i8 %or1464, ptr %arrayidx12, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i8 %call7, -1
  %arrayidx17 = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 12, i32 %conv
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx17, align 1
  %and = and i8 %17, %neg
  store i8 %and, ptr %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %var, align 4
  %reg = getelementptr inbounds %struct.adp_constants, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg, align 4
  %call21 = tail call zeroext i8 %23(i8 noundef zeroext 42) #6
  %add = add i8 %call21, %call2
  %arrayidx25 = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 12, i32 %conv
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx25, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext %add, i8 noundef zeroext %25) #6
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %28 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %var, align 4
  %reg29 = getelementptr inbounds %struct.adp_constants, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %reg29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg29, align 4
  %call30 = tail call zeroext i8 %31(i8 noundef zeroext 48) #6
  %add32 = add i8 %call30, %call2
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx9, align 1
  %call.i65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext %add32, i8 noundef zeroext %33) #6
  %or37 = or i32 %call.i65, %call.i
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #6
  ret i32 %or37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5589_gpio_get_value(ptr noundef %chip, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %var = getelementptr inbounds %struct.adp5589_kpad, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %bank1 = getelementptr inbounds %struct.adp_constants, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bank1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank1, align 4
  %arrayidx = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 9, i32 %off
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %call2 = tail call zeroext i8 %3(i8 noundef zeroext %5) #6
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %var, align 4
  %bit4 = getelementptr inbounds %struct.adp_constants, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %bit4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bit4, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %call7 = tail call zeroext i8 %9(i8 noundef zeroext %11) #6
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %14 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %var, align 4
  %reg = getelementptr inbounds %struct.adp_constants, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %call10 = tail call zeroext i8 %17(i8 noundef zeroext 22) #6
  %add = add i8 %call10, %call2
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5589_read.exit_crit_edge

entry.adp5589_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5589_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #9
  br label %adp5589_read.exit

adp5589_read.exit:                                ; preds = %do.end.i, %entry.adp5589_read.exit_crit_edge
  %conv8 = zext i8 %call7 to i32
  %and = and i32 %call.i, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5589_gpio_set_value(ptr noundef %chip, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %var = getelementptr inbounds %struct.adp5589_kpad, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %bank1 = getelementptr inbounds %struct.adp_constants, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bank1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank1, align 4
  %arrayidx = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 9, i32 %off
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %call2 = tail call zeroext i8 %3(i8 noundef zeroext %5) #6
  %conv = zext i8 %call2 to i32
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %var, align 4
  %bit4 = getelementptr inbounds %struct.adp_constants, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %bit4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bit4, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %call7 = tail call zeroext i8 %9(i8 noundef zeroext %11) #6
  %gpio_lock = getelementptr inbounds %struct.adp5589_kpad, ptr %call, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 12, i32 %conv
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %or39 = or i8 %13, %call7
  store i8 %or39, ptr %arrayidx9, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i8 %call7, -1
  %arrayidx13 = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 12, i32 %conv
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  %and = and i8 %15, %neg
  store i8 %and, ptr %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %18 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %var, align 4
  %reg = getelementptr inbounds %struct.adp_constants, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg, align 4
  %call17 = tail call zeroext i8 %21(i8 noundef zeroext 42) #6
  %add = add i8 %call17, %call2
  %arrayidx21 = getelementptr %struct.adp5589_kpad, ptr %call, i32 0, i32 12, i32 %conv
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx21, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %add, i8 noundef zeroext %23) #6
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5589_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.adp5589_kpad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5589_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.adp5589_kpad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !116, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_adp5589_keys__288_1061_adp5589_driver_init6, !1, !"__initcall__kmod_adp5589_keys__288_1061_adp5589_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1061, i32 1}
!2 = !{ptr @__exitcall_adp5589_driver_exit, !1, !"__exitcall_adp5589_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1063, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1064, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1065, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1054, i32 11}
!12 = !{ptr @adp5589_driver, !13, !"adp5589_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1052, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 956, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adp5589_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adp5589_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 961, i32 3}
!24 = !{ptr @adp5589_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @adp5589_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1015, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @adp5589_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @adp5589_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @const_adp5585, !32, !"const_adp5585", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 353, i32 35}
!33 = !{ptr @adp5585_reg_lut, !34, !"adp5585_reg_lut", i1 false, i1 false}
!34 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 305, i32 28}
!35 = !{ptr @const_adp5589, !36, !"const_adp5589", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 272, i32 35}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 378, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @adp5589_read._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @adp5589_read._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 836, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @adp5589_keypad_add._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @adp5589_keypad_add._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 841, i32 3}
!49 = !{ptr @adp5589_keypad_add._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adp5589_keypad_add._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 846, i32 3}
!53 = !{ptr @adp5589_keypad_add._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @adp5589_keypad_add._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 851, i32 3}
!57 = !{ptr @adp5589_keypad_add._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @adp5589_keypad_add._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 860, i32 4}
!61 = !{ptr @adp5589_keypad_add._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @adp5589_keypad_add._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 866, i32 4}
!65 = !{ptr @adp5589_keypad_add._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @adp5589_keypad_add._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 872, i32 3}
!69 = !{ptr @adp5589_keypad_add._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @adp5589_keypad_add._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 883, i32 16}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 921, i32 3}
!75 = !{ptr @adp5589_keypad_add._entry.36, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @adp5589_keypad_add._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 930, i32 3}
!79 = !{ptr @adp5589_keypad_add._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @adp5589_keypad_add._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 591, i32 3}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @adp5589_irq._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @adp5589_irq._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 679, i32 3}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @adp5589_setup._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @adp5589_setup._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 777, i32 3}
!94 = !{ptr @adp5589_setup._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @adp5589_setup._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 614, i32 2}
!98 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @adp5589_get_evcode._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @adp5589_get_evcode._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 810, i32 4}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @adp5589_report_switch_state._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @adp5589_report_switch_state._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 512, i32 3}
!108 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @adp5589_gpio_add._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @adp5589_gpio_add._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @adp5589_gpio_add.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 526, i32 2}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @adp5589_gpio_add.lock_key, !115, !"lock_key", i1 false, i1 false}
!115 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 528, i32 10}
!116 = !{ptr @adp5589_gpio_add.request_key, !115, !"request_key", i1 false, i1 false}
!117 = !{ptr @adp5589_dev_pm_ops, !118, !"adp5589_dev_pm_ops", i1 false, i1 false}
!118 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1041, i32 8}
!119 = !{ptr @adp5589_id, !120, !"adp5589_id", i1 false, i1 false}
!120 = !{!"../drivers/input/keyboard/adp5589-keys.c", i32 1043, i32 35}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i8 0, i8 2}
