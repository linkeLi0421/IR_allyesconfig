; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/max310x.c_pt.bc'
source_filename = "../drivers/tty/serial/max310x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max310x_devtype = type { [9 x i8], i32, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.max310x_port = type { ptr, ptr, ptr, %struct.gpio_chip, [0 x %struct.max310x_one] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.max310x_one = type { %struct.uart_port, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, i8, [128 x i8] }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__initcall__kmod_max310x__243_1535_max310x_uart_init6 = internal global ptr @max310x_uart_init, section ".initcall6.init", align 4
@max310x_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @max310x_id_table, ptr @max310x_spi_probe, ptr @max310x_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max310x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max310x_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@max310x_uart = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.38, i32 204, i32 209, i32 16, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_max310x_uart_exit = internal global ptr @max310x_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file244 = internal constant [40 x i8] c"max310x.file=drivers/tty/serial/max310x\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [20 x i8] c"max310x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [51 x i8] c"max310x.author=Alexander Shiyan <shc_work@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [42 x i8] c"max310x.description=MAX310X serial driver\00", section ".modinfo", align 1
@max310x_lines = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max310x_id_table = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"max3107\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max3107_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"max3108\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max3108_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"max3109\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max3109_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"max14830\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max14830_devtype to i32) }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max310x\00", [24 x i8] zeroinitializer }, align 32
@max310x_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max3107\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max3107_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max3108\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max3108_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max3109\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max3109_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max14830\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max14830_devtype }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@max310x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max310x_suspend, ptr @max310x_resume, ptr @max310x_suspend, ptr @max310x_resume, ptr @max310x_suspend, ptr @max310x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max3107_devtype = internal constant { %struct.max310x_devtype, [36 x i8] } { %struct.max310x_devtype { [9 x i8] c"MAX3107\00\00", i32 1, i8 -64, ptr @max3107_detect, ptr @max310x_power }, [36 x i8] zeroinitializer }, align 32
@max3108_devtype = internal constant { %struct.max310x_devtype, [36 x i8] } { %struct.max310x_devtype { [9 x i8] c"MAX3108\00\00", i32 1, i8 64, ptr @max3108_detect, ptr @max310x_power }, [36 x i8] zeroinitializer }, align 32
@max3109_devtype = internal constant { %struct.max310x_devtype, [36 x i8] } { %struct.max310x_devtype { [9 x i8] c"MAX3109\00\00", i32 2, i8 64, ptr @max3109_detect, ptr @max310x_power }, [36 x i8] zeroinitializer }, align 32
@max14830_devtype = internal constant { %struct.max310x_devtype, [36 x i8] } { %struct.max310x_devtype { [9 x i8] c"MAX14830\00", i32 4, i8 -128, ptr @max14830_detect, ptr @max14830_power }, [36 x i8] zeroinitializer }, align 32
@max3107_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s ID 0x%02x does not match\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max3107_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/tty/serial/max310x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max3107_detect._entry_ptr = internal global ptr @max3107_detect._entry, section ".printk_index", align 4
@max3108_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s not present\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max3108_detect\00", [17 x i8] zeroinitializer }, align 32
@max3108_detect._entry_ptr = internal global ptr @max3108_detect._entry, section ".printk_index", align 4
@max3109_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.8, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max3109_detect\00", [17 x i8] zeroinitializer }, align 32
@max3109_detect._entry_ptr = internal global ptr @max3109_detect._entry, section ".printk_index", align 4
@max14830_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max14830_detect\00", [16 x i8] zeroinitializer }, align 32
@max14830_detect._entry_ptr = internal global ptr @max14830_detect._entry, section ".printk_index", align 4
@regcfg = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max310x_reg_writeable, ptr null, ptr @max310x_reg_volatile, ptr @max310x_reg_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 128, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@max310x_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max310x:1485:(&regcfg)->lock\00", [35 x i8] zeroinitializer }, align 32
@max310x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error allocating port structure\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max310x_probe\00", [18 x i8] zeroinitializer }, align 32
@max310x_probe._entry_ptr = internal global ptr @max310x_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@max310x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.3, i32 1290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get clock rate\0A\00", [41 x i8] zeroinitializer }, align 32
@max310x_probe._entry_ptr.19 = internal global ptr @max310x_probe._entry.17, section ".printk_index", align 4
@max310x_probe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.20, i8 1, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reference clock set to %i Hz\0A\00", [34 x i8] zeroinitializer }, align 32
@max310x_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @max310x_tx_empty, ptr @max310x_set_mctrl, ptr @max310x_get_mctrl, ptr @max310x_null_void, ptr @max310x_start_tx, ptr null, ptr null, ptr null, ptr @max310x_null_void, ptr null, ptr @max310x_break_ctl, ptr @max310x_startup, ptr @max310x_shutdown, ptr null, ptr @max310x_set_termios, ptr null, ptr null, ptr @max310x_type, ptr @max310x_null_void, ptr @max310x_request_port, ptr @max310x_config_port, ptr @max310x_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max310x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&s->p[i].tx_work)\00", [60 x i8] zeroinitializer }, align 32
@max310x_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&s->p[i].md_work)\00", [60 x i8] zeroinitializer }, align 32
@max310x_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&s->p[i].rs_work)\00", [60 x i8] zeroinitializer }, align 32
@max310x_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max310x_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max310x_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.3, i32 1413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to reguest IRQ %i\0A\00", [38 x i8] zeroinitializer }, align 32
@max310x_probe._entry_ptr.28 = internal global ptr @max310x_probe._entry.26, section ".printk_index", align 4
@max310x_set_ref_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 617, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clock is not stable yet\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max310x_set_ref_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max310x_set_ref_clk._entry_ptr = internal global ptr @max310x_set_ref_clk._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@max310x_ist.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@max310x_handle_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.max310x_handle_rx = private unnamed_addr constant [18 x i8] c"max310x_handle_rx\00", align 1
@max310x_handle_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.max310x_handle_rx, ptr @.str.3, i32 679, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hardware RX FIFO overrun\0A\00", [38 x i8] zeroinitializer }, align 32
@max310x_handle_rx._entry_ptr = internal global ptr @max310x_handle_rx._entry, section ".printk_index", align 4
@max310x_handle_rx._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@max310x_handle_rx._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.max310x_handle_rx, ptr @.str.3, i32 696, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Possible RX FIFO overrun\0A\00", [38 x i8] zeroinitializer }, align 32
@max310x_handle_rx._entry_ptr.37 = internal global ptr @max310x_handle_rx._entry.35, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyMAX\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 94]
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"max310x_spi_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1505, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"max310x_uart\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 279, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"max310x_lines\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 288, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"max310x_id_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1496, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1507, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"max310x_dt_ids\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1446, i32 49 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"max310x_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1184, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"max3107_devtype\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 416, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"max3108_devtype\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 424, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"max3109_devtype\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 432, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"max14830_devtype\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 440, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 325, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 347, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 368, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 399, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"regcfg\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1455, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1485, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1267, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1272, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1274, i32 43 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1274, i32 58 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1276, i32 39 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1290, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1338, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"max310x_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1140, i32 30 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1367, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1369, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1371, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1402, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1413, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 617, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 679, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 696, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [32 x i8] c"../drivers/tty/serial/max310x.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 282, i32 14 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_max310x_uart_exit, ptr @__initcall__kmod_max310x__243_1535_max310x_uart_init6, ptr @max14830_detect._entry, ptr @max14830_detect._entry_ptr, ptr @max3107_detect._entry, ptr @max3107_detect._entry_ptr, ptr @max3108_detect._entry, ptr @max3108_detect._entry_ptr, ptr @max3109_detect._entry, ptr @max3109_detect._entry_ptr, ptr @max310x_handle_rx._entry, ptr @max310x_handle_rx._entry.35, ptr @max310x_handle_rx._entry_ptr, ptr @max310x_handle_rx._entry_ptr.37, ptr @max310x_probe._entry, ptr @max310x_probe._entry.17, ptr @max310x_probe._entry.26, ptr @max310x_probe._entry_ptr, ptr @max310x_probe._entry_ptr.19, ptr @max310x_probe._entry_ptr.28, ptr @max310x_set_ref_clk._entry, ptr @max310x_set_ref_clk._entry_ptr, ptr @max310x_uart_exit, ptr @max310x_spi_driver, ptr @max310x_uart, ptr @max310x_lines, ptr @max310x_id_table, ptr @.str, ptr @max310x_dt_ids, ptr @max310x_pm_ops, ptr @max3107_devtype, ptr @max3108_devtype, ptr @max3109_devtype, ptr @max14830_devtype, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @regcfg, ptr @max310x_spi_probe._key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @max310x_ops, ptr @max310x_probe.__key, ptr @.str.21, ptr @max310x_probe.__key.22, ptr @.str.23, ptr @max310x_probe.__key.24, ptr @.str.25, ptr @max310x_probe.lock_key, ptr @max310x_probe.request_key, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @max310x_handle_rx._rs, ptr @.str.32, ptr @.str.33, ptr @max310x_handle_rx._rs.34, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_uart to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_lines to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_id_table to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3107_devtype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3108_devtype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3109_devtype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14830_devtype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3107_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3108_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3109_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14830_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_set_ref_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_handle_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_handle_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_handle_rx._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max310x_handle_rx._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @max310x_lines, align 4
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @max310x_uart) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max310x_spi_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @max310x_uart) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max310x_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max310x_spi_driver, i32 0, i32 4)) #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @max310x_uart) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_spi_probe(ptr noundef %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %1 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  %cond6 = select i1 %tobool2.not, i32 26000000, i32 %2
  %3 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond6, ptr %max_speed_hz, align 8
  %call = tail call i32 @spi_setup(ptr noundef %spi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call ptr @device_get_match_data(ptr noundef %spi) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call ptr @spi_get_device_id(ptr noundef %spi) #10
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call12, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = inttoptr i32 %5 to ptr
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %devtype.0 = phi ptr [ %call9, %if.end.if.end13_crit_edge ], [ %6, %if.then11 ]
  %nr = getelementptr inbounds %struct.max310x_devtype, ptr %devtype.0, i32 0, i32 1
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %mul = shl i32 %8, 5
  %sub = add i32 %mul, -1
  store i32 %sub, ptr getelementptr inbounds (%struct.regmap_config, ptr @regcfg, i32 0, i32 19), align 4
  %call14 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @regcfg, ptr noundef nonnull @max310x_spi_probe._key, ptr noundef nonnull @.str.10) #10
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call16 = tail call fastcc i32 @max310x_probe(ptr noundef %spi, ptr noundef %devtype.0, ptr noundef %call14, i32 noundef %10)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end13 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_spi_remove(ptr nocapture noundef readonly %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nr33.i = getelementptr inbounds %struct.max310x_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nr33.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp34.i = icmp sgt i32 %5, 0
  br i1 %cmp34.i, label %entry.for.body.i_crit_edge, label %entry.max310x_remove.exit_crit_edge

entry.max310x_remove.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_remove.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.max310x_port, ptr %1, i32 0, i32 4, i32 %i.035.i
  %tx_work.i = getelementptr %struct.max310x_port, ptr %1, i32 0, i32 4, i32 %i.035.i, i32 1
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work.i) #10
  %md_work.i = getelementptr %struct.max310x_port, ptr %1, i32 0, i32 4, i32 %i.035.i, i32 2
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %md_work.i) #10
  %rs_work.i = getelementptr %struct.max310x_port, ptr %1, i32 0, i32 4, i32 %i.035.i, i32 3
  %call7.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %rs_work.i) #10
  %call10.i = tail call i32 @uart_remove_one_port(ptr noundef nonnull @max310x_uart, ptr noundef %arrayidx.i) #10
  %line.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 41
  %6 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line.i, align 4
  tail call void @_clear_bit(i32 noundef %7, ptr noundef nonnull @max310x_lines) #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %power.i = getelementptr inbounds %struct.max310x_devtype, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power.i, align 4
  tail call void %11(ptr noundef %arrayidx.i, i32 noundef 0) #10
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %nr.i = getelementptr inbounds %struct.max310x_devtype, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.max310x_remove.exit_crit_edge

for.body.i.max310x_remove.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_remove.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

max310x_remove.exit:                              ; preds = %for.body.i.max310x_remove.exit_crit_edge, %entry.max310x_remove.exit_crit_edge
  %clk.i = getelementptr inbounds %struct.max310x_port, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3107_detect(ptr noundef %dev) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.max310x_port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 31, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %and)
  %cmp.not = icmp eq i32 %and, 160
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %8, i32 noundef %6) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_power(ptr nocapture noundef readonly %port, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 9
  %conv2.i = select i1 %tobool.not, i32 32, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 32, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3108_detect(ptr noundef %dev) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.max310x_port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 30, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %6)
  %cmp.not = icmp eq i32 %6, 24
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %8) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3109_detect(ptr noundef %dev) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.max310x_port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 31, i32 noundef 206) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 5, ptr noundef nonnull %val) #10
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_write(ptr noundef %8, i32 noundef 31, i32 noundef 205) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp.not = icmp eq i32 %and, 192
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %10) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14830_detect(ptr noundef %dev) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.max310x_port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 31, i32 noundef 206) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 5, ptr noundef nonnull %val) #10
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_write(ptr noundef %8, i32 noundef 31, i32 noundef 205) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %and)
  %cmp.not = icmp eq i32 %and, 176
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %10) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max14830_power(ptr nocapture noundef readonly %port, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 27
  %conv2.i = select i1 %tobool.not, i32 64, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 64, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max310x_probe(ptr noundef %dev, ptr noundef %devtype, ptr noundef %regmap, i32 noundef %irq) unnamed_addr #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  %ret = alloca i32, align 4
  %uartclk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uartclk) #10
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %uartclk, align 4
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %regmap to i32
  br label %cleanup281

if.end:                                           ; preds = %entry
  %nr = getelementptr inbounds %struct.max310x_devtype, ptr %devtype, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 624) #10
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 360) #10
  %retval.0.i444 = select i1 %5, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i444, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %cleanup281

if.end5:                                          ; preds = %if.end
  %call.i445 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %uartclk, i32 noundef 1) #10
  %call7 = call i32 @device_property_match_string(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  %.str.16..str.15 = select i1 %cmp, ptr @.str.16, ptr @.str.15
  %call11 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull %.str.16..str.15) #10
  %7 = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %7, align 4
  %cmp.i446 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i446, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call11 to i32
  br label %cleanup281

if.end19:                                         ; preds = %if.end5
  %call.i447 = call i32 @clk_prepare(ptr noundef %call11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i447)
  %tobool.not.i = icmp eq i32 %call.i447, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.cleanup281_crit_edge

if.end19.cleanup281_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup281

if.end.i:                                         ; preds = %if.end19
  %call1.i = call i32 @clk_enable(ptr noundef %call11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end24, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %call11) #10
  br label %cleanup281

if.end24:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call26 = call i32 @clk_get_rate(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.end29, label %if.end24.if.end35_crit_edge

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end29:                                         ; preds = %if.end24
  %12 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp30 = icmp eq i32 %13, 0
  br i1 %cmp30, label %do.end34, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -22, ptr %ret, align 4
  br label %out_clk

if.end35:                                         ; preds = %if.end29.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %freq.0464 = phi i32 [ %13, %if.end29.if.end35_crit_edge ], [ %call26, %if.end24.if.end35_crit_edge ]
  %. = select i1 %cmp, i32 4000000, i32 35000000
  %.443 = select i1 %cmp, i32 1000000, i32 500000
  call void @__sanitizer_cov_trace_cmp4(i32 %freq.0464, i32 %.443)
  %cmp40 = icmp slt i32 %freq.0464, %.443
  call void @__sanitizer_cov_trace_cmp4(i32 %freq.0464, i32 %.)
  %cmp41 = icmp sgt i32 %freq.0464, %.
  %or.cond = or i1 %cmp40, %cmp41
  br i1 %or.cond, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -34, ptr %ret, align 4
  br label %out_clk

if.end43:                                         ; preds = %if.end35
  %regmap44 = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %regmap44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %regmap, ptr %regmap44, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %devtype, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i, align 4
  %detect = getelementptr inbounds %struct.max310x_devtype, ptr %devtype, i32 0, i32 3
  %19 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %detect, align 4
  %call46 = call i32 %20(ptr noundef %dev) #10
  %21 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call46, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.cond.preheader, label %if.end43.out_clk_crit_edge

if.end43.out_clk_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_clk

for.cond.preheader:                               ; preds = %if.end43
  %22 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp51469 = icmp sgt i32 %23, 0
  br i1 %cmp51469, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mode1 = getelementptr inbounds %struct.max310x_devtype, ptr %devtype, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end63.for.body_crit_edge, %for.body.lr.ph
  %i.0470 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end63.for.body_crit_edge ]
  %shl = shl i32 %i.0470, 5
  %24 = ptrtoint ptr %regmap44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap44, align 4
  %add = or i32 %shl, 10
  %call53 = call i32 @regmap_write(ptr noundef %25, i32 noundef %add, i32 noundef 1) #10
  %26 = ptrtoint ptr %regmap44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap44, align 4
  %call56 = call i32 @regmap_write(ptr noundef %27, i32 noundef %add, i32 noundef 0) #10
  %add59 = or i32 %shl, 28
  br label %do.body57

do.body57:                                        ; preds = %do.body57.do.body57_crit_edge, %for.body
  %28 = ptrtoint ptr %regmap44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap44, align 4
  %call60 = call i32 @regmap_read(ptr noundef %29, i32 noundef %add59, ptr noundef nonnull %ret) #10
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ret, align 4
  %cmp62.not = icmp eq i32 %31, 1
  br i1 %cmp62.not, label %do.end63, label %do.body57.do.body57_crit_edge

do.body57.do.body57_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

do.end63:                                         ; preds = %do.body57
  %32 = ptrtoint ptr %regmap44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap44, align 4
  %add65 = or i32 %shl, 9
  %34 = ptrtoint ptr %mode1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mode1, align 4
  %conv = zext i8 %35 to i32
  %call66 = call i32 @regmap_write(ptr noundef %33, i32 noundef %add65, i32 noundef %conv) #10
  %inc = add nuw nsw i32 %i.0470, 1
  %36 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr, align 4
  %cmp51 = icmp slt i32 %inc, %37
  br i1 %cmp51, label %do.end63.for.body_crit_edge, label %do.end63.for.end_crit_edge

do.end63.for.end_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end63.for.body_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %do.end63.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call68 = call fastcc i32 @max310x_set_ref_clk(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef %freq.0464, i1 noundef zeroext %cmp)
  %38 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call68, ptr %uartclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max310x_probe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max310x_probe, %if.then75)) #10
          to label %do.end78 [label %if.then75], !srcloc !128

if.then75:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %uartclk, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max310x_probe.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %40) #10
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %for.end
  %41 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp81471 = icmp sgt i32 %42, 0
  br i1 %cmp81471, label %for.body83.lr.ph, label %do.end78.for.end229_crit_edge

do.end78.for.end229_crit_edge:                    ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end229

for.body83.lr.ph:                                 ; preds = %do.end78
  %power = getelementptr inbounds %struct.max310x_devtype, ptr %devtype, i32 0, i32 4
  br label %for.body83

for.body83:                                       ; preds = %for.inc227.for.body83_crit_edge, %for.body83.lr.ph
  %i.1472 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc228, %for.inc227.for.body83_crit_edge ]
  %call84 = call i32 @_find_first_zero_bit_be(ptr noundef nonnull @max310x_lines, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 16
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -34, ptr %ret, align 4
  br label %out_uart

if.end88:                                         ; preds = %for.body83
  %arrayidx = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472
  %line89 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %44 = ptrtoint ptr %line89 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call84, ptr %line89, align 4
  %dev93 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %45 = ptrtoint ptr %dev93 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %dev93, align 4
  %irq97 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 20
  %46 = ptrtoint ptr %irq97 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %irq, ptr %irq97, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 94, ptr %type, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 23
  %48 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %fifosize, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 134225920, ptr %flags, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %50 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %iotype, align 2
  %mul = shl i32 %i.1472, 5
  %iobase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %51 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul, ptr %iobase, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %membase, align 4
  %53 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %uartclk, align 4
  %uartclk119 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 22
  %55 = ptrtoint ptr %uartclk119 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %uartclk119, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 18
  %56 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @max310x_rs485_config, ptr %rs485_config, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @max310x_ops, ptr %ops, align 4
  %58 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %add.i = or i32 %mul, 1
  %call2.i = call i32 @regmap_write(ptr noundef %61, i32 noundef %add.i, i32 noundef 0) #10
  %62 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev93, align 4
  %driver_data.i.i450 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %driver_data.i.i450 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i450, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %66 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %val.i, align 4
  %regmap.i451 = getelementptr inbounds %struct.max310x_port, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %regmap.i451 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i451, align 4
  %69 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iobase, align 4
  %add.i453 = add i32 %70, 2
  %call1.i454 = call i32 @regmap_read(ptr noundef %68, i32 noundef %add.i453, ptr noundef nonnull %val.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %tx_work = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 1
  call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #10
  %71 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 1, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @max310x_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry145 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 1, i32 1
  %72 = ptrtoint ptr %entry145 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %entry145, ptr %entry145, align 4
  %prev.i = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 1, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %entry145, ptr %prev.i, align 4
  %func = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 1, i32 2
  %74 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @max310x_tx_proc, ptr %func, align 4
  %md_work = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 2
  call void @__init_work(ptr noundef %md_work, i32 noundef 0) #10
  %75 = ptrtoint ptr %md_work to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %md_work, align 4
  %lockdep_map163 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map163, ptr noundef nonnull @.str.23, ptr noundef nonnull @max310x_probe.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry167 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 2, i32 1
  %76 = ptrtoint ptr %entry167 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry167, ptr %entry167, align 4
  %prev.i455 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 2, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i455 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry167, ptr %prev.i455, align 4
  %func171 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 2, i32 2
  %78 = ptrtoint ptr %func171 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @max310x_md_proc, ptr %func171, align 4
  %rs_work = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 3
  call void @__init_work(ptr noundef %rs_work, i32 noundef 0) #10
  %79 = ptrtoint ptr %rs_work to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -64, ptr %rs_work, align 4
  %lockdep_map186 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map186, ptr noundef nonnull @.str.25, ptr noundef nonnull @max310x_probe.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry190 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 3, i32 1
  %80 = ptrtoint ptr %entry190 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %entry190, ptr %entry190, align 4
  %prev.i456 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 3, i32 1, i32 1
  %81 = ptrtoint ptr %prev.i456 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %entry190, ptr %prev.i456, align 4
  %func194 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 3, i32 2
  %82 = ptrtoint ptr %func194 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @max310x_rs_proc, ptr %func194, align 4
  %83 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iobase, align 4
  %85 = trunc i32 %84 to i8
  %conv202 = or i8 %85, -128
  %wr_header = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 4
  %86 = ptrtoint ptr %wr_header to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv202, ptr %wr_header, align 4
  %rd_header = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.1472, i32 5
  %87 = ptrtoint ptr %rd_header to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %85, ptr %rd_header, align 1
  %call216 = call i32 @uart_add_one_port(ptr noundef nonnull @max310x_uart, ptr noundef %arrayidx) #10
  %88 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call216, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %for.inc227, label %if.then218

if.then218:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %dev93.le = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %89 = ptrtoint ptr %dev93.le to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %dev93.le, align 4
  br label %out_uart

for.inc227:                                       ; preds = %if.end88
  call void @_set_bit(i32 noundef %call84, ptr noundef nonnull @max310x_lines) #10
  %90 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %power, align 4
  call void %91(ptr noundef %arrayidx, i32 noundef 0) #10
  %inc228 = add nuw nsw i32 %i.1472, 1
  %92 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nr, align 4
  %cmp81 = icmp slt i32 %inc228, %93
  br i1 %cmp81, label %for.inc227.for.body83_crit_edge, label %for.inc227.for.end229_crit_edge

for.inc227.for.end229_crit_edge:                  ; preds = %for.inc227
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end229

for.inc227.for.body83_crit_edge:                  ; preds = %for.inc227
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body83

for.end229:                                       ; preds = %for.inc227.for.end229_crit_edge, %do.end78.for.end229_crit_edge
  %.lcssa = phi i32 [ %42, %do.end78.for.end229_crit_edge ], [ %93, %for.inc227.for.end229_crit_edge ]
  %gpio = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3
  %owner = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 4
  %94 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 2
  %95 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %dev, ptr %parent, align 4
  %96 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %devtype, ptr %gpio, align 4
  %direction_input = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 8
  %97 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @max310x_gpio_direction_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 10
  %98 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @max310x_gpio_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 9
  %99 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @max310x_gpio_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 12
  %100 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @max310x_gpio_set, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 14
  %101 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @max310x_gpio_set_config, ptr %set_config, align 4
  %base = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 19
  %102 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %base, align 4
  %.tr = trunc i32 %.lcssa to i16
  %conv240 = shl i16 %.tr, 2
  %ngpio = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 20
  %103 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv240, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.max310x_port, ptr %call.i, i32 0, i32 3, i32 23
  %104 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %can_sleep, align 4
  %call245 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio, ptr noundef nonnull %call.i, ptr noundef nonnull @max310x_probe.lock_key, ptr noundef nonnull @max310x_probe.request_key) #10
  %105 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call245, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end248, label %for.end229.out_uart_crit_edge

for.end229.out_uart_crit_edge:                    ; preds = %for.end229
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_uart

if.end248:                                        ; preds = %for.end229
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %106 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i457 = icmp eq ptr %107, null
  br i1 %tobool.not.i457, label %if.end.i458, label %if.end248.dev_name.exit_crit_edge

if.end248.dev_name.exit_crit_edge:                ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i458:                                      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i458, %if.end248.dev_name.exit_crit_edge
  %retval.0.i459 = phi ptr [ %109, %if.end.i458 ], [ %107, %if.end248.dev_name.exit_crit_edge ]
  %call250 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @max310x_ist, i32 noundef 8320, ptr noundef %retval.0.i459, ptr noundef nonnull %call.i) #10
  %110 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call250, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %dev_name.exit.cleanup281_crit_edge, label %do.end256

dev_name.exit.cleanup281_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup281

do.end256:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %irq) #13
  br label %out_uart

out_uart:                                         ; preds = %do.end256, %for.end229.out_uart_crit_edge, %if.then218, %if.then87
  %111 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp259473 = icmp sgt i32 %112, 0
  br i1 %cmp259473, label %out_uart.for.body261_crit_edge, label %out_uart.out_clk_crit_edge

out_uart.out_clk_crit_edge:                       ; preds = %out_uart
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_clk

out_uart.for.body261_crit_edge:                   ; preds = %out_uart
  br label %for.body261

for.body261:                                      ; preds = %for.inc277.for.body261_crit_edge, %out_uart.for.body261_crit_edge
  %i.2474 = phi i32 [ %inc278, %for.inc277.for.body261_crit_edge ], [ 0, %out_uart.for.body261_crit_edge ]
  %arrayidx263 = getelementptr %struct.max310x_port, ptr %call.i, i32 0, i32 4, i32 %i.2474
  %dev265 = getelementptr inbounds %struct.uart_port, ptr %arrayidx263, i32 0, i32 45
  %113 = ptrtoint ptr %dev265 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev265, align 4
  %tobool266.not = icmp eq ptr %114, null
  br i1 %tobool266.not, label %for.body261.for.inc277_crit_edge, label %if.then267

for.body261.for.inc277_crit_edge:                 ; preds = %for.body261
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc277

if.then267:                                       ; preds = %for.body261
  call void @__sanitizer_cov_trace_pc() #12
  %call271 = call i32 @uart_remove_one_port(ptr noundef nonnull @max310x_uart, ptr noundef %arrayidx263) #10
  %line275 = getelementptr inbounds %struct.uart_port, ptr %arrayidx263, i32 0, i32 41
  %115 = ptrtoint ptr %line275 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %line275, align 4
  call void @_clear_bit(i32 noundef %116, ptr noundef nonnull @max310x_lines) #10
  br label %for.inc277

for.inc277:                                       ; preds = %if.then267, %for.body261.for.inc277_crit_edge
  %inc278 = add nuw nsw i32 %i.2474, 1
  %117 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr, align 4
  %cmp259 = icmp slt i32 %inc278, %118
  br i1 %cmp259, label %for.inc277.for.body261_crit_edge, label %for.inc277.out_clk_crit_edge

for.inc277.out_clk_crit_edge:                     ; preds = %for.inc277
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_clk

for.inc277.for.body261_crit_edge:                 ; preds = %for.inc277
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body261

out_clk:                                          ; preds = %for.inc277.out_clk_crit_edge, %out_uart.out_clk_crit_edge, %if.end43.out_clk_crit_edge, %if.then42, %do.end34
  %119 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %7, align 4
  call void @clk_disable(ptr noundef %120) #10
  call void @clk_unprepare(ptr noundef %120) #10
  %121 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ret, align 4
  br label %cleanup281

cleanup281:                                       ; preds = %out_clk, %dev_name.exit.cleanup281_crit_edge, %if.then3.i, %if.end19.cleanup281_crit_edge, %if.then16, %do.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %9, %if.then16 ], [ %122, %out_clk ], [ -12, %do.end ], [ 0, %dev_name.exit.cleanup281_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i447, %if.end19.cleanup281_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uartclk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max310x_reg_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 31
  %switch.tableidx = add nsw i32 %and, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %0 = icmp ugt i32 %switch.tableidx, 16
  %switch.cast = trunc i32 %switch.tableidx to i17
  %switch.downshift = lshr i17 32682, %switch.cast
  %1 = and i17 %switch.downshift, 1
  %switch.masked = icmp ne i17 %1, 0
  %retval.0 = select i1 %0, i1 true, i1 %switch.masked
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max310x_reg_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 31
  %switch.downshift = lshr i32 -1845100171, %and
  %0 = and i32 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %switch.masked = icmp ne i32 %0, 0
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max310x_reg_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and)
  %0 = icmp ult i32 %and, 9
  %switch.cast = trunc i32 %and to i9
  %switch.downshift = lshr i9 -187, %switch.cast
  %1 = and i9 %switch.downshift, 1
  %2 = sext i9 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i9 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max310x_set_ref_clk(ptr noundef %dev, ptr nocapture noundef readonly %s, i32 noundef %freq, i1 noundef zeroext %xtal) unnamed_addr #3 align 64 {
max310x_update_best_err.exit:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = urem i32 %freq, 7372800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not144 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not144, label %for.end.thread, label %max310x_update_best_err.exit.for.body_crit_edge

max310x_update_best_err.exit.for.body_crit_edge:  ; preds = %max310x_update_best_err.exit
  br label %for.body

for.end.thread:                                   ; preds = %max310x_update_best_err.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or43161 = select i1 %xtal, i32 18, i32 16
  br label %if.else

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %max310x_update_best_err.exit.for.body_crit_edge
  %div.0148 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %max310x_update_best_err.exit.for.body_crit_edge ]
  %pllcfg.0147 = phi i32 [ %pllcfg.4, %for.inc.for.body_crit_edge ], [ 0, %max310x_update_best_err.exit.for.body_crit_edge ]
  %bestfreq.0146 = phi i32 [ %bestfreq.4, %for.inc.for.body_crit_edge ], [ %freq, %max310x_update_best_err.exit.for.body_crit_edge ]
  %besterr.1145 = phi i32 [ %besterr.9, %for.inc.for.body_crit_edge ], [ %rem.i, %max310x_update_best_err.exit.for.body_crit_edge ]
  %div193 = lshr i32 %div.0148, 1
  %add = add i32 %div193, %freq
  %div2 = udiv i32 %add, %div.0148
  %0 = add i32 %div2, -500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 300001, i32 %0)
  %1 = icmp ult i32 %0, 300001
  br i1 %1, label %if.end19.thread, label %if.end8

if.end19.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul nuw nsw i32 %div2, 6
  %rem.i104 = urem i32 %mul, 7372800
  call void @__sanitizer_cov_trace_cmp4(i32 %besterr.1145, i32 %rem.i104)
  %.not143 = icmp ugt i32 %besterr.1145, %rem.i104
  %2 = tail call i32 @llvm.umin.i32(i32 %besterr.1145, i32 %rem.i104)
  %spec.select = select i1 %.not143, i32 %mul, i32 %bestfreq.0146
  %spec.select94 = select i1 %.not143, i32 %div.0148, i32 %pllcfg.0147
  br label %if.then24

if.end8:                                          ; preds = %for.body
  %3 = add i32 %div2, -850000
  call void @__sanitizer_cov_trace_const_cmp4(i32 350001, i32 %3)
  %4 = icmp ult i32 %3, 350001
  br i1 %4, label %if.then13, label %if.end8.if.end19_crit_edge

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %mul9 = mul nuw nsw i32 %div2, 48
  %rem.i108 = urem i32 %mul9, 7372800
  call void @__sanitizer_cov_trace_cmp4(i32 %besterr.1145, i32 %rem.i108)
  %.not142 = icmp ugt i32 %besterr.1145, %rem.i108
  %5 = tail call i32 @llvm.umin.i32(i32 %besterr.1145, i32 %rem.i108)
  %or17 = or i32 %div.0148, 64
  %spec.select96 = select i1 %.not142, i32 %mul9, i32 %bestfreq.0146
  %spec.select97 = select i1 %.not142, i32 %or17, i32 %pllcfg.0147
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end8.if.end19_crit_edge
  %besterr.5 = phi i32 [ %5, %if.then13 ], [ %besterr.1145, %if.end8.if.end19_crit_edge ]
  %bestfreq.2 = phi i32 [ %spec.select96, %if.then13 ], [ %bestfreq.0146, %if.end8.if.end19_crit_edge ]
  %pllcfg.2 = phi i32 [ %spec.select97, %if.then13 ], [ %pllcfg.0147, %if.end8.if.end19_crit_edge ]
  %6 = add i32 %div2, -425000
  call void @__sanitizer_cov_trace_const_cmp4(i32 575001, i32 %6)
  %7 = icmp ult i32 %6, 575001
  br i1 %7, label %if.end19.if.then24_crit_edge, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end19.if.then24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then24:                                        ; preds = %if.end19.if.then24_crit_edge, %if.end19.thread
  %pllcfg.2158 = phi i32 [ %spec.select94, %if.end19.thread ], [ %pllcfg.2, %if.end19.if.then24_crit_edge ]
  %bestfreq.2157 = phi i32 [ %spec.select, %if.end19.thread ], [ %bestfreq.2, %if.end19.if.then24_crit_edge ]
  %besterr.5156 = phi i32 [ %2, %if.end19.thread ], [ %besterr.5, %if.end19.if.then24_crit_edge ]
  %mul20 = mul nuw nsw i32 %div2, 96
  %rem.i112 = urem i32 %mul20, 7372800
  call void @__sanitizer_cov_trace_cmp4(i32 %besterr.5156, i32 %rem.i112)
  %.not141 = icmp ugt i32 %besterr.5156, %rem.i112
  %8 = tail call i32 @llvm.umin.i32(i32 %besterr.5156, i32 %rem.i112)
  %or28 = or i32 %div.0148, 128
  %spec.select99 = select i1 %.not141, i32 %mul20, i32 %bestfreq.2157
  %spec.select100 = select i1 %.not141, i32 %or28, i32 %pllcfg.2158
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end19.if.end30_crit_edge
  %besterr.7 = phi i32 [ %8, %if.then24 ], [ %besterr.5, %if.end19.if.end30_crit_edge ]
  %bestfreq.3 = phi i32 [ %spec.select99, %if.then24 ], [ %bestfreq.2, %if.end19.if.end30_crit_edge ]
  %pllcfg.3 = phi i32 [ %spec.select100, %if.then24 ], [ %pllcfg.2, %if.end19.if.end30_crit_edge ]
  %9 = add i32 %div2, -390000
  call void @__sanitizer_cov_trace_const_cmp4(i32 277001, i32 %9)
  %10 = icmp ult i32 %9, 277001
  br i1 %10, label %if.then35, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %mul31 = mul nuw nsw i32 %div2, 144
  %rem.i116 = urem i32 %mul31, 7372800
  call void @__sanitizer_cov_trace_cmp4(i32 %besterr.7, i32 %rem.i116)
  %.not = icmp ugt i32 %besterr.7, %rem.i116
  %11 = tail call i32 @llvm.umin.i32(i32 %besterr.7, i32 %rem.i116)
  %or39 = or i32 %div.0148, 192
  %spec.select102 = select i1 %.not, i32 %mul31, i32 %bestfreq.3
  %spec.select103 = select i1 %.not, i32 %or39, i32 %pllcfg.3
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %if.end30.for.inc_crit_edge
  %besterr.9 = phi i32 [ %11, %if.then35 ], [ %besterr.7, %if.end30.for.inc_crit_edge ]
  %bestfreq.4 = phi i32 [ %spec.select102, %if.then35 ], [ %bestfreq.3, %if.end30.for.inc_crit_edge ]
  %pllcfg.4 = phi i32 [ %spec.select103, %if.then35 ], [ %pllcfg.3, %if.end30.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %div.0148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %div.0148)
  %cmp = icmp ugt i32 %div.0148, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %besterr.9)
  %tobool.not = icmp eq i32 %besterr.9, 0
  %or.cond132 = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond132, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %or43 = select i1 %xtal, i32 18, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pllcfg.4)
  %tobool44.not = icmp eq i32 %pllcfg.4, 0
  br i1 %tobool44.not, label %for.end.if.else_crit_edge, label %if.then45

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %or46 = or i32 %or43, 4
  %regmap = getelementptr inbounds %struct.max310x_port, ptr %s, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call47 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 26, i32 noundef %pllcfg.4) #10
  br label %if.end49

if.else:                                          ; preds = %for.end.if.else_crit_edge, %for.end.thread
  %or43165 = phi i32 [ %or43161, %for.end.thread ], [ %or43, %for.end.if.else_crit_edge ]
  %bestfreq.0.lcssa164 = phi i32 [ %freq, %for.end.thread ], [ %bestfreq.4, %for.end.if.else_crit_edge ]
  %or48 = or i32 %or43165, 8
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then45
  %bestfreq.0.lcssa163 = phi i32 [ %bestfreq.4, %if.then45 ], [ %bestfreq.0.lcssa164, %if.else ]
  %clksrc.0 = phi i32 [ %or46, %if.then45 ], [ %or48, %if.else ]
  %regmap50 = getelementptr inbounds %struct.max310x_port, ptr %s, i32 0, i32 1
  %14 = ptrtoint ptr %regmap50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap50, align 4
  %call51 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 30, i32 noundef %clksrc.0) #10
  br i1 %xtal, label %if.then53, label %if.end49.if.end59_crit_edge

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then53:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val, align 4, !annotation !129
  tail call void @msleep(i32 noundef 10) #10
  %17 = ptrtoint ptr %regmap50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap50, align 4
  %call55 = call i32 @regmap_read(ptr noundef %18, i32 noundef 8, ptr noundef nonnull %val) #10
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %do.end, label %if.then53.if.end58_crit_edge

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end:                                           ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29) #13
  br label %if.end58

if.end58:                                         ; preds = %do.end, %if.then53.if.end58_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end49.if.end59_crit_edge
  ret i32 %bestfreq.0.lcssa163
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_rs485_config(ptr noundef %port, ptr nocapture noundef %rs485) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 1
  %0 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_rts_before_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %2 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_rts_after_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp1 = icmp ugt i32 %3, 15
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rs485, align 4
  %and = and i32 %5, 19
  store i32 %and, ptr %rs485, align 4
  %padding = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 3
  %6 = call ptr @memset(ptr %padding, i32 0, i32 20)
  %rs4852 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %7 = call ptr @memcpy(ptr %rs4852, ptr %rs485, i32 32)
  %rs_work = getelementptr inbounds %struct.max310x_one, ptr %port, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %rs_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_tx_proc(ptr noundef %ws) #3 align 64 {
entry:
  %msg.i.i128.i = alloca %struct.spi_message, align 4
  %xfer.i129.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i107.i = alloca %struct.spi_message, align 4
  %xfer.i108.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [2 x %struct.spi_transfer], align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -360
  %state.i = getelementptr i8, ptr %ws, i32 -212
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %xmit1.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %x_char.i = getelementptr i8, ptr %ws, i32 -224
  %2 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !130

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr i8, ptr %ws, i32 -112
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.max310x_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %iobase.i.i = getelementptr i8, ptr %ws, i32 -316
  %10 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i.i, align 4
  %conv1.i.i = zext i8 %3 to i32
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %11, i32 noundef %conv1.i.i) #10
  %tx.i = getelementptr i8, ptr %ws, i32 -188
  %12 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %tx.i, align 4
  %14 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %x_char.i, align 4
  br label %max310x_handle_tx.exit

if.end.i:                                         ; preds = %entry
  %head.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i = icmp eq i32 %16, %18
  br i1 %cmp.i, label %if.end.i.max310x_handle_tx.exit_crit_edge, label %lor.lhs.false.i

if.end.i.max310x_handle_tx.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_handle_tx.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stopped.i.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i.max310x_handle_tx.exit_crit_edge

land.lhs.true.i.i.max310x_handle_tx.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_handle_tx.exit

land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr i8, ptr %ws, i32 -152
  %23 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool4.not.i.not.i, label %if.end8.i, label %uart_tx_stopped.exit.i.max310x_handle_tx.exit_crit_edge

uart_tx_stopped.exit.i.max310x_handle_tx.exit_crit_edge: ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_handle_tx.exit

if.end8.i:                                        ; preds = %uart_tx_stopped.exit.i
  %sub.i = sub i32 %16, %18
  %and.i = and i32 %sub.i, 4095
  %sub12.i = sub i32 4096, %18
  %add.i = add i32 %sub12.i, %16
  %and14.i = and i32 %add.i, 4095
  %25 = tail call i32 @llvm.smin.i32(i32 %and14.i, i32 %sub12.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end8.i.if.end49.i_crit_edge, label %if.then23.i, !prof !132

if.end8.i.if.end49.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.then23.i:                                      ; preds = %if.end8.i
  %dev.i102.i = getelementptr i8, ptr %ws, i32 -112
  %26 = ptrtoint ptr %dev.i102.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i102.i, align 4
  %driver_data.i.i103.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i103.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %val.i.i, align 4
  %regmap.i104.i = getelementptr inbounds %struct.max310x_port, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %regmap.i104.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i104.i, align 4
  %iobase.i105.i = getelementptr i8, ptr %ws, i32 -316
  %33 = ptrtoint ptr %iobase.i105.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase.i105.i, align 4
  %add.i.i = add i32 %34, 17
  %call1.i.i = call i32 @regmap_read(ptr noundef %32, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #10
  %35 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %conv.i = and i32 %36, 255
  %fifosize.i = getelementptr i8, ptr %ws, i32 -228
  %37 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fifosize.i, align 4
  %sub25.i = sub i32 %38, %conv.i
  %39 = call i32 @llvm.umin.i32(i32 %and.i, i32 %sub25.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %25)
  %cmp32.i = icmp ugt i32 %39, %25
  %40 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xmit1.i, align 4
  %42 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %43
  br i1 %cmp32.i, label %if.then34.i, label %if.else.i

if.then34.i:                                      ; preds = %if.then23.i
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i) #10
  %44 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %45 = call ptr @memset(ptr %44, i32 0, i32 188)
  %wr_header.i.i = getelementptr i8, ptr %ws, i32 132
  %46 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %wr_header.i.i, ptr %xfer.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %len1.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1
  %48 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %arrayinit.element.i.i, align 4
  %len3.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 2
  %49 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %25, ptr %len3.i.i, align 4
  %50 = ptrtoint ptr %dev.i102.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i102.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  %52 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %53 = call ptr @memset(ptr %52, i32 0, i32 40)
  %54 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %56 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #10
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then34.i.spi_message_add_tail.exit.i.i.i.i_crit_edge

if.then34.i.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %59 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %if.then34.i.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i.i.i, ptr noundef %63, ptr noundef nonnull %msg.i.i.i) #10
  br i1 %call.i.i.i.1.i.i.i.i, label %if.end.i.i.i.1.i.i.i.i, label %spi_message_add_tail.exit.i.i.i.i.max310x_batch_write.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.max310x_batch_write.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_batch_write.exit.i

if.end.i.i.i.1.i.i.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %transfer_list.i.1.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %65 = ptrtoint ptr %transfer_list.i.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i.i, ptr %transfer_list.i.1.i.i.i.i, align 4
  %prev3.i.i.i.1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i.1.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %transfer_list.i.1.i.i.i.i, ptr %63, align 4
  br label %max310x_batch_write.exit.i

max310x_batch_write.exit.i:                       ; preds = %if.end.i.i.i.1.i.i.i.i, %spi_message_add_tail.exit.i.i.i.i.max310x_batch_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %51, ptr noundef nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i) #10
  %68 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xmit1.i, align 4
  %sub37.i = sub i32 %39, %25
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i108.i) #10
  %70 = getelementptr inbounds i8, ptr %xfer.i108.i, i32 4
  %71 = call ptr @memset(ptr %70, i32 0, i32 188)
  %72 = ptrtoint ptr %xfer.i108.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %wr_header.i.i, ptr %xfer.i108.i, align 4
  %len1.i110.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i108.i, i32 0, i32 2
  %73 = ptrtoint ptr %len1.i110.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %len1.i110.i, align 4
  %arrayinit.element.i111.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i108.i, i32 1
  %74 = ptrtoint ptr %arrayinit.element.i111.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %69, ptr %arrayinit.element.i111.i, align 4
  %len3.i112.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i108.i, i32 1, i32 2
  %75 = ptrtoint ptr %len3.i112.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub37.i, ptr %len3.i112.i, align 4
  %76 = ptrtoint ptr %dev.i102.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i102.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i107.i) #10
  %78 = getelementptr inbounds i8, ptr %msg.i.i107.i, i32 8
  %79 = call ptr @memset(ptr %78, i32 0, i32 40)
  %80 = ptrtoint ptr %msg.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %msg.i.i107.i, ptr %msg.i.i107.i, align 4
  %prev.i.i.i.i.i.i114.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i107.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg.i.i107.i, ptr %prev.i.i.i.i.i.i114.i, align 4
  %resources.i.i.i.i.i115.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i107.i, i32 0, i32 10
  %82 = ptrtoint ptr %resources.i.i.i.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %resources.i.i.i.i.i115.i, ptr %resources.i.i.i.i.i115.i, align 4
  %prev.i2.i.i.i.i.i116.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i107.i, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %prev.i2.i.i.i.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %resources.i.i.i.i.i115.i, ptr %prev.i2.i.i.i.i.i116.i, align 4
  %transfer_list.i.i.i.i117.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i108.i, i32 0, i32 18
  %call.i.i.i.i.i.i118.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i117.i, ptr noundef nonnull %msg.i.i107.i, ptr noundef nonnull %msg.i.i107.i) #10
  br i1 %call.i.i.i.i.i.i118.i, label %if.end.i.i.i.i.i.i120.i, label %max310x_batch_write.exit.i.spi_message_add_tail.exit.i.i.i123.i_crit_edge

max310x_batch_write.exit.i.spi_message_add_tail.exit.i.i.i123.i_crit_edge: ; preds = %max310x_batch_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit.i.i.i123.i

if.end.i.i.i.i.i.i120.i:                          ; preds = %max310x_batch_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %prev.i.i.i.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %transfer_list.i.i.i.i117.i, ptr %prev.i.i.i.i.i.i114.i, align 4
  %85 = ptrtoint ptr %transfer_list.i.i.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i.i107.i, ptr %transfer_list.i.i.i.i117.i, align 4
  %prev3.i.i.i.i.i.i119.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i108.i, i32 0, i32 18, i32 1
  %86 = ptrtoint ptr %prev3.i.i.i.i.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %msg.i.i107.i, ptr %prev3.i.i.i.i.i.i119.i, align 4
  %87 = ptrtoint ptr %msg.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %transfer_list.i.i.i.i117.i, ptr %msg.i.i107.i, align 4
  br label %spi_message_add_tail.exit.i.i.i123.i

spi_message_add_tail.exit.i.i.i123.i:             ; preds = %if.end.i.i.i.i.i.i120.i, %max310x_batch_write.exit.i.spi_message_add_tail.exit.i.i.i123.i_crit_edge
  %transfer_list.i.1.i.i.i121.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i108.i, i32 1, i32 18
  %88 = ptrtoint ptr %prev.i.i.i.i.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i.i.i.i.i114.i, align 4
  %call.i.i.i.1.i.i.i122.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i.i121.i, ptr noundef %89, ptr noundef nonnull %msg.i.i107.i) #10
  br i1 %call.i.i.i.1.i.i.i122.i, label %if.end.i.i.i.1.i.i.i125.i, label %spi_message_add_tail.exit.i.i.i123.i.max310x_batch_write.exit127.i_crit_edge

spi_message_add_tail.exit.i.i.i123.i.max310x_batch_write.exit127.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_batch_write.exit127.i

if.end.i.i.i.1.i.i.i125.i:                        ; preds = %spi_message_add_tail.exit.i.i.i123.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %prev.i.i.i.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %transfer_list.i.1.i.i.i121.i, ptr %prev.i.i.i.i.i.i114.i, align 4
  %91 = ptrtoint ptr %transfer_list.i.1.i.i.i121.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %msg.i.i107.i, ptr %transfer_list.i.1.i.i.i121.i, align 4
  %prev3.i.i.i.1.i.i.i124.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i108.i, i32 1, i32 18, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i.1.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i.i.1.i.i.i124.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %transfer_list.i.1.i.i.i121.i, ptr %89, align 4
  br label %max310x_batch_write.exit127.i

max310x_batch_write.exit127.i:                    ; preds = %if.end.i.i.i.1.i.i.i125.i, %spi_message_add_tail.exit.i.i.i123.i.max310x_batch_write.exit127.i_crit_edge
  %call.i.i126.i = call i32 @spi_sync(ptr noundef %77, ptr noundef nonnull %msg.i.i107.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i107.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i108.i) #10
  br label %if.end41.i

if.else.i:                                        ; preds = %if.then23.i
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i129.i) #10
  %94 = getelementptr inbounds i8, ptr %xfer.i129.i, i32 4
  %95 = call ptr @memset(ptr %94, i32 0, i32 188)
  %wr_header.i130.i = getelementptr i8, ptr %ws, i32 132
  %96 = ptrtoint ptr %xfer.i129.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %wr_header.i130.i, ptr %xfer.i129.i, align 4
  %len1.i131.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i129.i, i32 0, i32 2
  %97 = ptrtoint ptr %len1.i131.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %len1.i131.i, align 4
  %arrayinit.element.i132.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i129.i, i32 1
  %98 = ptrtoint ptr %arrayinit.element.i132.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr.i, ptr %arrayinit.element.i132.i, align 4
  %len3.i133.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i129.i, i32 1, i32 2
  %99 = ptrtoint ptr %len3.i133.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %39, ptr %len3.i133.i, align 4
  %100 = ptrtoint ptr %dev.i102.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i102.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i128.i) #10
  %102 = getelementptr inbounds i8, ptr %msg.i.i128.i, i32 8
  %103 = call ptr @memset(ptr %102, i32 0, i32 40)
  %104 = ptrtoint ptr %msg.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %msg.i.i128.i, ptr %msg.i.i128.i, align 4
  %prev.i.i.i.i.i.i135.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i128.i, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i.i.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %msg.i.i128.i, ptr %prev.i.i.i.i.i.i135.i, align 4
  %resources.i.i.i.i.i136.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i128.i, i32 0, i32 10
  %106 = ptrtoint ptr %resources.i.i.i.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %resources.i.i.i.i.i136.i, ptr %resources.i.i.i.i.i136.i, align 4
  %prev.i2.i.i.i.i.i137.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i128.i, i32 0, i32 10, i32 1
  %107 = ptrtoint ptr %prev.i2.i.i.i.i.i137.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %resources.i.i.i.i.i136.i, ptr %prev.i2.i.i.i.i.i137.i, align 4
  %transfer_list.i.i.i.i138.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i129.i, i32 0, i32 18
  %call.i.i.i.i.i.i139.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i138.i, ptr noundef nonnull %msg.i.i128.i, ptr noundef nonnull %msg.i.i128.i) #10
  br i1 %call.i.i.i.i.i.i139.i, label %if.end.i.i.i.i.i.i141.i, label %if.else.i.spi_message_add_tail.exit.i.i.i144.i_crit_edge

if.else.i.spi_message_add_tail.exit.i.i.i144.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit.i.i.i144.i

if.end.i.i.i.i.i.i141.i:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %prev.i.i.i.i.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %transfer_list.i.i.i.i138.i, ptr %prev.i.i.i.i.i.i135.i, align 4
  %109 = ptrtoint ptr %transfer_list.i.i.i.i138.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %msg.i.i128.i, ptr %transfer_list.i.i.i.i138.i, align 4
  %prev3.i.i.i.i.i.i140.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i129.i, i32 0, i32 18, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i.i.i.i140.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %msg.i.i128.i, ptr %prev3.i.i.i.i.i.i140.i, align 4
  %111 = ptrtoint ptr %msg.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %transfer_list.i.i.i.i138.i, ptr %msg.i.i128.i, align 4
  br label %spi_message_add_tail.exit.i.i.i144.i

spi_message_add_tail.exit.i.i.i144.i:             ; preds = %if.end.i.i.i.i.i.i141.i, %if.else.i.spi_message_add_tail.exit.i.i.i144.i_crit_edge
  %transfer_list.i.1.i.i.i142.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i129.i, i32 1, i32 18
  %112 = ptrtoint ptr %prev.i.i.i.i.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i.i.i.i.i135.i, align 4
  %call.i.i.i.1.i.i.i143.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i.i142.i, ptr noundef %113, ptr noundef nonnull %msg.i.i128.i) #10
  br i1 %call.i.i.i.1.i.i.i143.i, label %if.end.i.i.i.1.i.i.i146.i, label %spi_message_add_tail.exit.i.i.i144.i.max310x_batch_write.exit148.i_crit_edge

spi_message_add_tail.exit.i.i.i144.i.max310x_batch_write.exit148.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_batch_write.exit148.i

if.end.i.i.i.1.i.i.i146.i:                        ; preds = %spi_message_add_tail.exit.i.i.i144.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %prev.i.i.i.i.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %transfer_list.i.1.i.i.i142.i, ptr %prev.i.i.i.i.i.i135.i, align 4
  %115 = ptrtoint ptr %transfer_list.i.1.i.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %msg.i.i128.i, ptr %transfer_list.i.1.i.i.i142.i, align 4
  %prev3.i.i.i.1.i.i.i145.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i129.i, i32 1, i32 18, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i.1.i.i.i145.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev3.i.i.i.1.i.i.i145.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %transfer_list.i.1.i.i.i142.i, ptr %113, align 4
  br label %max310x_batch_write.exit148.i

max310x_batch_write.exit148.i:                    ; preds = %if.end.i.i.i.1.i.i.i146.i, %spi_message_add_tail.exit.i.i.i144.i.max310x_batch_write.exit148.i_crit_edge
  %call.i.i147.i = call i32 @spi_sync(ptr noundef %101, ptr noundef nonnull %msg.i.i128.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i128.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i129.i) #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %max310x_batch_write.exit148.i, %max310x_batch_write.exit127.i
  %tx43.i = getelementptr i8, ptr %ws, i32 -188
  %118 = ptrtoint ptr %tx43.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx43.i, align 4
  %add44.i = add i32 %119, %39
  store i32 %add44.i, ptr %tx43.i, align 4
  %120 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tail.i, align 4
  %add46.i = add i32 %121, %39
  %and47.i = and i32 %add46.i, 4095
  store i32 %and47.i, ptr %tail.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end41.i, %if.end8.i.if.end49.i_crit_edge
  %122 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %head.i, align 4
  %124 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tail.i, align 4
  %sub52.i = sub i32 %123, %125
  %and53.i = and i32 %sub52.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %cmp54.i = icmp eq i32 %and53.i, 0
  br i1 %cmp54.i, label %if.then56.i, label %if.end49.i.max310x_handle_tx.exit_crit_edge

if.end49.i.max310x_handle_tx.exit_crit_edge:      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_handle_tx.exit

if.then56.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_write_wakeup(ptr noundef %add.ptr) #10
  br label %max310x_handle_tx.exit

max310x_handle_tx.exit:                           ; preds = %if.then56.i, %if.end49.i.max310x_handle_tx.exit_crit_edge, %uart_tx_stopped.exit.i.max310x_handle_tx.exit_crit_edge, %land.lhs.true.i.i.max310x_handle_tx.exit_crit_edge, %if.end.i.max310x_handle_tx.exit_crit_edge, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_md_proc(ptr nocapture noundef readonly %ws) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mctrl = getelementptr i8, ptr %ws, i32 -192
  %0 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mctrl, align 4
  %and = lshr i32 %1, 10
  %conv = and i32 %and, 32
  %dev.i = getelementptr i8, ptr %ws, i32 -156
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr i8, ptr %ws, i32 -360
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %9, 10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add.i, i32 noundef 32, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_rs_proc(ptr nocapture noundef readonly %ws) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rs485 = getelementptr i8, ptr %ws, i32 -168
  %delay_rts_before_send = getelementptr i8, ptr %ws, i32 -164
  %0 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_rts_before_send, align 4
  %shl = shl i32 %1, 4
  %delay_rts_after_send = getelementptr i8, ptr %ws, i32 -160
  %2 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_rts_after_send, align 4
  %or = or i32 %shl, %3
  %dev.i = getelementptr i8, ptr %ws, i32 -200
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr i8, ptr %ws, i32 -404
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %11, 13
  %conv1.i = and i32 %or, 255
  %call2.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add.i, i32 noundef %conv1.i) #10
  %12 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rs485, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %14 = shl i32 %13, 3
  %15 = and i32 %14, 128
  %16 = xor i32 %15, 128
  %17 = shl nuw nsw i32 %and, 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i24 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i24, align 4
  %regmap.i25 = getelementptr inbounds %struct.max310x_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i25, align 4
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add.i27 = add i32 %25, 9
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %add.i27, i32 noundef 16, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i29 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i29, align 4
  %regmap.i30 = getelementptr inbounds %struct.max310x_port, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i30, align 4
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i, align 4
  %add.i32 = add i32 %33, 10
  %conv2.i33 = select i1 %tobool.not, i32 0, i32 %16
  %call.i.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %add.i32, i32 noundef 128, i32 noundef %conv2.i33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %div3 = lshr i32 %offset, 2
  %arrayidx = getelementptr %struct.max310x_port, ptr %call, i32 0, i32 4, i32 %div3
  %rem = and i32 %offset, 3
  %shl = shl nuw nsw i32 1, %rem
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 24
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_gpio_get(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %div5 = lshr i32 %offset, 2
  %arrayidx = getelementptr %struct.max310x_port, ptr %call, i32 0, i32 4, i32 %div5
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %8, 25
  %call1.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %add.i, ptr noundef nonnull %val.i) #10
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %11 = lshr i32 %10, 4
  %shr = and i32 %11, 15
  %rem = and i32 %offset, 3
  %12 = lshr i32 %shr, %rem
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %rem = and i32 %offset, 3
  %shl = shl nuw nsw i32 1, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %div16 = lshr i32 %offset, 2
  %arrayidx = getelementptr %struct.max310x_port, ptr %call, i32 0, i32 4, i32 %div16
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 25
  %conv2.i = select i1 %tobool.not, i32 0, i32 %shl
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef %shl, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i18 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i18, align 4
  %regmap.i19 = getelementptr inbounds %struct.max310x_port, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i19, align 4
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add.i21 = add i32 %15, 24
  %call.i.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add.i21, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %rem = and i32 %offset, 3
  %shl = shl nuw nsw i32 1, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %div7 = lshr i32 %offset, 2
  %arrayidx = getelementptr %struct.max310x_port, ptr %call, i32 0, i32 4, i32 %div7
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 25
  %conv2.i = select i1 %tobool.not, i32 0, i32 %shl
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef %shl, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %div17 = lshr i32 %offset, 2
  %arrayidx = getelementptr %struct.max310x_port, ptr %call, i32 0, i32 4, i32 %div17
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 6, label %sw.bb
    i8 8, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rem = and i32 %offset, 3
  %add = or i32 %rem, 4
  %shl = shl nuw i32 1, %add
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %8, 24
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add.i, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rem8 = and i32 %offset, 3
  %add9 = or i32 %rem8, 4
  %shl10 = shl nuw i32 1, %add9
  %dev.i18 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %9 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i18, align 4
  %driver_data.i.i19 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i19, align 4
  %regmap.i20 = getelementptr inbounds %struct.max310x_port, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i20, align 4
  %iobase.i21 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %iobase.i21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i21, align 4
  %add.i22 = add i32 %16, 24
  %call.i.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %add.i22, i32 noundef %shl10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb7 ], [ 0, %sw.bb ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_ist(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %nr = getelementptr inbounds %struct.max310x_devtype, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.body.preheader, label %if.else

do.body.preheader:                                ; preds = %entry
  %regmap = getelementptr inbounds %struct.max310x_port, ptr %dev_id, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %cleanup, %do.body.preheader
  %handled.0 = phi i8 [ %spec.select, %cleanup ], [ 0, %do.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 31, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.if.end30_crit_edge, label %land.rhs

do.body.if.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.rhs:                                         ; preds = %do.body
  %.b65 = load i1, ptr @max310x_ist.__already_done, align 1
  br i1 %.b65, label %land.rhs.if.end30_crit_edge, label %if.then8, !prof !130

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @max310x_ist.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 836, i32 noundef 9, ptr noundef null) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then8, %land.rhs.if.end30_crit_edge, %do.body.if.end30_crit_edge
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %nr39 = getelementptr inbounds %struct.max310x_devtype, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %nr39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr39, align 4
  %notmask = shl nsw i32 -1, %10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and.demorgan = or i32 %notmask, %12
  %and = xor i32 %and.demorgan, -1
  store i32 %and, ptr %val, align 4
  %tobool40.not = icmp eq i32 %and.demorgan, -1
  br i1 %tobool40.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  %13 = and i8 %handled.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %extract.t69 = icmp ne i8 %13, 0
  br label %if.end55

cleanup:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %14 = call i32 @llvm.ctlz.i32(i32 %and, i1 false) #10, !range !133
  %sub44 = sub nsw i32 31, %14
  %call45 = call fastcc i32 @max310x_port_irq(ptr noundef %dev_id, i32 noundef %sub44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 1
  %spec.select = select i1 %cmp46, i8 1, i8 %handled.0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call fastcc i32 @max310x_port_irq(ptr noundef %dev_id, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51)
  %cmp52 = icmp eq i32 %call51, 1
  br label %if.end55

if.end55:                                         ; preds = %if.else, %cleanup.thread
  %handled.3.off0 = phi i1 [ %cmp52, %if.else ], [ %extract.t69, %cleanup.thread ]
  %cond = zext i1 %handled.3.off0 to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %8, 17
  %call1.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %add.i, ptr noundef nonnull %val.i) #10
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %10 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i)
  %tobool.not = icmp eq i8 %conv2.i, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_set_mctrl(ptr noundef %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %md_work = getelementptr inbounds %struct.max310x_one, ptr %port, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %md_work) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max310x_get_mctrl(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 320
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max310x_null_void(ptr nocapture noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_work = getelementptr inbounds %struct.max310x_one, ptr %port, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tx_work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 11
  %conv2.i = select i1 %tobool.not, i32 0, i32 64
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 64, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_startup(ptr noundef %port) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %power = getelementptr inbounds %struct.max310x_devtype, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power, align 4
  tail call void %7(ptr noundef %port, i32 noundef 1) #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %15, 9
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add.i, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %driver_data.i.i61 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i61, align 4
  %regmap.i62 = getelementptr inbounds %struct.max310x_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i62, align 4
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add.i64 = add i32 %23, 10
  %call2.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %add.i64, i32 noundef 10) #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %driver_data.i.i66 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i66, align 4
  %regmap.i67 = getelementptr inbounds %struct.max310x_port, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %regmap.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i67, align 4
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase.i, align 4
  %add.i69 = add i32 %31, 10
  %call.i.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add.i69, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %delay_rts_before_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 1
  %32 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay_rts_before_send, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 15)
  %shl = shl nuw nsw i32 %34, 4
  %delay_rts_after_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 2
  %35 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay_rts_after_send, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 15)
  %or = or i32 %shl, %37
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %driver_data.i.i72 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i72, align 4
  %regmap.i73 = getelementptr inbounds %struct.max310x_port, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regmap.i73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i73, align 4
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase.i, align 4
  %add.i75 = add i32 %45, 13
  %call2.i76 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %add.i75, i32 noundef %or) #10
  %46 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rs485, align 4
  %and = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then:                                          ; preds = %entry
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %driver_data.i.i78 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %driver_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i78, align 4
  %regmap.i79 = getelementptr inbounds %struct.max310x_port, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i79, align 4
  %54 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase.i, align 4
  %add.i81 = add i32 %55, 9
  %call.i.i82 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %add.i81, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %56 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rs485, align 4
  %and28 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %driver_data.i.i84 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %driver_data.i.i84 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i84, align 4
  %regmap.i85 = getelementptr inbounds %struct.max310x_port, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %regmap.i85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i85, align 4
  %64 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i, align 4
  %add.i87 = add i32 %65, 10
  %call.i.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef %add.i87, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then.if.end31_crit_edge, %entry.if.end31_crit_edge
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %driver_data.i.i90 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i90 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i90, align 4
  %regmap.i91 = getelementptr inbounds %struct.max310x_port, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %regmap.i91 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i91, align 4
  %72 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iobase.i, align 4
  %add.i93 = add i32 %73, 15
  %call2.i94 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef %add.i93, i32 noundef 108) #10
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %driver_data.i.i96 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %driver_data.i.i96 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i.i96, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %val.i, align 4
  %regmap.i97 = getelementptr inbounds %struct.max310x_port, ptr %77, i32 0, i32 1
  %79 = ptrtoint ptr %regmap.i97 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap.i97, align 4
  %81 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iobase.i, align 4
  %add.i99 = add i32 %82, 2
  %call1.i = call i32 @regmap_read(ptr noundef %80, i32 noundef %add.i99, ptr noundef nonnull %val.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %driver_data.i.i101 = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %driver_data.i.i101 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %driver_data.i.i101, align 4
  %regmap.i102 = getelementptr inbounds %struct.max310x_port, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %regmap.i102 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i102, align 4
  %89 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iobase.i, align 4
  %add.i104 = add i32 %90, 1
  %call2.i105 = call i32 @regmap_write(ptr noundef %88, i32 noundef %add.i104, i32 noundef 224) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 1
  %call2.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add.i, i32 noundef 0) #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %power = getelementptr inbounds %struct.max310x_devtype, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power, align 4
  tail call void %11(ptr noundef %port, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max310x_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, -1073741825
  store i32 %and, ptr %c_cflag, align 4
  %and2 = lshr i32 %1, 4
  %2 = and i32 %and2, 3
  %and6 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %and8 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select.v = select i1 %tobool9.not, i32 24, i32 8
  %spec.select = select i1 %tobool.not, i32 0, i32 %spec.select.v
  %lcr.1 = or i32 %2, %spec.select
  %3 = and i32 %and2, 4
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %11, 11
  %conv1.i = or i32 %lcr.1, %3
  %call2.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add.i, i32 noundef %conv1.i) #10
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %12 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %read_status_mask, align 4
  %13 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %termios, align 4
  %and19 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %spec.store.select142 = select i1 %tobool20.not, i32 2, i32 14
  %15 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select142, ptr %read_status_mask, align 4
  %16 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %termios, align 4
  %and26 = and i32 %17, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %entry.if.end31_crit_edge, label %if.then28

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or30 = or i32 %spec.store.select142, 16
  %18 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or30, ptr %read_status_mask, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %entry.if.end31_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %19 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ignore_status_mask, align 4
  %20 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %termios, align 4
  %and33 = shl i32 %21, 4
  %22 = and i32 %and33, 16
  store i32 %22, ptr %ignore_status_mask, align 4
  %23 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c_cflag, align 4
  %and40 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %spec.store.select176 = select i1 %tobool41.not, i32 30, i32 %22
  %25 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select176, ptr %ignore_status_mask, align 4
  %arrayidx = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 8
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i144 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i144 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i144, align 4
  %regmap.i145 = getelementptr inbounds %struct.max310x_port, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %regmap.i145 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i145, align 4
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase.i, align 4
  %add.i147 = add i32 %35, 20
  %conv1.i148 = zext i8 %27 to i32
  %call2.i149 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %add.i147, i32 noundef %conv1.i148) #10
  %arrayidx47 = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 9
  %36 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx47, align 1
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i151 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i151 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i151, align 4
  %regmap.i152 = getelementptr inbounds %struct.max310x_port, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regmap.i152 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i152, align 4
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase.i, align 4
  %add.i154 = add i32 %45, 22
  %conv1.i155 = zext i8 %37 to i32
  %call2.i156 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %add.i154, i32 noundef %conv1.i155) #10
  %46 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool50.not = icmp sgt i32 %47, -1
  br i1 %tobool50.not, label %lor.lhs.false, label %if.end31.if.then54_crit_edge

if.end31.if.then54_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

lor.lhs.false:                                    ; preds = %if.end31
  %48 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %termios, align 4
  %and52 = and i32 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %lor.lhs.false.if.end55_crit_edge, label %lor.lhs.false.if.then54_crit_edge

lor.lhs.false.if.then54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %lor.lhs.false.if.then54_crit_edge, %if.end31.if.then54_crit_edge
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i158 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %driver_data.i.i158 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i158, align 4
  %regmap.i159 = getelementptr inbounds %struct.max310x_port, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %regmap.i159 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i159, align 4
  %56 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase.i, align 4
  %add.i161 = add i32 %57, 9
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %add.i161, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %lor.lhs.false.if.end55_crit_edge
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %58 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status, align 4
  %and56 = and i32 %59, -29
  store i32 %and56, ptr %status, align 4
  %60 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %tobool59.not = icmp sgt i32 %61, -1
  br i1 %tobool59.not, label %if.end55.if.end64_crit_edge, label %if.then60

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %or62 = or i32 %and56, 12
  %62 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or62, ptr %status, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end55.if.end64_crit_edge
  %flow.0 = phi i32 [ 3, %if.then60 ], [ 0, %if.end55.if.end64_crit_edge ]
  %63 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %termios, align 4
  %and66 = and i32 %64, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or69 = or i32 %flow.0, 136
  %spec.select141 = select i1 %tobool67.not, i32 %flow.0, i32 %or69
  %and72 = and i32 %64, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end64.if.end78_crit_edge, label %if.then74

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %status, align 4
  %or76 = or i32 %66, 16
  store i32 %or76, ptr %status, align 4
  %or77 = or i32 %spec.select141, 40
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end64.if.end78_crit_edge
  %flow.2 = phi i32 [ %or77, %if.then74 ], [ %spec.select141, %if.end64.if.end78_crit_edge ]
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i163 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %driver_data.i.i163 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i.i163, align 4
  %regmap.i164 = getelementptr inbounds %struct.max310x_port, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %regmap.i164 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i164, align 4
  %73 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iobase.i, align 4
  %add.i166 = add i32 %74, 19
  %conv1.i167 = and i32 %flow.2, 255
  %call2.i168 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef %add.i166, i32 noundef %conv1.i167) #10
  %75 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %tobool82.not = icmp sgt i32 %76, -1
  br i1 %tobool82.not, label %land.lhs.true, label %if.end78.if.end87_crit_edge

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end78
  %77 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %termios, align 4
  %and84 = and i32 %78, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then86, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i170 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %driver_data.i.i170 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data.i.i170, align 4
  %regmap.i171 = getelementptr inbounds %struct.max310x_port, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %regmap.i171 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i171, align 4
  %85 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iobase.i, align 4
  %add.i173 = add i32 %86, 9
  %call.i.i174 = tail call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef %add.i173, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %land.lhs.true.if.end87_crit_edge, %if.end78.if.end87_crit_edge
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %87 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %uartclk, align 4
  %div88 = udiv i32 %88, 1048560
  %div90139 = lshr i32 %88, 2
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef %div88, i32 noundef %div90139) #10
  %89 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %uartclk, align 4
  %div1.i = udiv i32 %90, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div1.i)
  %cmp.i = icmp ult i32 %div1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div1.i)
  %cmp2.i = icmp ult i32 %div1.i, 16
  %.37.i = select i1 %cmp2.i, i32 8, i32 16
  %c.0.i = select i1 %cmp.i, i32 4, i32 %.37.i
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0.i, i32 %div1.i)
  %cmp7.not.i = icmp ugt i32 %c.0.i, %div1.i
  br i1 %cmp7.not.i, label %if.end87.max310x_set_baud.exit_crit_edge, label %if.then8.i

if.end87.max310x_set_baud.exit_crit_edge:         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_set_baud.exit

if.then8.i:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %91 = select i1 %cmp2.i, i32 3, i32 4
  %92 = select i1 %cmp.i, i32 2, i32 %91
  %div652.i = lshr i32 %div1.i, %92
  %mul.i = mul i32 %c.0.i, %call
  %rem.i = urem i32 %90, %mul.i
  %mul10.i = shl i32 %rem.i, 4
  %div11.i = udiv i32 %mul10.i, %mul.i
  br label %max310x_set_baud.exit

max310x_set_baud.exit:                            ; preds = %if.then8.i, %if.end87.max310x_set_baud.exit_crit_edge
  %div.0.i = phi i32 [ %div652.i, %if.then8.i ], [ 1, %if.end87.max310x_set_baud.exit_crit_edge ]
  %frac.0.i = phi i32 [ %div11.i, %if.then8.i ], [ 0, %if.end87.max310x_set_baud.exit_crit_edge ]
  %..i = select i1 %cmp2.i, i32 16, i32 0
  %mode.0.i = select i1 %cmp.i, i32 32, i32 %..i
  %shr.i = lshr i32 %div.0.i, 8
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.max310x_port, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap.i.i, align 4
  %99 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %100, 29
  %conv1.i.i = and i32 %shr.i, 255
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %98, i32 noundef %add.i.i, i32 noundef %conv1.i.i) #10
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i39.i = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %driver_data.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %driver_data.i.i39.i, align 4
  %regmap.i40.i = getelementptr inbounds %struct.max310x_port, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap.i40.i, align 4
  %107 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iobase.i, align 4
  %add.i42.i = add i32 %108, 28
  %conv1.i43.i = and i32 %div.0.i, 255
  %call2.i44.i = tail call i32 @regmap_write(ptr noundef %106, i32 noundef %add.i42.i, i32 noundef %conv1.i43.i) #10
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i46.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %driver_data.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %driver_data.i.i46.i, align 4
  %regmap.i47.i = getelementptr inbounds %struct.max310x_port, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %regmap.i47.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap.i47.i, align 4
  %115 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %iobase.i, align 4
  %add.i49.i = add i32 %116, 27
  %frac.0.masked.i = and i32 %frac.0.i, 255
  %conv1.i50.i = or i32 %frac.0.masked.i, %mode.0.i
  %call2.i51.i = tail call i32 @regmap_write(ptr noundef %114, i32 noundef %add.i49.i, i32 noundef %conv1.i50.i) #10
  %117 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %uartclk, align 4
  %mul17.i = shl i32 %118, 4
  %mul18.i = shl i32 %div.0.i, 4
  %add.i175 = add i32 %mul18.i, %frac.0.i
  %mul19.i = mul i32 %add.i175, %c.0.i
  %div20.i = udiv i32 %mul17.i, %mul19.i
  %119 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %120, i32 noundef %div20.i) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @max310x_type(ptr nocapture noundef readonly %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %1)
  %cmp = icmp eq i32 %1, 94
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max310x_request_port(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @max310x_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 94, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max310x_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %s) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 94, label %entry.if.end_crit_edge9
  ]

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge9
  %irq = getelementptr inbounds %struct.serial_struct, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %5 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp4.not = icmp eq i32 %4, %6
  %. = select i1 %cmp4.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max310x_port_irq(ptr noundef %s, i32 noundef %portno) unnamed_addr #3 align 64 {
entry:
  %val.i184.i = alloca i32, align 4
  %val.i177.i = alloca i32, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [2 x %struct.spi_transfer], align 4
  %val.i.i = alloca i32, align 4
  %val.i41 = alloca i32, align 4
  %val.i33 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.max310x_port, ptr %s, i32 0, i32 4, i32 %portno
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 28
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 23
  %buf_overrun.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 31, i32 10
  %rx48.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 31, i32 4
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 31, i32 9
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 31, i32 8
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 31, i32 6
  %overrun84.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 31, i32 7
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 46
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 29
  %state1.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 30
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 17
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 48
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %rx_buf.i = getelementptr %struct.max310x_port, ptr %s, i32 0, i32 4, i32 %portno, i32 6
  %0 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %rd_header.i.i = getelementptr %struct.max310x_port, ptr %s, i32 0, i32 4, i32 %portno, i32 5
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 1
  %len3.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 2
  %1 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %transfer_list.i.1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18
  %prev3.i.i.i.1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18, i32 1
  %tx_work.i = getelementptr %struct.max310x_port, ptr %s, i32 0, i32 4, i32 %portno, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %res.0 = phi i32 [ 0, %entry ], [ 1, %do.body.backedge ]
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val.i, align 4
  %regmap.i = getelementptr inbounds %struct.max310x_port, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %10, 2
  %call1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add.i, ptr noundef nonnull %val.i) #10
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %12 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i35 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i33) #10
  %17 = ptrtoint ptr %val.i33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val.i33, align 4
  %regmap.i36 = getelementptr inbounds %struct.max310x_port, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i36, align 4
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %add.i38 = add i32 %21, 18
  %call1.i39 = call i32 @regmap_read(ptr noundef %19, i32 noundef %add.i38, ptr noundef nonnull %val.i33) #10
  %22 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i33, align 4
  %conv2.i40 = trunc i32 %23 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i33) #10
  %conv3 = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i)
  %tobool.not = icmp eq i8 %conv2.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i40)
  %tobool4.not = icmp eq i8 %conv2.i40, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i43 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i41) #10
  %28 = ptrtoint ptr %val.i41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val.i41, align 4
  %regmap.i44 = getelementptr inbounds %struct.max310x_port, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i44, align 4
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i, align 4
  %add.i46 = add i32 %32, 4
  %call1.i47 = call i32 @regmap_read(ptr noundef %30, i32 noundef %add.i46, ptr noundef nonnull %val.i41) #10
  %33 = ptrtoint ptr %val.i41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i41) #10
  %call7.lobit = lshr i32 %34, 7
  %35 = and i32 %call7.lobit, 1
  call void @uart_handle_cts_change(ptr noundef %arrayidx, i32 noundef %35) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  br i1 %tobool4.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  %36 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %read_status_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i = icmp eq i32 %37, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then14
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %42 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.max310x_port, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i, align 4
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %46, 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %44, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #10
  %47 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %conv.i = and i32 %48, 255
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i) #10
  %49 = call ptr @memset(ptr %0, i32 0, i32 188)
  %50 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rd_header.i.i, ptr %xfer.i.i, align 4
  %51 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %len1.i.i, align 4
  %52 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rx_buf.i, ptr %rx_buf.i.i, align 4
  %53 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv3, ptr %len3.i.i, align 4
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  %56 = call ptr @memset(ptr %1, i32 0, i32 40)
  %57 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %58 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %59 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #10
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.spi_message_add_tail.exit.i.i.i.i_crit_edge

if.then.i.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %65 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i.i.i, ptr noundef %66, ptr noundef nonnull %msg.i.i.i) #10
  br i1 %call.i.i.i.1.i.i.i.i, label %if.end.i.i.i.1.i.i.i.i, label %spi_message_add_tail.exit.i.i.i.i.max310x_batch_read.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.max310x_batch_read.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_batch_read.exit.i

if.end.i.i.i.1.i.i.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i.1.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %68 = ptrtoint ptr %transfer_list.i.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i, ptr %transfer_list.i.1.i.i.i.i, align 4
  %69 = ptrtoint ptr %prev3.i.i.i.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i.1.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i.1.i.i.i.i, ptr %66, align 4
  br label %max310x_batch_read.exit.i

max310x_batch_read.exit.i:                        ; preds = %if.end.i.i.i.1.i.i.i.i, %spi_message_add_tail.exit.i.i.i.i.max310x_batch_read.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %55, ptr noundef nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i) #10
  %71 = ptrtoint ptr %rx48.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx48.i, align 4
  %add.i49 = add i32 %72, %conv3
  store i32 %add.i49, ptr %rx48.i, align 4
  %73 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %read_status_mask.i, align 4
  %and.i = and i32 %conv.i, %74
  %and2.i = and i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %max310x_batch_read.exit.i.if.end11.i_crit_edge, label %do.body.i

max310x_batch_read.exit.i.if.end11.i_crit_edge:   ; preds = %max310x_batch_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

do.body.i:                                        ; preds = %max310x_batch_read.exit.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @max310x_handle_rx._rs, ptr noundef nonnull @__func__.max310x_handle_rx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body.i.do.end9.i_crit_edge, label %do.end.i

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.33) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.body.i.do.end9.i_crit_edge
  %77 = ptrtoint ptr %overrun84.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %overrun84.i, align 4
  %inc.i = add i32 %78, 1
  store i32 %inc.i, ptr %overrun84.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end9.i, %max310x_batch_read.exit.i.if.end11.i_crit_edge
  %sub.i = add nsw i32 %conv3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp12197.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp12197.not.i, label %if.end11.i.for.end.i_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  br label %for.body.i

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end11.i.for.body.i_crit_edge
  %i.0198.i = phi i32 [ %inc16.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end11.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.max310x_port, ptr %s, i32 0, i32 4, i32 %portno, i32 6, i32 %i.0198.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i, align 1
  %conv15.i = zext i8 %80 to i32
  call void @uart_insert_char(ptr noundef %arrayidx, i32 noundef %and.i, i32 noundef 0, i32 noundef %conv15.i, i32 noundef 0) #10
  %inc16.i = add nuw i32 %i.0198.i, 1
  %exitcond.not.i = icmp eq i32 %inc16.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %arrayidx19.i = getelementptr %struct.max310x_port, ptr %s, i32 0, i32 4, i32 %portno, i32 6, i32 %sub.i
  %81 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %82 to i32
  call void @uart_insert_char(ptr noundef %arrayidx, i32 noundef %and.i, i32 noundef 2, i32 noundef %conv20.i, i32 noundef 0) #10
  br label %max310x_handle_rx.exit

if.else.i:                                        ; preds = %if.then14
  %83 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fifosize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %conv3)
  %cmp21.not.i = icmp ugt i32 %84, %conv3
  br i1 %cmp21.not.i, label %if.else.i.if.end40.i_crit_edge, label %do.body26.i, !prof !130

if.else.i.if.end40.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

do.body26.i:                                      ; preds = %if.else.i
  %call27.i = call i32 @___ratelimit(ptr noundef nonnull @max310x_handle_rx._rs.34, ptr noundef nonnull @__func__.max310x_handle_rx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.do.end36.i_crit_edge, label %do.end32.i

do.body26.i.do.end36.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36.i

do.end32.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.36) #13
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end32.i, %do.body26.i.do.end36.i_crit_edge
  %87 = ptrtoint ptr %buf_overrun.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buf_overrun.i, align 4
  %inc38.i = add i32 %88, 1
  store i32 %inc38.i, ptr %buf_overrun.i, align 4
  %89 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fifosize.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end36.i, %if.else.i.if.end40.i_crit_edge
  %rxlen.addr.0.i = phi i32 [ %90, %do.end36.i ], [ %conv3, %if.else.i.if.end40.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rxlen.addr.0.i)
  %tobool41.not195.i = icmp eq i32 %rxlen.addr.0.i, 0
  br i1 %tobool41.not195.i, label %if.end40.i.max310x_handle_rx.exit_crit_edge, label %if.end40.i.while.body.i_crit_edge

if.end40.i.while.body.i_crit_edge:                ; preds = %if.end40.i
  br label %while.body.i

if.end40.i.max310x_handle_rx.exit_crit_edge:      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_handle_rx.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end40.i.while.body.i_crit_edge
  %dec196.in.i = phi i32 [ %dec196.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %rxlen.addr.0.i, %if.end40.i.while.body.i_crit_edge ]
  %dec196.i = add i32 %dec196.in.i, -1
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i179.i = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %driver_data.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i179.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i177.i) #10
  %95 = ptrtoint ptr %val.i177.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %val.i177.i, align 4
  %regmap.i180.i = getelementptr inbounds %struct.max310x_port, ptr %94, i32 0, i32 1
  %96 = ptrtoint ptr %regmap.i180.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i180.i, align 4
  %98 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %iobase.i, align 4
  %call1.i182.i = call i32 @regmap_read(ptr noundef %97, i32 noundef %99, ptr noundef nonnull %val.i177.i) #10
  %100 = ptrtoint ptr %val.i177.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i177.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i177.i) #10
  %conv43.i = and i32 %101, 255
  %102 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i186.i = getelementptr inbounds %struct.device, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %driver_data.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %driver_data.i.i186.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i184.i) #10
  %106 = ptrtoint ptr %val.i184.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %val.i184.i, align 4
  %regmap.i187.i = getelementptr inbounds %struct.max310x_port, ptr %105, i32 0, i32 1
  %107 = ptrtoint ptr %regmap.i187.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i187.i, align 4
  %109 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %iobase.i, align 4
  %add.i189.i = add i32 %110, 4
  %call1.i190.i = call i32 @regmap_read(ptr noundef %108, i32 noundef %add.i189.i, ptr noundef nonnull %val.i184.i) #10
  %111 = ptrtoint ptr %val.i184.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val.i184.i, align 4
  %conv2.i191.i = trunc i32 %112 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i184.i) #10
  %113 = and i8 %conv2.i191.i, 30
  %and46.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %rx48.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx48.i, align 4
  %inc49.i = add i32 %115, 1
  store i32 %inc49.i, ptr %rx48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool50.not.i = icmp eq i8 %113, 0
  br i1 %tobool50.not.i, label %while.body.i.if.end111.i_crit_edge, label %if.then57.i, !prof !130

while.body.i.if.end111.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.i

if.then57.i:                                      ; preds = %while.body.i
  %and58.i = and i32 %and46.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.else67.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.then57.i
  %116 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %brk.i, align 4
  %inc62.i = add i32 %117, 1
  store i32 %inc62.i, ptr %brk.i, align 4
  %118 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %state1.i, align 4
  %120 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i51 = icmp eq ptr %121, null
  br i1 %tobool.not.i51, label %if.then60.i.if.end.i_crit_edge, label %if.then.i52

if.then60.i.if.end.i_crit_edge:                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i52:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %121(ptr noundef %arrayidx) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i52, %if.then60.i.if.end.i_crit_edge
  %122 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool3.not.i = icmp eq i8 %123, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %124 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %125, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %127 to i32
  %128 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %conv7.i)
  %cmp.i53 = icmp eq i32 %129, %conv7.i
  br i1 %cmp.i53, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %130 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool10.not.i = icmp eq i32 %131, 0
  br i1 %tobool10.not.i, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %133 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags.i, align 4
  %and.i55 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool16.not.i = icmp eq i32 %and.i55, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end89.i_crit_edge, label %if.then17.i

if.end15.i.if.end89.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %119, i32 0, i32 1
  %135 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tty.i, align 4
  call void @do_SAK(ptr noundef %136) #10
  br label %if.end89.i

uart_handle_break.exit:                           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %add.i54 = add i32 %137, 500
  %138 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add.i54, ptr %sysrq.i.i, align 4
  br label %while.cond.backedge.i

if.else67.i:                                      ; preds = %if.then57.i
  %and68.i = and i32 %and46.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.else73.i, label %if.else67.i.if.end89.sink.split.i_crit_edge

if.else67.i.if.end89.sink.split.i_crit_edge:      ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.sink.split.i

if.else73.i:                                      ; preds = %if.else67.i
  %and74.i = and i32 %and46.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.else79.i, label %if.else73.i.if.end89.sink.split.i_crit_edge

if.else73.i.if.end89.sink.split.i_crit_edge:      ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.sink.split.i

if.else79.i:                                      ; preds = %if.else73.i
  %and80.i = and i32 %and46.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.else79.i.if.end89.i_crit_edge, label %if.else79.i.if.end89.sink.split.i_crit_edge

if.else79.i.if.end89.sink.split.i_crit_edge:      ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.sink.split.i

if.else79.i.if.end89.i_crit_edge:                 ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i

if.end89.sink.split.i:                            ; preds = %if.else79.i.if.end89.sink.split.i_crit_edge, %if.else73.i.if.end89.sink.split.i_crit_edge, %if.else67.i.if.end89.sink.split.i_crit_edge
  %parity.sink204.i = phi ptr [ %parity.i, %if.else67.i.if.end89.sink.split.i_crit_edge ], [ %frame.i, %if.else73.i.if.end89.sink.split.i_crit_edge ], [ %overrun84.i, %if.else79.i.if.end89.sink.split.i_crit_edge ]
  %139 = ptrtoint ptr %parity.sink204.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %parity.sink204.i, align 4
  %inc72.i = add i32 %140, 1
  store i32 %inc72.i, ptr %parity.sink204.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end89.sink.split.i, %if.else79.i.if.end89.i_crit_edge, %if.then17.i, %if.end15.i.if.end89.i_crit_edge
  %141 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %read_status_mask.i, align 4
  %and91.i = and i32 %142, %and46.i
  %and92.i = and i32 %and91.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.else95.i, label %if.end89.i.if.end111.i_crit_edge

if.end89.i.if.end111.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.i

if.else95.i:                                      ; preds = %if.end89.i
  %and96.i = and i32 %and91.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.else99.i, label %if.else95.i.if.end111.i_crit_edge

if.else95.i.if.end111.i_crit_edge:                ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.i

if.else99.i:                                      ; preds = %if.else95.i
  %and100.i = and i32 %and91.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %if.else103.i, label %if.else99.i.if.end111.i_crit_edge

if.else99.i.if.end111.i_crit_edge:                ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.i

if.else103.i:                                     ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #12
  %and104.i = shl nuw nsw i32 %and91.i, 1
  %143 = and i32 %and104.i, 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else103.i, %if.else99.i.if.end111.i_crit_edge, %if.else95.i.if.end111.i_crit_edge, %if.end89.i.if.end111.i_crit_edge, %while.body.i.if.end111.i_crit_edge
  %sts.0.i = phi i32 [ 0, %while.body.i.if.end111.i_crit_edge ], [ %and91.i, %if.end89.i.if.end111.i_crit_edge ], [ %and91.i, %if.else95.i.if.end111.i_crit_edge ], [ %and91.i, %if.else99.i.if.end111.i_crit_edge ], [ %and91.i, %if.else103.i ]
  %flag.0.i = phi i32 [ 0, %while.body.i.if.end111.i_crit_edge ], [ 1, %if.end89.i.if.end111.i_crit_edge ], [ 3, %if.else95.i.if.end111.i_crit_edge ], [ 2, %if.else99.i.if.end111.i_crit_edge ], [ %143, %if.else103.i ]
  %144 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i.i, label %if.end111.i.if.end115.i_crit_edge, label %if.end.i.i

if.end111.i.if.end115.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115.i

if.end.i.i:                                       ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv43.i)
  %tobool1.not.i.i = icmp eq i32 %conv43.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread201.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %146, %145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge

land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread201.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i = call i32 @sysrq_mask() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %arrayidx, i32 noundef %conv43.i) #10
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.backedge.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread201.i

if.end7.i.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

uart_handle_sysrq_char.exit.thread201.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge, %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge, %if.end.i.i.uart_handle_sysrq_char.exit.thread201.i_crit_edge
  %147 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end115.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @handle_sysrq(i32 noundef %conv43.i) #10
  %148 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %while.cond.backedge.i

if.end115.i:                                      ; preds = %uart_handle_sysrq_char.exit.thread201.i, %if.end111.i.if.end115.i_crit_edge
  %149 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ignore_status_mask.i, align 4
  %and116.i = and i32 %150, %sts.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %if.end119.i, label %if.end115.i.while.cond.backedge.i_crit_edge

if.end115.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

if.end119.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_insert_char(ptr noundef %arrayidx, i32 noundef %sts.0.i, i32 noundef 2, i32 noundef %conv43.i, i32 noundef %flag.0.i) #10
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end119.i, %if.end115.i.while.cond.backedge.i_crit_edge, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.while.cond.backedge.i_crit_edge, %uart_handle_break.exit
  %tobool41.not.i = icmp eq i32 %dec196.i, 0
  br i1 %tobool41.not.i, label %while.cond.backedge.i.max310x_handle_rx.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.backedge.i.max310x_handle_rx.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max310x_handle_rx.exit

max310x_handle_rx.exit:                           ; preds = %while.cond.backedge.i.max310x_handle_rx.exit_crit_edge, %if.end40.i.max310x_handle_rx.exit_crit_edge, %for.end.i
  %151 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %state1.i, align 4
  call void @tty_flip_buffer_push(ptr noundef %152) #10
  br label %if.end15

if.end15:                                         ; preds = %max310x_handle_rx.exit, %if.end12.if.end15_crit_edge
  %and16 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.do.body.backedge_crit_edge, label %if.then18

if.end15.do.body.backedge_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.then18, %if.end15.do.body.backedge_crit_edge
  br label %do.body

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %153 = load ptr, ptr @system_wq, align 4
  %call.i.i.i50 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %153, ptr noundef %tx_work.i) #10
  br label %do.body.backedge

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nr12 = getelementptr inbounds %struct.max310x_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nr12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13 = icmp sgt i32 %5, 0
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.max310x_port, ptr %1, i32 0, i32 4, i32 %i.014
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @max310x_uart, ptr noundef %arrayidx) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %power = getelementptr inbounds %struct.max310x_devtype, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power, align 4
  tail call void %9(ptr noundef %arrayidx, i32 noundef 0) #10
  %inc = add nuw nsw i32 %i.014, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %nr = getelementptr inbounds %struct.max310x_devtype, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max310x_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nr12 = getelementptr inbounds %struct.max310x_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nr12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13 = icmp sgt i32 %5, 0
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %10, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %power = getelementptr inbounds %struct.max310x_devtype, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power, align 4
  %arrayidx = getelementptr %struct.max310x_port, ptr %1, i32 0, i32 4, i32 %i.014
  tail call void %8(ptr noundef %arrayidx, i32 noundef 1) #10
  %call5 = tail call i32 @uart_resume_port(ptr noundef nonnull @max310x_uart, ptr noundef %arrayidx) #10
  %inc = add nuw nsw i32 %i.014, 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %nr = getelementptr inbounds %struct.max310x_devtype, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !94, !95, !97, !99, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !113, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_max310x__243_1535_max310x_uart_init6, !1, !"__initcall__kmod_max310x__243_1535_max310x_uart_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/max310x.c", i32 1535, i32 1}
!2 = !{ptr @__exitcall_max310x_uart_exit, !3, !"__exitcall_max310x_uart_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/max310x.c", i32 1545, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/max310x.c", i32 1547, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author246, !8, !"__UNIQUE_ID_author246", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/max310x.c", i32 1548, i32 1}
!9 = !{ptr @__UNIQUE_ID_description247, !10, !"__UNIQUE_ID_description247", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/max310x.c", i32 1549, i32 1}
!11 = !{ptr @max310x_lines, !12, !"max310x_lines", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/max310x.c", i32 288, i32 8}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/max310x.c", i32 1507, i32 12}
!15 = !{ptr @max310x_spi_driver, !16, !"max310x_spi_driver", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/max310x.c", i32 1505, i32 26}
!17 = !{ptr @max310x_id_table, !18, !"max310x_id_table", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/max310x.c", i32 1496, i32 35}
!19 = !{ptr @max3107_devtype, !20, !"max3107_devtype", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/max310x.c", i32 416, i32 37}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/max310x.c", i32 325, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max3107_detect._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @max3107_detect._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @max3108_devtype, !30, !"max3108_devtype", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/max310x.c", i32 424, i32 37}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/max310x.c", i32 347, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @max3108_detect._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @max3108_detect._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @max3109_devtype, !37, !"max3109_devtype", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/max310x.c", i32 432, i32 37}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/max310x.c", i32 368, i32 3}
!40 = !{ptr @max3109_detect._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @max3109_detect._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @max14830_devtype, !43, !"max14830_devtype", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/max310x.c", i32 440, i32 37}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/max310x.c", i32 399, i32 3}
!46 = !{ptr @max14830_detect._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @max14830_detect._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @max310x_spi_probe._key, !49, !"_key", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/max310x.c", i32 1485, i32 11}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @regcfg, !52, !"regcfg", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/max310x.c", i32 1455, i32 29}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/max310x.c", i32 1267, i32 3}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @max310x_probe._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @max310x_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/max310x.c", i32 1272, i32 32}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/max310x.c", i32 1274, i32 43}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/max310x.c", i32 1274, i32 58}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/max310x.c", i32 1276, i32 39}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/max310x.c", i32 1290, i32 3}
!68 = !{ptr @max310x_probe._entry.17, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @max310x_probe._entry_ptr.19, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/max310x.c", i32 1338, i32 2}
!72 = !{ptr @max310x_probe.__UNIQUE_ID_ddebug242, !71, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!73 = !{ptr @max310x_probe.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/max310x.c", i32 1367, i32 3}
!75 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @max310x_probe.__key.22, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/max310x.c", i32 1369, i32 3}
!78 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @max310x_probe.__key.24, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/max310x.c", i32 1371, i32 3}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @max310x_probe.lock_key, !83, !"lock_key", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/max310x.c", i32 1402, i32 8}
!84 = !{ptr @max310x_probe.request_key, !83, !"request_key", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/tty/serial/max310x.c", i32 1413, i32 2}
!87 = !{ptr @max310x_probe._entry.26, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @max310x_probe._entry_ptr.28, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/tty/serial/max310x.c", i32 617, i32 4}
!91 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @max310x_set_ref_clk._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @max310x_set_ref_clk._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @max310x_ops, !96, !"max310x_ops", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/max310x.c", i32 1140, i32 30}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/max310x.c", i32 835, i32 4}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/max310x.c", i32 679, i32 4}
!101 = !{ptr @max310x_handle_rx._rs, !100, !"_rs", i1 false, i1 false}
!102 = !{ptr @__func__.max310x_handle_rx, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @max310x_handle_rx._entry, !100, !"_entry", i1 false, i1 false}
!105 = !{ptr @max310x_handle_rx._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @max310x_handle_rx._rs.34, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/max310x.c", i32 696, i32 4}
!108 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @max310x_handle_rx._entry.35, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @max310x_handle_rx._entry_ptr.37, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @max310x_dt_ids, !112, !"max310x_dt_ids", i1 false, i1 false}
!112 = !{!"../drivers/tty/serial/max310x.c", i32 1446, i32 49}
!113 = !{ptr @max310x_pm_ops, !114, !"max310x_pm_ops", i1 false, i1 false}
!114 = !{!"../drivers/tty/serial/max310x.c", i32 1184, i32 8}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/tty/serial/max310x.c", i32 282, i32 14}
!117 = !{ptr @max310x_uart, !118, !"max310x_uart", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/max310x.c", i32 279, i32 27}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2148763699, i64 2148763704, i64 2148763717, i64 2148763761, i64 2148763795, i64 2148763816}
!129 = !{!"auto-init"}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i8 0, i8 2}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i32 0, i32 33}
