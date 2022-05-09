; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/sc16is7xx.c_pt.bc'
source_filename = "../drivers/tty/serial/sc16is7xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sc16is7xx_devtype = type { [10 x i8], i32, i32 }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.sc16is7xx_port = type { ptr, ptr, ptr, %struct.gpio_chip, [64 x i8], %struct.kthread_worker, ptr, %struct.mutex, [0 x %struct.sc16is7xx_one] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.89, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.89 = type { ptr }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.sc16is7xx_one = type { %struct.uart_port, i8, %struct.kthread_work, %struct.kthread_work, %struct.sc16is7xx_one_config, i8 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.sc16is7xx_one_config = type { i32, i8 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.40, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.40 = type { ptr }
%struct.llist_head = type { ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.41, %struct.anon.42, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.41 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.42 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__UNIQUE_ID_alias292 = internal constant [30 x i8] c"sc16is7xx.alias=spi:sc16is7xx\00", section ".modinfo", align 1
@__initcall__kmod_sc16is7xx__293_1569_sc16is7xx_init6 = internal global ptr @sc16is7xx_init, section ".initcall6.init", align 4
@sc16is7xx_i2c_uart_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sc16is7xx_i2c_probe, ptr @sc16is7xx_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc16is7xx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sc16is7xx_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sc16is7xx_spi_uart_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @sc16is7xx_spi_id_table, ptr @sc16is7xx_spi_probe, ptr @sc16is7xx_spi_remove, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc16is7xx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@sc16is7xx_uart = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr null, ptr @.str.29, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_sc16is7xx_exit = internal global ptr @sc16is7xx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file294 = internal constant [44 x i8] c"sc16is7xx.file=drivers/tty/serial/sc16is7xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"sc16is7xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [52 x i8] c"sc16is7xx.author=Jon Ringle <jringle@gridpoint.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [46 x i8] c"sc16is7xx.description=SC16IS7XX serial driver\00", section ".modinfo", align 1
@sc16is7xx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013sc16is7xx: Registering UART driver failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc16is7xx_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/tty/serial/sc16is7xx.c\00", [33 x i8] zeroinitializer }, align 32
@sc16is7xx_init._entry_ptr = internal global ptr @sc16is7xx_init._entry, section ".printk_index", align 4
@sc16is7xx_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sc16is7xx: failed to init sc16is7xx i2c --> %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sc16is7xx_init._entry_ptr.5 = internal global ptr @sc16is7xx_init._entry.3, section ".printk_index", align 4
@sc16is7xx_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sc16is7xx: failed to init sc16is7xx spi --> %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sc16is7xx_init._entry_ptr.8 = internal global ptr @sc16is7xx_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sc16is7xx\00", [22 x i8] zeroinitializer }, align 32
@sc16is7xx_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc16is740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc16is74x_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc16is741\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc16is74x_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc16is750\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc16is750_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc16is752\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc16is752_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc16is760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc16is760_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sc16is762\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc16is762_devtype }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@sc16is7xx_i2c_id_table = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sc16is74x\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is74x_devtype to i32) }, %struct.i2c_device_id { [20 x i8] c"sc16is740\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is74x_devtype to i32) }, %struct.i2c_device_id { [20 x i8] c"sc16is741\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is74x_devtype to i32) }, %struct.i2c_device_id { [20 x i8] c"sc16is750\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is750_devtype to i32) }, %struct.i2c_device_id { [20 x i8] c"sc16is752\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is752_devtype to i32) }, %struct.i2c_device_id { [20 x i8] c"sc16is760\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is760_devtype to i32) }, %struct.i2c_device_id { [20 x i8] c"sc16is762\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is762_devtype to i32) }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@regcfg = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 7, i32 0, i32 1, i32 8, ptr null, ptr null, ptr @sc16is7xx_regmap_volatile, ptr @sc16is7xx_regmap_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@sc16is7xx_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sc16is7xx:1496:(&regcfg)->lock\00", [33 x i8] zeroinitializer }, align 32
@sc16is7xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1207, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error allocating port structure\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sc16is7xx_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc16is7xx_probe._entry_ptr = internal global ptr @sc16is7xx_probe._entry, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@sc16is7xx_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Clock frequency: %luHz\0A\00", [40 x i8] zeroinitializer }, align 32
@sc16is7xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&s->efr_lock\00", [19 x i8] zeroinitializer }, align 32
@sc16is7xx_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&s->kworker)->lock\00", [44 x i8] zeroinitializer }, align 32
@sc16is7xx_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sc16is7xx_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sc16is7xx_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @sc16is7xx_tx_empty, ptr @sc16is7xx_set_mctrl, ptr @sc16is7xx_get_mctrl, ptr @sc16is7xx_stop_tx, ptr @sc16is7xx_start_tx, ptr null, ptr null, ptr null, ptr @sc16is7xx_stop_rx, ptr null, ptr @sc16is7xx_break_ctl, ptr @sc16is7xx_startup, ptr @sc16is7xx_shutdown, ptr null, ptr @sc16is7xx_set_termios, ptr null, ptr @sc16is7xx_pm, ptr @sc16is7xx_type, ptr @sc16is7xx_null_void, ptr @sc16is7xx_request_port, ptr @sc16is7xx_config_port, ptr @sc16is7xx_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irda-mode-ports\00", [16 x i8] zeroinitializer }, align 32
@sc16is7xx_lines = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sc16is7xx_config_rs485._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 973, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"unsupported RTS signalling on_send:%d after_send:%d - exactly one of RS485 RTS flags should be set\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sc16is7xx_config_rs485\00", [41 x i8] zeroinitializer }, align 32
@sc16is7xx_config_rs485._entry_ptr = internal global ptr @sc16is7xx_config_rs485._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sc16is7xx_handle_tx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sc16is7xx_handle_tx = private unnamed_addr constant [20 x i8] c"sc16is7xx_handle_tx\00", align 1
@sc16is7xx_handle_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.sc16is7xx_handle_tx, ptr @.str.2, i32 657, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"chip reports %d free bytes in TX fifo, but it only has %d\00", [38 x i8] zeroinitializer }, align 32
@sc16is7xx_handle_tx._entry_ptr = internal global ptr @sc16is7xx_handle_tx._entry, section ".printk_index", align 4
@sc16is7xx_port_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.sc16is7xx_port_irq = private unnamed_addr constant [19 x i8] c"sc16is7xx_port_irq\00", align 1
@sc16is7xx_port_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.sc16is7xx_port_irq, ptr @.str.2, i32 706, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ttySC%i: Unexpected interrupt: %x\00", [62 x i8] zeroinitializer }, align 32
@sc16is7xx_port_irq._entry_ptr = internal global ptr @sc16is7xx_port_irq._entry, section ".printk_index", align 4
@sc16is7xx_handle_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.sc16is7xx_handle_rx = private unnamed_addr constant [20 x i8] c"sc16is7xx_handle_rx\00", align 1
@sc16is7xx_handle_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.sc16is7xx_handle_rx, ptr @.str.2, i32 565, ptr @.str.27, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ttySC%i: Possible RX FIFO overrun: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sc16is7xx_handle_rx._entry_ptr = internal global ptr @sc16is7xx_handle_rx._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sc16is74x_devtype = internal constant { %struct.sc16is7xx_devtype, [44 x i8] } { %struct.sc16is7xx_devtype { [10 x i8] c"SC16IS74X\00", i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sc16is750_devtype = internal constant { %struct.sc16is7xx_devtype, [44 x i8] } { %struct.sc16is7xx_devtype { [10 x i8] c"SC16IS750\00", i32 8, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sc16is752_devtype = internal constant { %struct.sc16is7xx_devtype, [44 x i8] } { %struct.sc16is7xx_devtype { [10 x i8] c"SC16IS752\00", i32 8, i32 2 }, [44 x i8] zeroinitializer }, align 32
@sc16is760_devtype = internal constant { %struct.sc16is7xx_devtype, [44 x i8] } { %struct.sc16is7xx_devtype { [10 x i8] c"SC16IS760\00", i32 8, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sc16is762_devtype = internal constant { %struct.sc16is7xx_devtype, [44 x i8] } { %struct.sc16is7xx_devtype { [10 x i8] c"SC16IS762\00", i32 8, i32 2 }, [44 x i8] zeroinitializer }, align 32
@sc16is7xx_spi_id_table = internal constant { [8 x %struct.spi_device_id], [64 x i8] } { [8 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"sc16is74x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is74x_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"sc16is740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is74x_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"sc16is741\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is74x_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"sc16is750\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is750_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"sc16is752\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is752_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"sc16is760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is760_devtype to i32) }, %struct.spi_device_id { [32 x i8] c"sc16is762\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc16is762_devtype to i32) }, %struct.spi_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@sc16is7xx_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sc16is7xx:1441:(&regcfg)->lock\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttySC\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 5, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 108]
@___asan_gen_.31 = private unnamed_addr constant [26 x i8] c"sc16is7xx_i2c_uart_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1520, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"sc16is7xx_spi_uart_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1466, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"sc16is7xx_uart\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 337, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1538, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1545, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1553, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1522, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"sc16is7xx_dt_ids\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1393, i32 49 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"sc16is7xx_i2c_id_table\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1508, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"regcfg\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1404, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1496, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1207, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1212, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1229, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1237, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1239, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1261, i32 9 }
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"sc16is7xx_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1111, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1326, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"sc16is7xx_lines\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 335, i32 22 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 971, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 655, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 704, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 563, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"sc16is74x_devtype\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 431, i32 39 }
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"sc16is750_devtype\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 437, i32 39 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"sc16is752_devtype\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 443, i32 39 }
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"sc16is760_devtype\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 449, i32 39 }
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"sc16is762_devtype\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 455, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant [23 x i8] c"sc16is7xx_spi_id_table\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1453, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1441, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [34 x i8] c"../drivers/tty/serial/sc16is7xx.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 339, i32 14 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_sc16is7xx_exit, ptr @__initcall__kmod_sc16is7xx__293_1569_sc16is7xx_init6, ptr @sc16is7xx_config_rs485._entry, ptr @sc16is7xx_config_rs485._entry_ptr, ptr @sc16is7xx_exit, ptr @sc16is7xx_handle_rx._entry, ptr @sc16is7xx_handle_rx._entry_ptr, ptr @sc16is7xx_handle_tx._entry, ptr @sc16is7xx_handle_tx._entry_ptr, ptr @sc16is7xx_init._entry, ptr @sc16is7xx_init._entry.3, ptr @sc16is7xx_init._entry.6, ptr @sc16is7xx_init._entry_ptr, ptr @sc16is7xx_init._entry_ptr.5, ptr @sc16is7xx_init._entry_ptr.8, ptr @sc16is7xx_port_irq._entry, ptr @sc16is7xx_port_irq._entry_ptr, ptr @sc16is7xx_probe._entry, ptr @sc16is7xx_probe._entry_ptr, ptr @sc16is7xx_i2c_uart_driver, ptr @sc16is7xx_spi_uart_driver, ptr @sc16is7xx_uart, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @sc16is7xx_dt_ids, ptr @sc16is7xx_i2c_id_table, ptr @regcfg, ptr @sc16is7xx_i2c_probe._key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sc16is7xx_probe.__key, ptr @.str.17, ptr @sc16is7xx_probe.__key.18, ptr @.str.19, ptr @sc16is7xx_probe.lock_key, ptr @sc16is7xx_probe.request_key, ptr @sc16is7xx_ops, ptr @.str.20, ptr @sc16is7xx_lines, ptr @.str.21, ptr @.str.22, ptr @sc16is7xx_handle_tx._rs, ptr @.str.23, ptr @.str.24, ptr @sc16is7xx_port_irq._rs, ptr @.str.25, ptr @sc16is7xx_handle_rx._rs, ptr @.str.26, ptr @.str.27, ptr @sc16is74x_devtype, ptr @sc16is750_devtype, ptr @sc16is752_devtype, ptr @sc16is760_devtype, ptr @sc16is762_devtype, ptr @sc16is7xx_spi_id_table, ptr @sc16is7xx_spi_probe._key, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_i2c_uart_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_spi_uart_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_uart to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_i2c_id_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_lines to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_config_rs485._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_handle_tx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_handle_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_port_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_port_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_handle_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_handle_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is74x_devtype to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is750_devtype to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is752_devtype to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is760_devtype to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is762_devtype to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_spi_id_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc16is7xx_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @sc16is7xx_uart) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sc16is7xx_i2c_uart_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call2) #13
  br label %err_i2c

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @sc16is7xx_spi_uart_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call10) #13
  tail call void @i2c_del_driver(ptr noundef nonnull @sc16is7xx_i2c_uart_driver) #10
  br label %err_i2c

err_i2c:                                          ; preds = %do.end15, %do.end6
  %ret.0 = phi i32 [ %call2, %do.end6 ], [ %call10, %do.end15 ]
  tail call void @uart_unregister_driver(ptr noundef nonnull @sc16is7xx_uart) #10
  br label %cleanup

cleanup:                                          ; preds = %err_i2c, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %err_i2c ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @sc16is7xx_i2c_uart_driver) #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @sc16is7xx_spi_uart_driver, i32 0, i32 4)) #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @sc16is7xx_uart) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #10
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %4 = inttoptr i32 %3 to ptr
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge
  %devtype.0 = phi ptr [ %call, %if.then.if.end4_crit_edge ], [ %4, %if.else ]
  %nr_uart = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %devtype.0, i32 0, i32 2
  %5 = ptrtoint ptr %nr_uart to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_uart, align 4
  %sub = add i32 %6, -1
  %or = or i32 %sub, 60
  store i32 %or, ptr getelementptr inbounds (%struct.regmap_config, ptr @regcfg, i32 0, i32 19), align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @regcfg, ptr noundef nonnull @sc16is7xx_i2c_probe._key, ptr noundef nonnull @.str.10) #10
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call7 = tail call fastcc i32 @sc16is7xx_probe(ptr noundef %dev, ptr noundef %devtype.0, ptr noundef %call5, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -19, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_i2c_remove(ptr nocapture noundef readonly %client) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call fastcc void @sc16is7xx_remove(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc16is7xx_probe(ptr noundef %dev, ptr noundef %devtype, ptr noundef %regmap, i32 noundef %irq) unnamed_addr #4 align 64 {
entry:
  %val = alloca i32, align 4
  %uartclk = alloca i32, align 4
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uartclk) #10
  %3 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %uartclk, align 4
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %regmap to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 20, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nr_uart = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %devtype, i32 0, i32 2
  %5 = ptrtoint ptr %nr_uart to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_uart, align 4
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 416) #10
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %9, i32 592) #10
  %retval.0.i385 = select i1 %8, i32 -1, i32 %spec.select.i
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i385, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call.i386 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull %uartclk, i32 noundef 1) #10
  %call11 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %clk, align 4
  %cmp.i387 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i387, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call.i388 = call i32 @clk_prepare(ptr noundef %call11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %tobool.not.i = icmp eq i32 %call.i388, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %call1.i = call i32 @clk_enable(ptr noundef %call11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end22, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %call11) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call24 = call i32 @clk_get_rate(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end22.if.end45_crit_edge

if.end22.if.end45_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then26:                                        ; preds = %if.end22
  %tobool30.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool30.not, ptr %uartclk, ptr %1
  %14 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %14)
  %freq.1 = load i32, ptr %spec.select, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq.1)
  %tobool33.not = icmp eq i32 %freq.1, 0
  br i1 %tobool33.not, label %if.then26.cleanup_crit_edge, label %do.body35

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body35:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sc16is7xx_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sc16is7xx_probe, %if.then40)) #10
          to label %if.end45 [label %if.then40], !srcloc !123

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sc16is7xx_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %freq.1) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %do.body35, %if.end22.if.end45_crit_edge
  %freq.2 = phi i32 [ %freq.1, %if.then40 ], [ %call24, %if.end22.if.end45_crit_edge ], [ %freq.1, %do.body35 ]
  %regmap46 = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %regmap46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %regmap, ptr %regmap46, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %devtype, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i, align 4
  %efr_lock = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %efr_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @sc16is7xx_probe.__key) #10
  %kworker = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 5
  call void @__kthread_init_worker(ptr noundef %kworker, ptr noundef nonnull @.str.19, ptr noundef nonnull @sc16is7xx_probe.__key.18) #10
  %call55 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kthread_worker_fn, ptr noundef %kworker, i32 noundef -1, ptr noundef nonnull @.str.9) #10
  %cmp.i390 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i390, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %kworker_task440 = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %kworker_task440 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call55, ptr %kworker_task440, align 4
  %19 = ptrtoint ptr %call55 to i32
  br label %out_clk

if.end66:                                         ; preds = %if.end45
  %call58 = call i32 @wake_up_process(ptr noundef %call55) #10
  %kworker_task = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %kworker_task to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call55, ptr %kworker_task, align 4
  call void @sched_set_fifo(ptr noundef %call55) #10
  %nr_gpio = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %devtype, i32 0, i32 1
  %21 = ptrtoint ptr %nr_gpio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool68.not = icmp eq i32 %22, 0
  br i1 %tobool68.not, label %if.end66.if.end87_crit_edge, label %if.then69

if.end66.if.end87_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then69:                                        ; preds = %if.end66
  %gpio = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3
  %owner = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %parent, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i392 = icmp eq ptr %26, null
  br i1 %tobool.not.i392, label %if.end.i393, label %if.then69.dev_name.exit_crit_edge

if.then69.dev_name.exit_crit_edge:                ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i393:                                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i393, %if.then69.dev_name.exit_crit_edge
  %retval.0.i394 = phi ptr [ %28, %if.end.i393 ], [ %26, %if.then69.dev_name.exit_crit_edge ]
  %29 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i394, ptr %gpio, align 4
  %direction_input = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sc16is7xx_gpio_direction_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 10
  %31 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sc16is7xx_gpio_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 9
  %32 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sc16is7xx_gpio_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 12
  %33 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sc16is7xx_gpio_set, ptr %set, align 4
  %base = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 19
  %34 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %base, align 4
  %conv = trunc i32 %22 to i16
  %ngpio = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 20
  %35 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3, i32 23
  %36 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %can_sleep, align 4
  %call83 = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio, ptr noundef nonnull %call.i, ptr noundef nonnull @sc16is7xx_probe.lock_key, ptr noundef nonnull @sc16is7xx_probe.request_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %dev_name.exit.if.end87_crit_edge, label %dev_name.exit.out_thread_crit_edge

dev_name.exit.out_thread_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_thread

dev_name.exit.if.end87_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.end87:                                         ; preds = %dev_name.exit.if.end87_crit_edge, %if.end66.if.end87_crit_edge
  %37 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap46, align 4
  %call89 = call i32 @regmap_write(ptr noundef %38, i32 noundef 56, i32 noundef 8) #10
  %39 = ptrtoint ptr %nr_uart to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp91446 = icmp sgt i32 %40, 0
  br i1 %cmp91446, label %if.end87.for.body_crit_edge, label %if.end87.for.end_crit_edge

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  br label %for.body

for.body:                                         ; preds = %if.end138.for.body_crit_edge, %if.end87.for.body_crit_edge
  %i.0447 = phi i32 [ %inc, %if.end138.for.body_crit_edge ], [ 0, %if.end87.for.body_crit_edge ]
  %conv93 = trunc i32 %i.0447 to i8
  %arrayidx = getelementptr %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 8, i32 %i.0447
  %line = getelementptr %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 8, i32 %i.0447, i32 1
  %41 = ptrtoint ptr %line to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv93, ptr %line, align 4
  %dev96 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %42 = ptrtoint ptr %dev96 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev, ptr %dev96, align 4
  %irq100 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 20
  %43 = ptrtoint ptr %irq100 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %irq, ptr %irq100, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 108, ptr %type, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 23
  %45 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 64, ptr %fifosize, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 134225920, ptr %flags, align 4
  %iobase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %47 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.0447, ptr %iobase, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %48 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %iotype, align 2
  %uartclk119 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 22
  %49 = ptrtoint ptr %uartclk119 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %freq.2, ptr %uartclk119, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 18
  %50 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @sc16is7xx_config_rs485, ptr %rs485_config, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @sc16is7xx_ops, ptr %ops, align 4
  %call.i395 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @sc16is7xx_lines) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i395)
  %tobool.not.i396 = icmp eq i32 %call.i395, 0
  br i1 %tobool.not.i396, label %for.body.if.end138_crit_edge, label %for.inc.i

for.body.if.end138_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

for.inc.i:                                        ; preds = %for.body
  %call.1.i = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull @sc16is7xx_lines) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.end138_crit_edge, label %for.inc.1.i

for.inc.i.if.end138_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef nonnull @sc16is7xx_lines) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end138_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end138_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef nonnull @sc16is7xx_lines) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end138_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end138_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef nonnull @sc16is7xx_lines) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.if.end138_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end138_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef nonnull @sc16is7xx_lines) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.end138_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end138_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef nonnull @sc16is7xx_lines) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.if.end138_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end138_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call.7.i = call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef nonnull @sc16is7xx_lines) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.if.end138_crit_edge, label %sc16is7xx_alloc_line.exit

for.inc.6.i.if.end138_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

sc16is7xx_alloc_line.exit:                        ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  %line130 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %52 = ptrtoint ptr %line130 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %line130, align 4
  br label %out_ports

if.end138:                                        ; preds = %for.inc.6.i.if.end138_crit_edge, %for.inc.5.i.if.end138_crit_edge, %for.inc.4.i.if.end138_crit_edge, %for.inc.3.i.if.end138_crit_edge, %for.inc.2.i.if.end138_crit_edge, %for.inc.1.i.if.end138_crit_edge, %for.inc.i.if.end138_crit_edge, %for.body.if.end138_crit_edge
  %i.0.lcssa.i.ph = phi i32 [ 6, %for.inc.5.i.if.end138_crit_edge ], [ 5, %for.inc.4.i.if.end138_crit_edge ], [ 4, %for.inc.3.i.if.end138_crit_edge ], [ 3, %for.inc.2.i.if.end138_crit_edge ], [ 2, %for.inc.1.i.if.end138_crit_edge ], [ 1, %for.inc.i.if.end138_crit_edge ], [ 0, %for.body.if.end138_crit_edge ], [ 7, %for.inc.6.i.if.end138_crit_edge ]
  %line130442 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %53 = ptrtoint ptr %line130442 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %i.0.lcssa.i.ph, ptr %line130442, align 4
  %54 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev96, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i, align 4
  %58 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %line, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %62 = or i8 %59, 4
  %or.i = zext i8 %62 to i32
  %call5.i = call i32 @regmap_write(ptr noundef %61, i32 noundef %or.i, i32 noundef 0) #10
  %63 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev96, align 4
  %driver_data.i.i399 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %driver_data.i.i399 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i399, align 4
  %67 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %line, align 4
  %regmap.i402 = getelementptr inbounds %struct.sc16is7xx_port, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %regmap.i402 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i402, align 4
  %71 = or i8 %68, 60
  %or.i403 = zext i8 %71 to i32
  %call5.i404 = call i32 @regmap_write(ptr noundef %70, i32 noundef %or.i403, i32 noundef 6) #10
  %tx_work = getelementptr %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 8, i32 %i.0447, i32 2
  %72 = getelementptr inbounds i8, ptr %tx_work, i32 8
  %73 = call ptr @memset(ptr %72, i32 0, i32 12)
  %74 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %tx_work, ptr %tx_work, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tx_work, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %tx_work, ptr %prev.i, align 4
  %func = getelementptr %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 8, i32 %i.0447, i32 2, i32 1
  %76 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @sc16is7xx_tx_proc, ptr %func, align 4
  %reg_work = getelementptr %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 8, i32 %i.0447, i32 3
  %77 = getelementptr inbounds i8, ptr %reg_work, i32 8
  %78 = call ptr @memset(ptr %77, i32 0, i32 12)
  %79 = ptrtoint ptr %reg_work to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %reg_work, ptr %reg_work, align 4
  %prev.i405 = getelementptr inbounds %struct.list_head, ptr %reg_work, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i405 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %reg_work, ptr %prev.i405, align 4
  %func166 = getelementptr %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 8, i32 %i.0447, i32 3, i32 1
  %81 = ptrtoint ptr %func166 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @sc16is7xx_reg_proc, ptr %func166, align 4
  %call172 = call i32 @uart_add_one_port(ptr noundef nonnull @sc16is7xx_uart, ptr noundef %arrayidx) #10
  %82 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev96, align 4
  %driver_data.i.i407 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %driver_data.i.i407 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver_data.i.i407, align 4
  %86 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %line, align 4
  %regmap.i410 = getelementptr inbounds %struct.sc16is7xx_port, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %regmap.i410 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i410, align 4
  %90 = or i8 %87, 12
  %or.i411 = zext i8 %90 to i32
  %call5.i412 = call i32 @regmap_write(ptr noundef %89, i32 noundef %or.i411, i32 noundef 191) #10
  %91 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap46, align 4
  call void @regcache_cache_bypass(ptr noundef %92, i1 noundef zeroext true) #10
  %93 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev96, align 4
  %driver_data.i.i414 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %driver_data.i.i414 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %driver_data.i.i414, align 4
  %97 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %line, align 4
  %regmap.i417 = getelementptr inbounds %struct.sc16is7xx_port, ptr %96, i32 0, i32 1
  %99 = ptrtoint ptr %regmap.i417 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i417, align 4
  %101 = or i8 %98, 8
  %or.i418 = zext i8 %101 to i32
  %call5.i419 = call i32 @regmap_write(ptr noundef %100, i32 noundef %or.i418, i32 noundef 16) #10
  %102 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap46, align 4
  call void @regcache_cache_bypass(ptr noundef %103, i1 noundef zeroext false) #10
  %104 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev96, align 4
  %driver_data.i.i421 = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %driver_data.i.i421 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %driver_data.i.i421, align 4
  %108 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %line, align 4
  %regmap.i424 = getelementptr inbounds %struct.sc16is7xx_port, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %regmap.i424 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap.i424, align 4
  %112 = or i8 %109, 12
  %or.i425 = zext i8 %112 to i32
  %call5.i426 = call i32 @regmap_write(ptr noundef %111, i32 noundef %or.i425, i32 noundef 0) #10
  %113 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev96, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %driver_data.i.i.i, align 4
  %117 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %line, align 4
  %regmap.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %116, i32 0, i32 1
  %119 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap.i.i, align 4
  %121 = or i8 %118, 4
  %or.i.i = zext i8 %121 to i32
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef %or.i.i, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %inc = add nuw nsw i32 %i.0447, 1
  %122 = ptrtoint ptr %nr_uart to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nr_uart, align 4
  %cmp91 = icmp slt i32 %inc, %123
  br i1 %cmp91, label %if.end138.for.body_crit_edge, label %if.end138.for.end_crit_edge

if.end138.for.end_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end138.for.body_crit_edge:                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end138.for.end_crit_edge, %if.end87.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end87.for.end_crit_edge ], [ %inc, %if.end138.for.end_crit_edge ]
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %124 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %of_node, align 8
  %tobool187.not = icmp eq ptr %125, null
  br i1 %tobool187.not, label %for.end.if.end206_crit_edge, label %if.then188

for.end.if.end206_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then188:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #10
  %126 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %u, align 4, !annotation !122
  %call191 = call ptr @of_find_property(ptr noundef nonnull %125, ptr noundef nonnull @.str.20, ptr noundef null) #10
  %call192 = call ptr @of_prop_next_u32(ptr noundef %call191, ptr noundef null, ptr noundef nonnull %u) #10
  %tobool194.not449 = icmp eq ptr %call192, null
  br i1 %tobool194.not449, label %if.then188.for.end205_crit_edge, label %if.then188.for.body195_crit_edge

if.then188.for.body195_crit_edge:                 ; preds = %if.then188
  br label %for.body195

if.then188.for.end205_crit_edge:                  ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end205

for.body195:                                      ; preds = %for.inc203.for.body195_crit_edge, %if.then188.for.body195_crit_edge
  %p189.0450 = phi ptr [ %call204, %for.inc203.for.body195_crit_edge ], [ %call192, %if.then188.for.body195_crit_edge ]
  %127 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %u, align 4
  %129 = ptrtoint ptr %nr_uart to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr_uart, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp197 = icmp ult i32 %128, %130
  br i1 %cmp197, label %if.then199, label %for.body195.for.inc203_crit_edge

for.body195.for.inc203_crit_edge:                 ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc203

if.then199:                                       ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #12
  %irda_mode = getelementptr %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 8, i32 %128, i32 5
  %131 = ptrtoint ptr %irda_mode to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %irda_mode, align 4
  br label %for.inc203

for.inc203:                                       ; preds = %if.then199, %for.body195.for.inc203_crit_edge
  %call204 = call ptr @of_prop_next_u32(ptr noundef %call191, ptr noundef nonnull %p189.0450, ptr noundef nonnull %u) #10
  %tobool194.not = icmp eq ptr %call204, null
  br i1 %tobool194.not, label %for.inc203.for.end205_crit_edge, label %for.inc203.for.body195_crit_edge

for.inc203.for.body195_crit_edge:                 ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body195

for.inc203.for.end205_crit_edge:                  ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end205

for.end205:                                       ; preds = %for.inc203.for.end205_crit_edge, %if.then188.for.end205_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #10
  br label %if.end206

if.end206:                                        ; preds = %for.end205, %for.end.if.end206_crit_edge
  %init_name.i427 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %132 = ptrtoint ptr %init_name.i427 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %init_name.i427, align 8
  %tobool.not.i428 = icmp eq ptr %133, null
  br i1 %tobool.not.i428, label %if.end.i429, label %if.end206.dev_name.exit431_crit_edge

if.end206.dev_name.exit431_crit_edge:             ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit431

if.end.i429:                                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 4
  br label %dev_name.exit431

dev_name.exit431:                                 ; preds = %if.end.i429, %if.end206.dev_name.exit431_crit_edge
  %retval.0.i430 = phi ptr [ %135, %if.end.i429 ], [ %133, %if.end206.dev_name.exit431_crit_edge ]
  %call208 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @sc16is7xx_irq, i32 noundef 8328, ptr noundef %retval.0.i430, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %dev_name.exit431.cleanup_crit_edge, label %if.end211

dev_name.exit431.cleanup_crit_edge:               ; preds = %dev_name.exit431
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end211:                                        ; preds = %dev_name.exit431
  %136 = ptrtoint ptr %init_name.i427 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %init_name.i427, align 8
  %tobool.not.i433 = icmp eq ptr %137, null
  br i1 %tobool.not.i433, label %if.end.i434, label %if.end211.dev_name.exit436_crit_edge

if.end211.dev_name.exit436_crit_edge:             ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit436

if.end.i434:                                      ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 4
  br label %dev_name.exit436

dev_name.exit436:                                 ; preds = %if.end.i434, %if.end211.dev_name.exit436_crit_edge
  %retval.0.i435 = phi ptr [ %139, %if.end.i434 ], [ %137, %if.end211.dev_name.exit436_crit_edge ]
  %call213 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @sc16is7xx_irq, i32 noundef 8194, ptr noundef %retval.0.i435, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %dev_name.exit436.cleanup_crit_edge, label %dev_name.exit436.out_ports_crit_edge

dev_name.exit436.out_ports_crit_edge:             ; preds = %dev_name.exit436
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ports

dev_name.exit436.cleanup_crit_edge:               ; preds = %dev_name.exit436
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_ports:                                        ; preds = %dev_name.exit436.out_ports_crit_edge, %sc16is7xx_alloc_line.exit
  %i.0445 = phi i32 [ %i.0.lcssa, %dev_name.exit436.out_ports_crit_edge ], [ %i.0447, %sc16is7xx_alloc_line.exit ]
  %ret.0 = phi i32 [ %call213, %dev_name.exit436.out_ports_crit_edge ], [ -12, %sc16is7xx_alloc_line.exit ]
  %i.1451 = add i32 %i.0445, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1451)
  %cmp218452 = icmp sgt i32 %i.1451, -1
  br i1 %cmp218452, label %out_ports.for.body220_crit_edge, label %out_ports.for.end231_crit_edge

out_ports.for.end231_crit_edge:                   ; preds = %out_ports
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end231

out_ports.for.body220_crit_edge:                  ; preds = %out_ports
  br label %for.body220

for.body220:                                      ; preds = %for.body220.for.body220_crit_edge, %out_ports.for.body220_crit_edge
  %i.1453 = phi i32 [ %i.1, %for.body220.for.body220_crit_edge ], [ %i.1451, %out_ports.for.body220_crit_edge ]
  %arrayidx222 = getelementptr %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 8, i32 %i.1453
  %call224 = call i32 @uart_remove_one_port(ptr noundef nonnull @sc16is7xx_uart, ptr noundef %arrayidx222) #10
  %line228 = getelementptr inbounds %struct.uart_port, ptr %arrayidx222, i32 0, i32 41
  %140 = ptrtoint ptr %line228 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %line228, align 4
  call void @_clear_bit(i32 noundef %141, ptr noundef nonnull @sc16is7xx_lines) #10
  %i.1 = add nsw i32 %i.1453, -1
  %cmp218.not = icmp eq i32 %i.1453, 0
  br i1 %cmp218.not, label %for.body220.for.end231_crit_edge, label %for.body220.for.body220_crit_edge

for.body220.for.body220_crit_edge:                ; preds = %for.body220
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body220

for.body220.for.end231_crit_edge:                 ; preds = %for.body220
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end231

for.end231:                                       ; preds = %for.body220.for.end231_crit_edge, %out_ports.for.end231_crit_edge
  %142 = ptrtoint ptr %nr_gpio to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nr_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool233.not = icmp eq i32 %143, 0
  br i1 %tobool233.not, label %for.end231.out_thread_crit_edge, label %if.then234

for.end231.out_thread_crit_edge:                  ; preds = %for.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_thread

if.then234:                                       ; preds = %for.end231
  call void @__sanitizer_cov_trace_pc() #12
  %gpio235 = getelementptr inbounds %struct.sc16is7xx_port, ptr %call.i, i32 0, i32 3
  call void @gpiochip_remove(ptr noundef %gpio235) #10
  br label %out_thread

out_thread:                                       ; preds = %if.then234, %for.end231.out_thread_crit_edge, %dev_name.exit.out_thread_crit_edge
  %ret.1 = phi i32 [ %call83, %dev_name.exit.out_thread_crit_edge ], [ %ret.0, %if.then234 ], [ %ret.0, %for.end231.out_thread_crit_edge ]
  %144 = ptrtoint ptr %kworker_task to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %kworker_task, align 4
  %call238 = call i32 @kthread_stop(ptr noundef %145) #10
  br label %out_clk

out_clk:                                          ; preds = %out_thread, %if.then63
  %ret.2 = phi i32 [ %19, %if.then63 ], [ %ret.1, %out_thread ]
  %146 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %147) #10
  call void @clk_unprepare(ptr noundef %147) #10
  br label %cleanup

cleanup:                                          ; preds = %out_clk, %dev_name.exit436.cleanup_crit_edge, %dev_name.exit431.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.then3.i, %if.end17.cleanup_crit_edge, %if.then14, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %11, %if.then14 ], [ %ret.2, %out_clk ], [ -12, %do.end ], [ -517, %if.end.cleanup_crit_edge ], [ -22, %if.then26.cleanup_crit_edge ], [ 0, %dev_name.exit431.cleanup_crit_edge ], [ 0, %dev_name.exit436.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i388, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uartclk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sc16is7xx_regmap_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %reg)
  %0 = icmp ult i32 %reg, 48
  %switch.cast = trunc i32 %shr to i12
  %switch.downshift = lshr i12 -1179, %switch.cast
  %1 = and i12 %switch.downshift, 1
  %2 = sext i12 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i12 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sc16is7xx_regmap_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg)
  %cond = icmp ult i32 %reg, 4
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kthread_init_worker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_worker_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %shl = shl nuw i32 1, %offset
  %dev.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %call, i32 1, i32 3, i32 37, i32 8, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %call, i32 1, i32 4
  %4 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = or i8 %5, 40
  %or.i = zext i8 %8 to i32
  %conv4.i = and i32 %shl, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %or.i, i32 noundef %conv4.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_gpio_get(ptr noundef %chip, i32 noundef %offset) #4 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %dev.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %call, i32 1, i32 3, i32 37, i32 8, i32 5
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
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %call, i32 1, i32 4
  %5 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %9 = or i8 %6, 44
  %or.i = zext i8 %9 to i32
  %call4.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %or.i, ptr noundef nonnull %val.i) #10
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %conv = and i32 %11, 255
  %12 = lshr i32 %conv, %offset
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #4 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %dev.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %call, i32 1, i32 3, i32 37, i32 8, i32 5
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
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %call, i32 1, i32 4
  %5 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %9 = or i8 %6, 44
  %or.i = zext i8 %9 to i32
  %call4.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %or.i, ptr noundef nonnull %val.i) #10
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl4 = shl nuw i32 1, %offset
  %12 = xor i32 %shl4, -1
  %conv6 = and i32 %11, %12
  %conv332 = or i32 %11, %shl4
  %state.0 = select i1 %tobool.not, i32 %conv6, i32 %conv332
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i19 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i19, align 4
  %17 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %line.i.i, align 4
  %regmap.i22 = getelementptr inbounds %struct.sc16is7xx_port, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i22, align 4
  %21 = or i8 %18, 44
  %or.i23 = zext i8 %21 to i32
  %conv4.i = and i32 %state.0, 255
  %call5.i = call i32 @regmap_write(ptr noundef %20, i32 noundef %or.i23, i32 noundef %conv4.i) #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i25 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i25, align 4
  %26 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %line.i.i, align 4
  %regmap.i28 = getelementptr inbounds %struct.sc16is7xx_port, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %regmap.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i28, align 4
  %30 = or i8 %27, 40
  %or.i29 = zext i8 %30 to i32
  %conv4.i30 = and i32 %shl4, 255
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %or.i29, i32 noundef %conv4.i30, i32 noundef %conv4.i30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %shl = shl nuw i32 1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %dev.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %call, i32 1, i32 3, i32 37, i32 8, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %call, i32 1, i32 4
  %4 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = or i8 %5, 44
  %or.i = zext i8 %8 to i32
  %conv4.i = and i32 %shl, 255
  %conv5.i = select i1 %tobool.not, i32 0, i32 %conv4.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %or.i, i32 noundef %conv4.i, i32 noundef %conv5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_config_rs485(ptr noundef %port, ptr nocapture noundef readonly %rs485) #4 align 64 {
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
  %4 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rs485, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then:                                          ; preds = %entry
  %and2 = lshr i32 %5, 2
  %and2.lobit = and i32 %and2, 1
  %and5 = lshr i32 %5, 1
  %and5.lobit = and i32 %and5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.lobit, i32 %and5.lobit)
  %cmp = icmp eq i32 %and2.lobit, %and5.lobit
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %and2.lobit, i32 noundef %and2.lobit) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %6 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_rts_after_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool18.not = icmp eq i32 %7, 0
  br i1 %tobool18.not, label %if.end.if.end22_crit_edge, label %if.end.cleanup26_crit_edge

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  %rs48523 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %8 = call ptr @memcpy(ptr %rs48523, ptr %rs485, i32 32)
  %config = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 4
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config, align 4
  %or = or i32 %10, 4
  store i32 %or, ptr %config, align 4
  %kworker = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 5
  %reg_work = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 3
  %call25 = tail call zeroext i1 @kthread_queue_work(ptr noundef %kworker, ptr noundef %reg_work) #10
  br label %cleanup26

cleanup26:                                        ; preds = %if.end22, %if.end.cleanup26_crit_edge
  %retval.1 = phi i32 [ 0, %if.end22 ], [ -22, %if.end.cleanup26_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_tx_proc(ptr noundef %ws) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %ws, i32 -116
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %rs485 = getelementptr i8, ptr %ws, i32 -84
  %4 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rs485, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %delay_rts_before_send = getelementptr i8, ptr %ws, i32 -80
  %6 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_rts_before_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %ws, i32 -364
  %efr_lock = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %efr_lock, i32 noundef 0) #10
  tail call fastcc void @sc16is7xx_handle_tx(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %efr_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_reg_proc(ptr noundef %ws) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -384
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %config6 = getelementptr i8, ptr %ws, i32 20
  %0 = ptrtoint ptr %config6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %config.sroa.0.0.copyload43 = load i32, ptr %config6, align 4
  %config.sroa.7.0.config6.sroa_idx = getelementptr i8, ptr %ws, i32 24
  %1 = ptrtoint ptr %config.sroa.7.0.config6.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %config.sroa.7.0.copyload44 = load i8, ptr %config.sroa.7.0.config6.sroa_idx, align 4
  store i64 0, ptr %config6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  %and = and i32 %config.sroa.0.0.copyload43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mctrl = getelementptr i8, ptr %ws, i32 -172
  %2 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mctrl, align 4
  %and12 = lshr i32 %3, 11
  %conv14 = and i32 %and12, 16
  %dev.i = getelementptr i8, ptr %ws, i32 -136
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %line.i.i = getelementptr i8, ptr %ws, i32 -24
  %8 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %12 = or i8 %9, 16
  %or.i = zext i8 %12 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %or.i, i32 noundef 16, i32 noundef %conv14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %13 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mctrl, align 4
  %15 = lshr i32 %14, 1
  %conv21 = and i32 %15, 2
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i57 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i57, align 4
  %20 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %line.i.i, align 4
  %regmap.i60 = getelementptr inbounds %struct.sc16is7xx_port, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i60, align 4
  %24 = or i8 %21, 16
  %or.i61 = zext i8 %24 to i32
  %call.i.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %or.i61, i32 noundef 2, i32 noundef %conv21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %25 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mctrl, align 4
  %27 = lshr i32 %26, 1
  %28 = and i32 %27, 1
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i65 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i65, align 4
  %33 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %line.i.i, align 4
  %regmap.i68 = getelementptr inbounds %struct.sc16is7xx_port, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i68, align 4
  %37 = or i8 %34, 16
  %or.i69 = zext i8 %37 to i32
  %call.i.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %or.i69, i32 noundef 1, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and30 = and i32 %config.sroa.0.0.copyload43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end.if.end34_crit_edge, label %if.then32

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i72 = getelementptr i8, ptr %ws, i32 -136
  %38 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i72, align 4
  %driver_data.i.i73 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i73, align 4
  %line.i.i74 = getelementptr i8, ptr %ws, i32 -24
  %42 = ptrtoint ptr %line.i.i74 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %line.i.i74, align 4
  %regmap.i76 = getelementptr inbounds %struct.sc16is7xx_port, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i76, align 4
  %46 = or i8 %43, 4
  %or.i77 = zext i8 %46 to i32
  %conv4.i = zext i8 %config.sroa.7.0.copyload44 to i32
  %call.i.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %or.i77, i32 noundef %conv4.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end.if.end34_crit_edge
  %and36 = and i32 %config.sroa.0.0.copyload43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end40_crit_edge, label %if.then38

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %rs4851.i = getelementptr i8, ptr %ws, i32 -104
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %47 = ptrtoint ptr %rs4851.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rs4851.i, align 4
  %and.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and7.i = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3.i) #10
  %dev.i.i = getelementptr i8, ptr %ws, i32 -136
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i.i, align 4
  %line.i.i.i = getelementptr i8, ptr %ws, i32 -24
  %53 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %line.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i.i, align 4
  %57 = or i8 %54, 60
  %or.i.i = zext i8 %57 to i32
  %58 = select i1 %tobool8.not.i, i32 16, i32 48
  %conv5.i.i = select i1 %tobool.not.i, i32 0, i32 %58
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef %or.i.i, i32 noundef 48, i32 noundef %conv5.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_irq(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  %val.i149.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %val.i35.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %efr_lock = getelementptr inbounds %struct.sc16is7xx_port, ptr %dev_id, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %efr_lock, i32 noundef 0) #10
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %nr_uart41 = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_uart41 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_uart41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42 = icmp sgt i32 %3, 0
  br i1 %cmp42, label %while.cond.for.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.for.body_crit_edge:                    ; preds = %while.cond
  br label %for.body

for.body:                                         ; preds = %sc16is7xx_port_irq.exit.for.body_crit_edge, %while.cond.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %sc16is7xx_port_irq.exit.for.body_crit_edge ], [ 0, %while.cond.for.body_crit_edge ]
  %keep_polling.0.off043 = phi i1 [ %or13, %sc16is7xx_port_irq.exit.for.body_crit_edge ], [ false, %while.cond.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.sc16is7xx_port, ptr %dev_id, i32 0, i32 8, i32 %i.044
  %dev.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 45
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val.i.i, align 4
  %line.i.i.i = getelementptr %struct.sc16is7xx_port, ptr %dev_id, i32 0, i32 8, i32 %i.044, i32 1
  %9 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %line.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %13 = or i8 %10, 8
  %or.i.i = zext i8 %13 to i32
  %call4.i.i = call i32 @regmap_read(ptr noundef %12, i32 noundef %or.i.i, ptr noundef nonnull %val.i.i) #10
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.sc16is7xx_port_irq.exit_crit_edge

for.body.sc16is7xx_port_irq.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sc16is7xx_port_irq.exit

if.end.i:                                         ; preds = %for.body
  %and2.i = and i32 %15, 62
  %16 = add nsw i32 %and2.i, -2
  %17 = lshr exact i32 %16, 1
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.body9.i [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 2, label %if.end.i.sw.bb.i_crit_edge150
    i32 5, label %if.end.i.sw.bb.i_crit_edge151
    i32 7, label %if.end.i.sw.bb.i_crit_edge152
    i32 0, label %sw.bb8.i
  ]

if.end.i.sw.bb.i_crit_edge152:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge151:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge150:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge150, %if.end.i.sw.bb.i_crit_edge151, %if.end.i.sw.bb.i_crit_edge152
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i37.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i37.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i35.i) #10
  %23 = ptrtoint ptr %val.i35.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val.i35.i, align 4
  %24 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %line.i.i.i, align 4
  %regmap.i40.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i40.i, align 4
  %28 = or i8 %25, 36
  %or.i41.i = zext i8 %28 to i32
  %call4.i42.i = call i32 @regmap_read(ptr noundef %27, i32 noundef %or.i41.i, ptr noundef nonnull %val.i35.i) #10
  %29 = ptrtoint ptr %val.i35.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i35.i, align 4
  %conv5.i43.i = trunc i32 %30 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i35.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5.i43.i)
  %tobool5.not.i = icmp eq i8 %conv5.i43.i, 0
  br i1 %tobool5.not.i, label %sw.bb.i.sc16is7xx_port_irq.exit_crit_edge, label %if.then6.i

sw.bb.i.sc16is7xx_port_irq.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sc16is7xx_port_irq.exit

if.then6.i:                                       ; preds = %sw.bb.i
  %conv4.i = and i32 %30, 255
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i45.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and2.i)
  %cmp.i.i = icmp eq i32 %and2.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv4.i)
  %cmp1.i.i = icmp ugt i32 %conv4.i, 63
  br i1 %cmp1.i.i, label %do.body.i.i, label %if.then6.i.while.cond.outer.split.lr.ph.i.i_crit_edge, !prof !124

if.then6.i.while.cond.outer.split.lr.ph.i.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.split.lr.ph.i.i

do.body.i.i:                                      ; preds = %if.then6.i
  %call4.i46.i = call i32 @___ratelimit(ptr noundef nonnull @sc16is7xx_handle_rx._rs, ptr noundef nonnull @__func__.sc16is7xx_handle_rx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i46.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i46.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.if.end11.thread.i.i_crit_edge, label %do.end.i.i

do.body.i.i.if.end11.thread.i.i_crit_edge:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.thread.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 41
  %37 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %line.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.26, i32 noundef %38, i32 noundef %conv4.i) #13
  br label %if.end11.thread.i.i

if.end11.thread.i.i:                              ; preds = %do.end.i.i, %do.body.i.i.if.end11.thread.i.i_crit_edge
  %buf_overrun.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 31, i32 10
  %39 = ptrtoint ptr %buf_overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf_overrun.i.i, align 4
  %inc.i.i = add i32 %40, 1
  store i32 %inc.i.i, ptr %buf_overrun.i.i, align 4
  br label %while.cond.outer.split.lr.ph.i.i

while.cond.outer.split.lr.ph.i.i:                 ; preds = %if.end11.thread.i.i, %if.then6.i.while.cond.outer.split.lr.ph.i.i_crit_edge
  %rxlen.addr.0216.i.i = phi i32 [ 64, %if.end11.thread.i.i ], [ %conv4.i, %if.then6.i.while.cond.outer.split.lr.ph.i.i_crit_edge ]
  %buf218.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %34, i32 0, i32 4
  %rx219.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 31, i32 4
  %brk220.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 31, i32 9
  %parity.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 31, i32 8
  %frame.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 31, i32 6
  %overrun.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 31, i32 7
  %read_status_mask.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 28
  %sysrq.i.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 46
  %ignore_status_mask.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 29
  %state1.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 30
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 17
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 48
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 32
  %line.i16 = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 41
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 33
  br label %while.cond.outer.split.i.i

while.cond.outer.split.i.i:                       ; preds = %for.end.i.i.while.cond.outer.split.i.i_crit_edge, %while.cond.outer.split.lr.ph.i.i
  %read_lsr.0.off0.ph196.i.i = phi i1 [ %cmp.i.i, %while.cond.outer.split.lr.ph.i.i ], [ %read_lsr.1.off0166.i.i, %for.end.i.i.while.cond.outer.split.i.i_crit_edge ]
  %rxlen.addr.1.ph193.i.i = phi i32 [ %rxlen.addr.0216.i.i, %while.cond.outer.split.lr.ph.i.i ], [ %sub.i.i, %for.end.i.i.while.cond.outer.split.i.i_crit_edge ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %uart_handle_break.exit, %while.cond.outer.split.i.i
  %read_lsr.0.off0.i.i = phi i1 [ %read_lsr.1.off0166.i.i, %uart_handle_break.exit ], [ %read_lsr.0.off0.ph196.i.i, %while.cond.outer.split.i.i ]
  br i1 %read_lsr.0.off0.i.i, label %if.end19.i.i, label %while.cond.i.i.if.else23.i.i_crit_edge

while.cond.i.i.if.else23.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else23.i.i

if.end19.i.i:                                     ; preds = %while.cond.i.i
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %45 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %val.i.i.i, align 4
  %46 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %line.i.i.i, align 4
  %regmap.i.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i.i.i, align 4
  %50 = or i8 %47, 20
  %or.i.i.i = zext i8 %50 to i32
  %call4.i.i.i = call i32 @regmap_read(ptr noundef %49, i32 noundef %or.i.i.i, ptr noundef nonnull %val.i.i.i) #10
  %51 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %conv.i.i = and i32 %52, 255
  %and.i.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.not.i.i, label %if.end19.i.i.if.else23.i.i_crit_edge, label %if.then21.i.i

if.end19.i.i.if.else23.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else23.i.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i151.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i151.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i149.i.i) #10
  %57 = ptrtoint ptr %val.i149.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %val.i149.i.i, align 4
  %58 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %line.i.i.i, align 4
  %conv.i.i153.i.i = zext i8 %59 to i32
  %regmap.i154.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %56, i32 0, i32 1
  %60 = ptrtoint ptr %regmap.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i154.i.i, align 4
  %call4.i155.i.i = call i32 @regmap_read(ptr noundef %61, i32 noundef %conv.i.i153.i.i, ptr noundef nonnull %val.i149.i.i) #10
  %62 = ptrtoint ptr %val.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i149.i.i, align 4
  %conv5.i156.i.i = trunc i32 %63 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i149.i.i) #10
  %64 = ptrtoint ptr %buf218.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv5.i156.i.i, ptr %buf218.i.i, align 4
  br label %if.end24.i.i

if.else23.i.i:                                    ; preds = %if.end19.i.i.if.else23.i.i_crit_edge, %while.cond.i.i.if.else23.i.i_crit_edge
  %lsr.0165.i.i = phi i32 [ %conv.i.i, %if.end19.i.i.if.else23.i.i_crit_edge ], [ 0, %while.cond.i.i.if.else23.i.i_crit_edge ]
  %65 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i158.i.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %driver_data.i.i158.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i158.i.i, align 4
  %69 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %line.i.i.i, align 4
  %conv.i.i160.i.i = zext i8 %70 to i32
  %regmap.i161.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %regmap.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i161.i.i, align 4
  call void @regcache_cache_bypass(ptr noundef %72, i1 noundef zeroext true) #10
  %73 = ptrtoint ptr %regmap.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i161.i.i, align 4
  %buf.i.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %68, i32 0, i32 4
  %call6.i.i.i = call i32 @regmap_raw_read(ptr noundef %74, i32 noundef %conv.i.i160.i.i, ptr noundef %buf.i.i.i, i32 noundef %rxlen.addr.1.ph193.i.i) #10
  %75 = ptrtoint ptr %regmap.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap.i161.i.i, align 4
  call void @regcache_cache_bypass(ptr noundef %76, i1 noundef zeroext false) #10
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.else23.i.i, %if.then21.i.i
  %read_lsr.1.off0166.i.i = phi i1 [ true, %if.then21.i.i ], [ false, %if.else23.i.i ]
  %lsr.0164.i.i = phi i32 [ %conv.i.i, %if.then21.i.i ], [ %lsr.0165.i.i, %if.else23.i.i ]
  %bytes_read.0.i.i = phi i32 [ 1, %if.then21.i.i ], [ %rxlen.addr.1.ph193.i.i, %if.else23.i.i ]
  %and25.i.i = and i32 %lsr.0164.i.i, 30
  %77 = ptrtoint ptr %rx219.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx219.i.i, align 4
  %inc27.i.i = add i32 %78, 1
  store i32 %inc27.i.i, ptr %rx219.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool28.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end24.i.i.if.end87.i.i_crit_edge, label %if.then35.i.i, !prof !125

if.end24.i.i.if.end87.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i.i

if.then35.i.i:                                    ; preds = %if.end24.i.i
  %and36.i.i = and i32 %lsr.0164.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.else45.i.i, label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then35.i.i
  %79 = ptrtoint ptr %brk220.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %brk220.i.i, align 4
  %inc40.i.i = add i32 %80, 1
  store i32 %inc40.i.i, ptr %brk220.i.i, align 4
  %81 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %state1.i, align 4
  %83 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i14 = icmp eq ptr %84, null
  br i1 %tobool.not.i14, label %if.then38.i.i.if.end.i15_crit_edge, label %if.then.i

if.then38.i.i.if.end.i15_crit_edge:               ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i15

if.then.i:                                        ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %84(ptr noundef %arrayidx.i) #10
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then.i, %if.then38.i.i.if.end.i15_crit_edge
  %85 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool3.not.i = icmp eq i8 %86, 0
  br i1 %tobool3.not.i, label %if.end.i15.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i15.if.end15.i_crit_edge:                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i15
  %87 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %88, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %90 to i32
  %91 = ptrtoint ptr %line.i16 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %line.i16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %conv7.i)
  %cmp.i = icmp eq i32 %92, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %93 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sysrq.i.i.i, align 4
  %tobool10.not.i = icmp eq i32 %94, 0
  br i1 %tobool10.not.i, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i15.if.end15.i_crit_edge
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i, align 4
  %and.i17 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool16.not.i = icmp eq i32 %and.i17, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end66.i.i_crit_edge, label %if.then17.i

if.end15.i.if.end66.i.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %82, i32 0, i32 1
  %98 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tty.i, align 4
  call void @do_SAK(ptr noundef %99) #10
  br label %if.end66.i.i

uart_handle_break.exit:                           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %100, 500
  %101 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add.i, ptr %sysrq.i.i.i, align 4
  br label %while.cond.i.i

if.else45.i.i:                                    ; preds = %if.then35.i.i
  %and46.i.i = and i32 %lsr.0164.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.else51.i.i, label %if.else45.i.i.if.end66.sink.split.i.i_crit_edge

if.else45.i.i.if.end66.sink.split.i.i_crit_edge:  ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.sink.split.i.i

if.else51.i.i:                                    ; preds = %if.else45.i.i
  %and52.i.i = and i32 %lsr.0164.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.else57.i.i, label %if.else51.i.i.if.end66.sink.split.i.i_crit_edge

if.else51.i.i.if.end66.sink.split.i.i_crit_edge:  ; preds = %if.else51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.sink.split.i.i

if.else57.i.i:                                    ; preds = %if.else51.i.i
  %and58.i.i = and i32 %lsr.0164.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i)
  %tobool59.not.i.i = icmp eq i32 %and58.i.i, 0
  br i1 %tobool59.not.i.i, label %if.else57.i.i.if.end66.i.i_crit_edge, label %if.else57.i.i.if.end66.sink.split.i.i_crit_edge

if.else57.i.i.if.end66.sink.split.i.i_crit_edge:  ; preds = %if.else57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.sink.split.i.i

if.else57.i.i.if.end66.i.i_crit_edge:             ; preds = %if.else57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i.i

if.end66.sink.split.i.i:                          ; preds = %if.else57.i.i.if.end66.sink.split.i.i_crit_edge, %if.else51.i.i.if.end66.sink.split.i.i_crit_edge, %if.else45.i.i.if.end66.sink.split.i.i_crit_edge
  %parity.sink234.i.i = phi ptr [ %parity.i.i, %if.else45.i.i.if.end66.sink.split.i.i_crit_edge ], [ %frame.i.i, %if.else51.i.i.if.end66.sink.split.i.i_crit_edge ], [ %overrun.i.i, %if.else57.i.i.if.end66.sink.split.i.i_crit_edge ]
  %102 = ptrtoint ptr %parity.sink234.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %parity.sink234.i.i, align 4
  %inc50.i.i = add i32 %103, 1
  store i32 %inc50.i.i, ptr %parity.sink234.i.i, align 4
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.end66.sink.split.i.i, %if.else57.i.i.if.end66.i.i_crit_edge, %if.then17.i, %if.end15.i.if.end66.i.i_crit_edge
  %104 = ptrtoint ptr %read_status_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %read_status_mask.i.i, align 4
  %and67.i.i = and i32 %105, %and25.i.i
  %and68.i.i = and i32 %and67.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %tobool69.not.i.i = icmp eq i32 %and68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.else71.i.i, label %if.end66.i.i.if.end87.i.i_crit_edge

if.end66.i.i.if.end87.i.i_crit_edge:              ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i.i

if.else71.i.i:                                    ; preds = %if.end66.i.i
  %and72.i.i = and i32 %and67.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i.i)
  %tobool73.not.i.i = icmp eq i32 %and72.i.i, 0
  br i1 %tobool73.not.i.i, label %if.else75.i.i, label %if.else71.i.i.if.end87.i.i_crit_edge

if.else71.i.i.if.end87.i.i_crit_edge:             ; preds = %if.else71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i.i

if.else75.i.i:                                    ; preds = %if.else71.i.i
  %and76.i.i = and i32 %and67.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i.i)
  %tobool77.not.i.i = icmp eq i32 %and76.i.i, 0
  br i1 %tobool77.not.i.i, label %if.else79.i.i, label %if.else75.i.i.if.end87.i.i_crit_edge

if.else75.i.i.if.end87.i.i_crit_edge:             ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i.i

if.else79.i.i:                                    ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and80.i.i = shl nuw nsw i32 %and67.i.i, 1
  %106 = and i32 %and80.i.i, 4
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %if.else79.i.i, %if.else75.i.i.if.end87.i.i_crit_edge, %if.else71.i.i.if.end87.i.i_crit_edge, %if.end66.i.i.if.end87.i.i_crit_edge, %if.end24.i.i.if.end87.i.i_crit_edge
  %lsr.1.i.i = phi i32 [ %and67.i.i, %if.end66.i.i.if.end87.i.i_crit_edge ], [ %and67.i.i, %if.else71.i.i.if.end87.i.i_crit_edge ], [ %and67.i.i, %if.else75.i.i.if.end87.i.i_crit_edge ], [ %and67.i.i, %if.else79.i.i ], [ 0, %if.end24.i.i.if.end87.i.i_crit_edge ]
  %flag.0.i.i = phi i32 [ 1, %if.end66.i.i.if.end87.i.i_crit_edge ], [ 3, %if.else71.i.i.if.end87.i.i_crit_edge ], [ 2, %if.else75.i.i.if.end87.i.i_crit_edge ], [ %106, %if.else79.i.i ], [ 0, %if.end24.i.i.if.end87.i.i_crit_edge ]
  %umax.i.i = call i32 @llvm.umax.i32(i32 %bytes_read.0.i.i, i32 1) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end87.i.i
  %i.0191.i.i = phi i32 [ 0, %if.end87.i.i ], [ %inc101.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx91.i.i = getelementptr %struct.sc16is7xx_port, ptr %34, i32 0, i32 4, i32 %i.0191.i.i
  %107 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx91.i.i, align 1
  %conv92.i.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sysrq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i.i.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.end96.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.if.end96.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool1.not.i.i.i = icmp eq i8 %108, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread175.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %111, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge

land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread175.i.i

if.then3.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = call i32 @sysrq_mask() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i.i.i, label %uart_handle_sysrq_char.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.then3.i.i.i
  %call8.i.i.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %arrayidx.i, i32 noundef %conv92.i.i) #10
  br i1 %call8.i.i.i, label %if.end7.i.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge

if.end7.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread175.i.i

if.end7.i.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

uart_handle_sysrq_char.exit.thread175.i.i:        ; preds = %if.end7.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge, %land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge, %if.end.i.i.i.uart_handle_sysrq_char.exit.thread175.i.i_crit_edge
  %112 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %if.end96.i.i

uart_handle_sysrq_char.exit.i.i:                  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @handle_sysrq(i32 noundef %conv92.i.i) #10
  %113 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %for.inc.i.i

if.end96.i.i:                                     ; preds = %uart_handle_sysrq_char.exit.thread175.i.i, %for.body.i.i.if.end96.i.i_crit_edge
  %114 = ptrtoint ptr %ignore_status_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ignore_status_mask.i.i, align 4
  %and97.i.i = and i32 %115, %lsr.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i.i)
  %tobool98.not.i.i = icmp eq i32 %and97.i.i, 0
  br i1 %tobool98.not.i.i, label %if.end100.i.i, label %if.end96.i.i.for.inc.i.i_crit_edge

if.end96.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end100.i.i:                                    ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_insert_char(ptr noundef %arrayidx.i, i32 noundef %lsr.1.i.i, i32 noundef 2, i32 noundef %conv92.i.i, i32 noundef %flag.0.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end100.i.i, %if.end96.i.i.for.inc.i.i_crit_edge, %uart_handle_sysrq_char.exit.i.i, %if.end7.i.i.i.for.inc.i.i_crit_edge
  %inc101.i.i = add nuw i32 %i.0191.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc101.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %sub.i.i = sub i32 %rxlen.addr.1.ph193.i.i, %bytes_read.0.i.i
  %tobool12.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool12.not.i.i, label %sc16is7xx_handle_rx.exit.i, label %for.end.i.i.while.cond.outer.split.i.i_crit_edge

for.end.i.i.while.cond.outer.split.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.split.i.i

sc16is7xx_handle_rx.exit.i:                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %state1.i, align 4
  call void @tty_flip_buffer_push(ptr noundef %117) #10
  br label %sc16is7xx_port_irq.exit

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc16is7xx_handle_tx(ptr noundef %arrayidx.i) #10
  br label %sc16is7xx_port_irq.exit

do.body9.i:                                       ; preds = %if.end.i
  %call10.i = call i32 @___ratelimit(ptr noundef nonnull @sc16is7xx_port_irq._rs, ptr noundef nonnull @__func__.sc16is7xx_port_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.sc16is7xx_port_irq.exit_crit_edge, label %do.end.i

do.body9.i.sc16is7xx_port_irq.exit_crit_edge:     ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sc16is7xx_port_irq.exit

do.end.i:                                         ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i.i, align 4
  %line.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 41
  %120 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %line.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.25, i32 noundef %121, i32 noundef %and2.i) #13
  br label %sc16is7xx_port_irq.exit

sc16is7xx_port_irq.exit:                          ; preds = %do.end.i, %do.body9.i.sc16is7xx_port_irq.exit_crit_edge, %sw.bb8.i, %sc16is7xx_handle_rx.exit.i, %sw.bb.i.sc16is7xx_port_irq.exit_crit_edge, %for.body.sc16is7xx_port_irq.exit_crit_edge
  %or13 = or i1 %keep_polling.0.off043, %tobool.not.i
  %inc = add nuw nsw i32 %i.044, 1
  %122 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_id, align 4
  %nr_uart = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %nr_uart to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nr_uart, align 4
  %cmp = icmp slt i32 %inc, %125
  br i1 %cmp, label %sc16is7xx_port_irq.exit.for.body_crit_edge, label %for.end

sc16is7xx_port_irq.exit.for.body_crit_edge:       ; preds = %sc16is7xx_port_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %sc16is7xx_port_irq.exit
  br i1 %or13, label %for.end.while.cond_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %efr_lock) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_tx_empty(ptr nocapture noundef readonly %port) #4 align 64 {
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
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %9 = or i8 %6, 20
  %or.i = zext i8 %9 to i32
  %call4.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %or.i, ptr noundef nonnull %val.i) #10
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %12 = lshr i32 %11, 6
  %.lobit = and i32 %12, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_set_mctrl(ptr noundef %port, i32 noundef %mctrl) #4 align 64 {
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
  %config = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %config, align 4
  %kworker = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 5
  %reg_work = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 3
  %call1 = tail call zeroext i1 @kthread_queue_work(ptr noundef %kworker, ptr noundef %reg_work) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc16is7xx_get_mctrl(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 320
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_stop_tx(ptr noundef %port) #4 align 64 {
entry:
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
  %config.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config.i, align 4
  %or.i = or i32 %5, 2
  store i32 %or.i, ptr %config.i, align 4
  %ier_clear.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %ier_clear.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ier_clear.i, align 4
  %or39.i = or i8 %7, 2
  store i8 %or39.i, ptr %ier_clear.i, align 4
  %kworker.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 5
  %reg_work.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 3
  %call5.i = tail call zeroext i1 @kthread_queue_work(ptr noundef %kworker.i, ptr noundef %reg_work.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_start_tx(ptr noundef %port) #4 align 64 {
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
  %kworker = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 5
  %tx_work = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 2
  %call1 = tail call zeroext i1 @kthread_queue_work(ptr noundef %kworker, ptr noundef %tx_work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_stop_rx(ptr noundef %port) #4 align 64 {
entry:
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
  %config.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config.i, align 4
  %or.i = or i32 %5, 2
  store i32 %or.i, ptr %config.i, align 4
  %ier_clear.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %ier_clear.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ier_clear.i, align 4
  %or39.i = or i8 %7, 1
  store i8 %or39.i, ptr %ier_clear.i, align 4
  %kworker.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 5
  %reg_work.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 3
  %call5.i = tail call zeroext i1 @kthread_queue_work(ptr noundef %kworker.i, ptr noundef %reg_work.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #4 align 64 {
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
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = or i8 %5, 12
  %or.i = zext i8 %8 to i32
  %conv5.i = select i1 %tobool.not, i32 0, i32 64
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %or.i, i32 noundef 64, i32 noundef %conv5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_startup(ptr noundef readonly %port) #4 align 64 {
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
  %line.i.i.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %8 = or i8 %5, 4
  %or.i.i = zext i8 %8 to i32
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %or.i.i, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %line.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %17 = or i8 %14, 8
  %or.i = zext i8 %17 to i32
  %call5.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %or.i, i32 noundef 6) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %driver_data.i.i20 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i20, align 4
  %23 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %line.i.i.i, align 4
  %regmap.i23 = getelementptr inbounds %struct.sc16is7xx_port, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i23, align 4
  %27 = or i8 %24, 8
  %or.i24 = zext i8 %27 to i32
  %call5.i25 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %or.i24, i32 noundef 1) #10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %driver_data.i.i27 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i27, align 4
  %32 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %line.i.i.i, align 4
  %regmap.i30 = getelementptr inbounds %struct.sc16is7xx_port, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %regmap.i30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i30, align 4
  %36 = or i8 %33, 12
  %or.i31 = zext i8 %36 to i32
  %call5.i32 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %or.i31, i32 noundef 191) #10
  %37 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i, align 4
  tail call void @regcache_cache_bypass(ptr noundef %38, i1 noundef zeroext true) #10
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %driver_data.i.i34 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %driver_data.i.i34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i34, align 4
  %43 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %line.i.i.i, align 4
  %regmap.i37 = getelementptr inbounds %struct.sc16is7xx_port, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %regmap.i37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i37, align 4
  %47 = or i8 %44, 8
  %or.i38 = zext i8 %47 to i32
  %call5.i39 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %or.i38, i32 noundef 16) #10
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %driver_data.i.i41 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %driver_data.i.i41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i41, align 4
  %52 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %line.i.i.i, align 4
  %regmap.i44 = getelementptr inbounds %struct.sc16is7xx_port, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i44, align 4
  %56 = or i8 %53, 16
  %or.i45 = zext i8 %56 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %or.i45, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %driver_data.i.i47 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %driver_data.i.i47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i47, align 4
  %61 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %line.i.i.i, align 4
  %regmap.i50 = getelementptr inbounds %struct.sc16is7xx_port, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %regmap.i50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i50, align 4
  %65 = or i8 %62, 24
  %or.i51 = zext i8 %65 to i32
  %call5.i52 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef %or.i51, i32 noundef 108) #10
  %66 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i.i, align 4
  tail call void @regcache_cache_bypass(ptr noundef %67, i1 noundef zeroext false) #10
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %driver_data.i.i54 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %driver_data.i.i54 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i54, align 4
  %72 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %line.i.i.i, align 4
  %regmap.i57 = getelementptr inbounds %struct.sc16is7xx_port, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %regmap.i57 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i57, align 4
  %76 = or i8 %73, 12
  %or.i58 = zext i8 %76 to i32
  %call5.i59 = tail call i32 @regmap_write(ptr noundef %75, i32 noundef %or.i58, i32 noundef 3) #10
  %irda_mode = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 5
  %77 = ptrtoint ptr %irda_mode to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %irda_mode, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not = icmp eq i8 %78, 0
  %conv3 = select i1 %tobool.not, i32 0, i32 64
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %driver_data.i.i61 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %driver_data.i.i61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data.i.i61, align 4
  %83 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %line.i.i.i, align 4
  %regmap.i64 = getelementptr inbounds %struct.sc16is7xx_port, ptr %82, i32 0, i32 1
  %85 = ptrtoint ptr %regmap.i64 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i64, align 4
  %87 = or i8 %84, 16
  %or.i65 = zext i8 %87 to i32
  %call.i.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef %or.i65, i32 noundef 64, i32 noundef %conv3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %driver_data.i.i68 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %driver_data.i.i68 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver_data.i.i68, align 4
  %92 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %line.i.i.i, align 4
  %regmap.i71 = getelementptr inbounds %struct.sc16is7xx_port, ptr %91, i32 0, i32 1
  %94 = ptrtoint ptr %regmap.i71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap.i71, align 4
  %96 = or i8 %93, 60
  %or.i72 = zext i8 %96 to i32
  %call.i.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef %or.i72, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  %driver_data.i.i75 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %driver_data.i.i75 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver_data.i.i75, align 4
  %101 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %line.i.i.i, align 4
  %regmap.i78 = getelementptr inbounds %struct.sc16is7xx_port, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %regmap.i78 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap.i78, align 4
  %105 = or i8 %102, 4
  %or.i79 = zext i8 %105 to i32
  %call5.i80 = tail call i32 @regmap_write(ptr noundef %104, i32 noundef %or.i79, i32 noundef 3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_shutdown(ptr nocapture noundef readonly %port) #4 align 64 {
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
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = or i8 %5, 4
  %or.i = zext i8 %8 to i32
  %call5.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %or.i, i32 noundef 0) #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %driver_data.i.i5 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i5, align 4
  %13 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %line.i.i, align 4
  %regmap.i8 = getelementptr inbounds %struct.sc16is7xx_port, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i8, align 4
  %17 = or i8 %14, 60
  %or.i9 = zext i8 %17 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %or.i9, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i, align 4
  %22 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %line.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %26 = or i8 %23, 4
  %or.i.i = zext i8 %26 to i32
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %or.i.i, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %kworker = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 5
  tail call void @kthread_flush_worker(ptr noundef %kworker) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #4 align 64 {
entry:
  %val.i.i = alloca i32, align 4
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
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %and = and i32 %5, -1073741825
  store i32 %and, ptr %c_cflag, align 4
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %6 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %read_status_mask, align 4
  %7 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %termios, align 4
  %and24 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %spec.store.select126 = select i1 %tobool25.not, i32 2, i32 14
  %9 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select126, ptr %read_status_mask, align 4
  %10 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %termios, align 4
  %and31 = and i32 %11, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %entry.if.end36_crit_edge, label %if.then33

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or35 = or i32 %spec.store.select126, 16
  %12 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or35, ptr %read_status_mask, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %entry.if.end36_crit_edge
  %and10 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  %and2 = lshr i32 %5, 4
  %13 = and i32 %and2, 3
  %and13 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select.v = select i1 %tobool14.not, i32 24, i32 8
  %spec.select = select i1 %tobool.not, i32 0, i32 %spec.select.v
  %lcr.1 = or i32 %13, %spec.select
  %14 = and i32 %and2, 4
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %15 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ignore_status_mask, align 4
  %16 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %termios, align 4
  %and38 = shl i32 %17, 4
  %18 = and i32 %and38, 16
  store i32 %18, ptr %ignore_status_mask, align 4
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  %and45 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %spec.store.select161 = select i1 %tobool46.not, i32 30, i32 %18
  %21 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select161, ptr %ignore_status_mask, align 4
  %efr_lock = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %efr_lock, i32 noundef 0) #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 1
  %26 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %line.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %30 = or i8 %27, 12
  %or.i = zext i8 %30 to i32
  %call5.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %or.i, i32 noundef 191) #10
  %regmap = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %32, i1 noundef zeroext true) #10
  %arrayidx = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 8
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %driver_data.i.i128 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i128 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i128, align 4
  %39 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %line.i.i, align 4
  %regmap.i131 = getelementptr inbounds %struct.sc16is7xx_port, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %regmap.i131 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i131, align 4
  %43 = or i8 %40, 16
  %or.i132 = zext i8 %43 to i32
  %conv4.i = zext i8 %34 to i32
  %call5.i133 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %or.i132, i32 noundef %conv4.i) #10
  %arrayidx52 = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 9
  %44 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx52, align 1
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %driver_data.i.i135 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %driver_data.i.i135 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i135, align 4
  %50 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %line.i.i, align 4
  %regmap.i138 = getelementptr inbounds %struct.sc16is7xx_port, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %regmap.i138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i138, align 4
  %54 = or i8 %51, 24
  %or.i139 = zext i8 %54 to i32
  %conv4.i140 = zext i8 %45 to i32
  %call5.i141 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %or.i139, i32 noundef %conv4.i140) #10
  %55 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool55.not.inv = icmp slt i32 %56, 0
  %spec.select125 = select i1 %tobool55.not.inv, i32 192, i32 0
  %57 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %termios, align 4
  %and60 = lshr i32 %58, 7
  %59 = and i32 %and60, 8
  %60 = or i32 %59, %spec.select125
  %and66 = lshr i32 %58, 11
  %61 = and i32 %and66, 2
  %62 = or i32 %60, %61
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %driver_data.i.i143 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %driver_data.i.i143 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i143, align 4
  %67 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %line.i.i, align 4
  %regmap.i146 = getelementptr inbounds %struct.sc16is7xx_port, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %regmap.i146 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i146, align 4
  %71 = or i8 %68, 8
  %or.i147 = zext i8 %71 to i32
  %call5.i149 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef %or.i147, i32 noundef %62) #10
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %73, i1 noundef zeroext false) #10
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %driver_data.i.i151 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %driver_data.i.i151 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i.i151, align 4
  %78 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %line.i.i, align 4
  %regmap.i154 = getelementptr inbounds %struct.sc16is7xx_port, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %regmap.i154 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i154, align 4
  %82 = or i8 %79, 12
  %or.i155 = zext i8 %82 to i32
  %conv4.i156 = or i32 %lcr.1, %14
  %call5.i157 = tail call i32 @regmap_write(ptr noundef %81, i32 noundef %or.i155, i32 noundef %conv4.i156) #10
  tail call void @mutex_unlock(ptr noundef %efr_lock) #10
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %83 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %uartclk, align 4
  %div122 = lshr i32 %84, 4
  %div75 = udiv i32 %84, 4194240
  %call78 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef %div75, i32 noundef %div122) #10
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %driver_data.i.i159 = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %driver_data.i.i159 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver_data.i.i159, align 4
  %89 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %uartclk, align 4
  %div136.i = lshr i32 %90, 4
  %div2.i = udiv i32 %div136.i, %call78
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div2.i)
  %cmp.i = icmp ugt i32 %div2.i, 65535
  %div339.i = lshr i32 %div2.i, 2
  %spec.select.i = select i1 %cmp.i, i32 %div339.i, i32 %div2.i
  %efr_lock.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %88, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %efr_lock.i, i32 noundef 0) #10
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %95 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %val.i.i, align 4
  %96 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %line.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %94, i32 0, i32 1
  %98 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap.i.i, align 4
  %100 = or i8 %97, 12
  %or.i.i = zext i8 %100 to i32
  %call4.i.i = call i32 @regmap_read(ptr noundef %99, i32 noundef %or.i.i, ptr noundef nonnull %val.i.i) #10
  %101 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %driver_data.i.i42.i = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 8
  %105 = ptrtoint ptr %driver_data.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %driver_data.i.i42.i, align 4
  %107 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %line.i.i, align 4
  %regmap.i45.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %106, i32 0, i32 1
  %109 = ptrtoint ptr %regmap.i45.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i45.i, align 4
  %111 = or i8 %108, 12
  %or.i46.i = zext i8 %111 to i32
  %call5.i.i = call i32 @regmap_write(ptr noundef %110, i32 noundef %or.i46.i, i32 noundef 191) #10
  %regmap.i160 = getelementptr inbounds %struct.sc16is7xx_port, ptr %88, i32 0, i32 1
  %112 = ptrtoint ptr %regmap.i160 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap.i160, align 4
  call void @regcache_cache_bypass(ptr noundef %113, i1 noundef zeroext true) #10
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  %driver_data.i.i48.i = getelementptr inbounds %struct.device, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %driver_data.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %driver_data.i.i48.i, align 4
  %118 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %line.i.i, align 4
  %regmap.i51.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %117, i32 0, i32 1
  %120 = ptrtoint ptr %regmap.i51.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap.i51.i, align 4
  %122 = or i8 %119, 8
  %or.i52.i = zext i8 %122 to i32
  %call5.i53.i = call i32 @regmap_write(ptr noundef %121, i32 noundef %or.i52.i, i32 noundef 16) #10
  %123 = ptrtoint ptr %regmap.i160 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap.i160, align 4
  call void @regcache_cache_bypass(ptr noundef %124, i1 noundef zeroext false) #10
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  %driver_data.i.i55.i = getelementptr inbounds %struct.device, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %driver_data.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %driver_data.i.i55.i, align 4
  %129 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %line.i.i, align 4
  %regmap.i58.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %128, i32 0, i32 1
  %131 = ptrtoint ptr %regmap.i58.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap.i58.i, align 4
  %133 = or i8 %130, 12
  %or.i59.i = zext i8 %133 to i32
  %conv4.i.i = and i32 %102, 255
  %call5.i60.i = call i32 @regmap_write(ptr noundef %132, i32 noundef %or.i59.i, i32 noundef %conv4.i.i) #10
  call void @mutex_unlock(ptr noundef %efr_lock.i) #10
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 4
  %driver_data.i.i62.i = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 8
  %136 = ptrtoint ptr %driver_data.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %driver_data.i.i62.i, align 4
  %138 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %line.i.i, align 4
  %regmap.i65.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %137, i32 0, i32 1
  %140 = ptrtoint ptr %regmap.i65.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap.i65.i, align 4
  %142 = or i8 %139, 16
  %or.i66.i = zext i8 %142 to i32
  %conv5.i67.i = select i1 %cmp.i, i32 128, i32 0
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %141, i32 noundef %or.i66.i, i32 noundef 128, i32 noundef %conv5.i67.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %143 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev, align 4
  %driver_data.i.i69.i = getelementptr inbounds %struct.device, ptr %144, i32 0, i32 8
  %145 = ptrtoint ptr %driver_data.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %driver_data.i.i69.i, align 4
  %147 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %line.i.i, align 4
  %regmap.i72.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %146, i32 0, i32 1
  %149 = ptrtoint ptr %regmap.i72.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap.i72.i, align 4
  %151 = or i8 %148, 12
  %or.i73.i = zext i8 %151 to i32
  %call5.i74.i = call i32 @regmap_write(ptr noundef %150, i32 noundef %or.i73.i, i32 noundef 128) #10
  %152 = ptrtoint ptr %regmap.i160 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regmap.i160, align 4
  call void @regcache_cache_bypass(ptr noundef %153, i1 noundef zeroext true) #10
  %div837.i = lshr i32 %spec.select.i, 8
  %154 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev, align 4
  %driver_data.i.i76.i = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 8
  %156 = ptrtoint ptr %driver_data.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %driver_data.i.i76.i, align 4
  %158 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %line.i.i, align 4
  %regmap.i79.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %157, i32 0, i32 1
  %160 = ptrtoint ptr %regmap.i79.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regmap.i79.i, align 4
  %162 = or i8 %159, 4
  %or.i80.i = zext i8 %162 to i32
  %conv4.i81.i = and i32 %div837.i, 255
  %call5.i82.i = call i32 @regmap_write(ptr noundef %161, i32 noundef %or.i80.i, i32 noundef %conv4.i81.i) #10
  %163 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev, align 4
  %driver_data.i.i84.i = getelementptr inbounds %struct.device, ptr %164, i32 0, i32 8
  %165 = ptrtoint ptr %driver_data.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %driver_data.i.i84.i, align 4
  %167 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %line.i.i, align 4
  %conv.i.i86.i = zext i8 %168 to i32
  %regmap.i87.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %166, i32 0, i32 1
  %169 = ptrtoint ptr %regmap.i87.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regmap.i87.i, align 4
  %conv4.i88.i = and i32 %spec.select.i, 255
  %call5.i89.i = call i32 @regmap_write(ptr noundef %170, i32 noundef %conv.i.i86.i, i32 noundef %conv4.i88.i) #10
  %171 = ptrtoint ptr %regmap.i160 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regmap.i160, align 4
  call void @regcache_cache_bypass(ptr noundef %172, i1 noundef zeroext false) #10
  %173 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev, align 4
  %driver_data.i.i91.i = getelementptr inbounds %struct.device, ptr %174, i32 0, i32 8
  %175 = ptrtoint ptr %driver_data.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %driver_data.i.i91.i, align 4
  %177 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %line.i.i, align 4
  %regmap.i94.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %176, i32 0, i32 1
  %179 = ptrtoint ptr %regmap.i94.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regmap.i94.i, align 4
  %181 = or i8 %178, 12
  %or.i95.i = zext i8 %181 to i32
  %call5.i97.i = call i32 @regmap_write(ptr noundef %180, i32 noundef %or.i95.i, i32 noundef %conv4.i.i) #10
  %div1238.i = lshr i32 %spec.select.i, 1
  %add.i = add nuw nsw i32 %div1238.i, %div136.i
  %div13.i = udiv i32 %add.i, %spec.select.i
  %182 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %c_cflag, align 4
  call void @uart_update_timeout(ptr noundef %port, i32 noundef %183, i32 noundef %div13.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc16is7xx_pm(ptr nocapture noundef readonly %port, i32 noundef %state, i32 noundef %oldstate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp.not = icmp eq i32 %state, 0
  %dev.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %line.i.i.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %8 = or i8 %5, 4
  %or.i.i = zext i8 %8 to i32
  %conv5.i.i = select i1 %cmp.not, i32 0, i32 16
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %or.i.i, i32 noundef 16, i32 noundef %conv5.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sc16is7xx_type(ptr nocapture noundef readonly %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %1)
  %cmp = icmp eq i32 %1, 108
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
define internal void @sc16is7xx_null_void(ptr nocapture noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc16is7xx_request_port(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sc16is7xx_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #8 align 64 {
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
  store i32 108, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc16is7xx_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %s) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 108, label %entry.if.end_crit_edge9
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
declare dso_local void @kthread_flush_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sc16is7xx_handle_tx(ptr noundef %port) unnamed_addr #4 align 64 {
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
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %6 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %line.i.i = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 1
  %8 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %line.i.i, align 4
  %conv.i.i = zext i8 %9 to i32
  %regmap.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %conv4.i = zext i8 %7 to i32
  %call5.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv.i.i, i32 noundef %conv4.i) #10
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx, align 4
  %14 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp eq i32 %16, %18
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stopped.i, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i = icmp eq i8 %22, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %23 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i.not = icmp eq i32 %24, 0
  br i1 %tobool4.not.i.not, label %if.end9, label %uart_tx_stopped.exit.cleanup_crit_edge

uart_tx_stopped.exit.cleanup_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %uart_tx_stopped.exit
  %sub = sub i32 %16, %18
  %and = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end9.if.end48_crit_edge, label %if.then19, !prof !124

if.end9.if.end48_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then19:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %val.i, align 4
  %line.i.i94 = getelementptr inbounds %struct.sc16is7xx_one, ptr %port, i32 0, i32 1
  %26 = ptrtoint ptr %line.i.i94 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %line.i.i94, align 4
  %regmap.i96 = getelementptr inbounds %struct.sc16is7xx_port, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %regmap.i96 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i96, align 4
  %30 = or i8 %27, 32
  %or.i = zext i8 %30 to i32
  %call4.i = call i32 @regmap_read(ptr noundef %29, i32 noundef %or.i, ptr noundef nonnull %val.i) #10
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %conv5.i = trunc i32 %32 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %conv = and i32 %32, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv5.i)
  %cmp21 = icmp ugt i8 %conv5.i, 64
  br i1 %cmp21, label %do.body, label %if.then19.if.end32_crit_edge

if.then19.if.end32_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body:                                          ; preds = %if.then19
  %call24 = call i32 @___ratelimit(ptr noundef nonnull @sc16is7xx_handle_tx._rs, ptr noundef nonnull @__func__.sc16is7xx_handle_tx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body.if.end32_crit_edge, label %do.end

do.body.if.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef 64) #13
  br label %if.end32

if.end32:                                         ; preds = %do.end, %do.body.if.end32_crit_edge, %if.then19.if.end32_crit_edge
  %txlen.0 = phi i32 [ %conv, %if.then19.if.end32_crit_edge ], [ 0, %do.end ], [ 0, %do.body.if.end32_crit_edge ]
  %35 = call i32 @llvm.umin.i32(i32 %and, i32 %txlen.0)
  %tx36 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %36 = ptrtoint ptr %tx36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx36, align 4
  %add = add i32 %37, %35
  store i32 %add, ptr %tx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp37105.not = icmp eq i32 %35, 0
  br i1 %cmp37105.not, label %if.end32.if.end48_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end32.for.body_crit_edge
  %i.0106 = phi i32 [ %inc46, %for.body.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %38 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xmit1, align 4
  %40 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 1
  %arrayidx41 = getelementptr %struct.sc16is7xx_port, ptr %3, i32 0, i32 4, i32 %i.0106
  %44 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx41, align 1
  %45 = load i32, ptr %tail, align 4
  %add43 = add i32 %45, 1
  %and44 = and i32 %add43, 4095
  store i32 %and44, ptr %tail, align 4
  %inc46 = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc46, %35
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp37105.not, label %for.end.if.end48_crit_edge, label %if.end.i, !prof !124

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %line.i.i94 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %line.i.i94, align 4
  %conv.i.i99 = zext i8 %47 to i32
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %driver_data.i.i101 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %driver_data.i.i101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i101, align 4
  %regmap.i102 = getelementptr inbounds %struct.sc16is7xx_port, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %regmap.i102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i102, align 4
  call void @regcache_cache_bypass(ptr noundef %53, i1 noundef zeroext true) #10
  %54 = ptrtoint ptr %regmap.i102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i102, align 4
  %buf.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %51, i32 0, i32 4
  %call10.i = call i32 @regmap_raw_write(ptr noundef %55, i32 noundef %conv.i.i99, ptr noundef %buf.i, i32 noundef %35) #10
  %56 = ptrtoint ptr %regmap.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i102, align 4
  call void @regcache_cache_bypass(ptr noundef %57, i1 noundef zeroext false) #10
  br label %if.end48

if.end48:                                         ; preds = %if.end.i, %for.end.if.end48_crit_edge, %if.end32.if.end48_crit_edge, %if.end9.if.end48_crit_edge
  %58 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %head, align 4
  %60 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tail, align 4
  %sub51 = sub i32 %59, %61
  %and52 = and i32 %sub51, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %if.then55, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_write_wakeup(ptr noundef %port) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end48.cleanup_crit_edge, %uart_tx_stopped.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sc16is7xx_remove(ptr nocapture noundef readonly %dev) unnamed_addr #4 align 64 {
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
  %nr_gpio = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nr_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gpio = getelementptr inbounds %struct.sc16is7xx_port, ptr %1, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %nr_uart22 = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_uart22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_uart22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23 = icmp sgt i32 %9, 0
  br i1 %cmp23, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sc16is7xx_port, ptr %1, i32 0, i32 8, i32 %i.024
  %call2 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @sc16is7xx_uart, ptr noundef %arrayidx) #10
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  tail call void @_clear_bit(i32 noundef %11, ptr noundef nonnull @sc16is7xx_lines) #10
  %dev.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %line.i.i.i = getelementptr %struct.sc16is7xx_port, ptr %1, i32 0, i32 8, i32 %i.024, i32 1
  %16 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %line.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.sc16is7xx_port, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %20 = or i8 %17, 4
  %or.i.i = zext i8 %20 to i32
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %or.i.i, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %inc = add nuw nsw i32 %i.024, 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %nr_uart = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %nr_uart to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_uart, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %kworker = getelementptr inbounds %struct.sc16is7xx_port, ptr %1, i32 0, i32 5
  tail call void @kthread_flush_worker(ptr noundef %kworker) #10
  %kworker_task = getelementptr inbounds %struct.sc16is7xx_port, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %kworker_task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kworker_task, align 4
  %call9 = tail call i32 @kthread_stop(ptr noundef %26) #10
  %clk = getelementptr inbounds %struct.sc16is7xx_port, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %28) #10
  tail call void @clk_unprepare(ptr noundef %28) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_spi_probe(ptr noundef %spi) #4 align 64 {
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
  %cond6 = select i1 %tobool2.not, i32 15000000, i32 %2
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
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %call12 = tail call ptr @device_get_match_data(ptr noundef %spi) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then10.cleanup_crit_edge, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call ptr @spi_get_device_id(ptr noundef %spi) #10
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call16, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %8 = inttoptr i32 %7 to ptr
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10.if.end17_crit_edge
  %devtype.0 = phi ptr [ %call12, %if.then10.if.end17_crit_edge ], [ %8, %if.else ]
  %nr_uart = getelementptr inbounds %struct.sc16is7xx_devtype, ptr %devtype.0, i32 0, i32 2
  %9 = ptrtoint ptr %nr_uart to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_uart, align 4
  %sub = add i32 %10, -1
  %or = or i32 %sub, 60
  store i32 %or, ptr getelementptr inbounds (%struct.regmap_config, ptr @regcfg, i32 0, i32 19), align 4
  %call18 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @regcfg, ptr noundef nonnull @sc16is7xx_spi_probe._key, ptr noundef nonnull @.str.28) #10
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call20 = tail call fastcc i32 @sc16is7xx_probe(ptr noundef %spi, ptr noundef %devtype.0, ptr noundef %call18, i32 noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc16is7xx_spi_remove(ptr nocapture noundef readonly %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sc16is7xx_remove(ptr noundef %spi)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !36, !38, !39, !40, !41, !42, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__UNIQUE_ID_alias292, !1, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1476, i32 1}
!2 = !{ptr @__initcall__kmod_sc16is7xx__293_1569_sc16is7xx_init6, !3, !"__initcall__kmod_sc16is7xx__293_1569_sc16is7xx_init6", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1569, i32 1}
!4 = !{ptr @__exitcall_sc16is7xx_exit, !5, !"__exitcall_sc16is7xx_exit", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1582, i32 1}
!6 = !{ptr @__UNIQUE_ID_file294, !7, !"__UNIQUE_ID_file294", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1584, i32 1}
!8 = !{ptr @__UNIQUE_ID_license295, !7, !"__UNIQUE_ID_license295", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author296, !10, !"__UNIQUE_ID_author296", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1585, i32 1}
!11 = !{ptr @__UNIQUE_ID_description297, !12, !"__UNIQUE_ID_description297", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1586, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1538, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sc16is7xx_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @sc16is7xx_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1545, i32 3}
!21 = !{ptr @sc16is7xx_init._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @sc16is7xx_init._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1553, i32 3}
!25 = !{ptr @sc16is7xx_init._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sc16is7xx_init._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1522, i32 12}
!29 = !{ptr @sc16is7xx_i2c_uart_driver, !30, !"sc16is7xx_i2c_uart_driver", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1520, i32 26}
!31 = !{ptr @sc16is7xx_i2c_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1496, i32 11}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @regcfg, !35, !"regcfg", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1404, i32 29}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1207, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sc16is7xx_probe._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @sc16is7xx_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1212, i32 32}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1229, i32 4}
!47 = !{ptr @sc16is7xx_probe.__UNIQUE_ID_ddebug291, !46, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!48 = !{ptr @sc16is7xx_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1237, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sc16is7xx_probe.__key.18, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1239, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sc16is7xx_probe.lock_key, !55, !"lock_key", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1261, i32 9}
!56 = !{ptr @sc16is7xx_probe.request_key, !55, !"request_key", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1326, i32 3}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 971, i32 4}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sc16is7xx_config_rs485._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sc16is7xx_config_rs485._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @sc16is7xx_ops, !65, !"sc16is7xx_ops", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1111, i32 30}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 655, i32 4}
!68 = !{ptr @sc16is7xx_handle_tx._rs, !67, !"_rs", i1 false, i1 false}
!69 = !{ptr @__func__.sc16is7xx_handle_tx, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sc16is7xx_handle_tx._entry, !67, !"_entry", i1 false, i1 false}
!72 = !{ptr @sc16is7xx_handle_tx._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @sc16is7xx_port_irq._rs, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 704, i32 4}
!75 = !{ptr @__func__.sc16is7xx_port_irq, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sc16is7xx_port_irq._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @sc16is7xx_port_irq._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @sc16is7xx_handle_rx._rs, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 563, i32 3}
!81 = !{ptr @__func__.sc16is7xx_handle_rx, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @sc16is7xx_handle_rx._entry, !80, !"_entry", i1 false, i1 false}
!85 = !{ptr @sc16is7xx_handle_rx._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @sc16is7xx_lines, !87, !"sc16is7xx_lines", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 335, i32 22}
!88 = !{ptr @sc16is7xx_dt_ids, !89, !"sc16is7xx_dt_ids", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1393, i32 49}
!90 = !{ptr @sc16is74x_devtype, !91, !"sc16is74x_devtype", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 431, i32 39}
!92 = !{ptr @sc16is750_devtype, !93, !"sc16is750_devtype", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 437, i32 39}
!94 = !{ptr @sc16is752_devtype, !95, !"sc16is752_devtype", i1 false, i1 false}
!95 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 443, i32 39}
!96 = !{ptr @sc16is760_devtype, !97, !"sc16is760_devtype", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 449, i32 39}
!98 = !{ptr @sc16is762_devtype, !99, !"sc16is762_devtype", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 455, i32 39}
!100 = !{ptr @sc16is7xx_i2c_id_table, !101, !"sc16is7xx_i2c_id_table", i1 false, i1 false}
!101 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1508, i32 35}
!102 = !{ptr @sc16is7xx_spi_uart_driver, !103, !"sc16is7xx_spi_uart_driver", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1466, i32 26}
!104 = !{ptr @sc16is7xx_spi_id_table, !105, !"sc16is7xx_spi_id_table", i1 false, i1 false}
!105 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1453, i32 35}
!106 = !{ptr @sc16is7xx_spi_probe._key, !107, !"_key", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 1441, i32 11}
!108 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 339, i32 14}
!111 = !{ptr @sc16is7xx_uart, !112, !"sc16is7xx_uart", i1 false, i1 false}
!112 = !{!"../drivers/tty/serial/sc16is7xx.c", i32 337, i32 27}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{i64 2148765865, i64 2148765870, i64 2148765883, i64 2148765927, i64 2148765961, i64 2148765982}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i8 0, i8 2}
