; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/cc2520.c_pt.bc'
source_filename = "../drivers/net/ieee802154/cc2520.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cc2520_platform_data = type { i32, i32, i32, i32, i32, i32 }
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
%struct.cc2520_private = type { ptr, ptr, ptr, %struct.mutex, i8, i8, i32, %struct.work_struct, %struct.spinlock, %struct.completion, i8 }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.ieee802154_hw_addr_filt = type { i16, i16, i64, i8 }

@__initcall__kmod_cc2520__350_1251_cc2520_driver_init6 = internal global ptr @cc2520_driver_init, section ".initcall6.init", align 4
@cc2520_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @cc2520_ids, ptr @cc2520_probe, ptr @cc2520_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cc2520_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cc2520_driver_exit = internal global ptr @cc2520_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author351 = internal constant [45 x i8] c"cc2520.author=Varka Bhadram <varkab@cdac.in>\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [45 x i8] c"cc2520.description=CC2520 Transceiver Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [42 x i8] c"cc2520.file=drivers/net/ieee802154/cc2520\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [22 x i8] c"cc2520.license=GPL v2\00", section ".modinfo", align 1
@cc2520_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"cc2520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cc2520\00", [25 x i8] zeroinitializer }, align 32
@cc2520_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cc2520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cc2520_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1084, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc2520_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/ieee802154/cc2520.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr = internal global ptr @cc2520_probe._entry, section ".printk_index", align 4
@cc2520_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->buffer_mutex\00", [44 x i8] zeroinitializer }, align 32
@cc2520_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&priv->fifop_irqwork)\00", [56 x i8] zeroinitializer }, align 32
@cc2520_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@cc2520_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fifo gpio is not valid\0A\00", [40 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr.13 = internal global ptr @cc2520_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fifo\00", [27 x i8] zeroinitializer }, align 32
@cc2520_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cca gpio is not valid\0A\00", [41 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr.17 = internal global ptr @cc2520_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cca\00", [28 x i8] zeroinitializer }, align 32
@cc2520_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fifop gpio is not valid\0A\00", [39 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr.21 = internal global ptr @cc2520_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fifop\00", [26 x i8] zeroinitializer }, align 32
@cc2520_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sfd gpio is not valid\0A\00", [41 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr.25 = internal global ptr @cc2520_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfd\00", [28 x i8] zeroinitializer }, align 32
@cc2520_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset gpio is not valid\0A\00", [39 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr.29 = internal global ptr @cc2520_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cc2520_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vreg gpio is not valid\0A\00", [40 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr.33 = internal global ptr @cc2520_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vreg\00", [27 x i8] zeroinitializer }, align 32
@cc2520_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 1188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get fifop irq\0A\00", [39 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr.37 = internal global ptr @cc2520_probe._entry.35, section ".printk_index", align 4
@cc2520_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 1200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not get sfd irq\0A\00", [41 x i8] zeroinitializer }, align 32
@cc2520_probe._entry_ptr.40 = internal global ptr @cc2520_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fifo-gpio\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fifop-gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfd-gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cca-gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vreg-gpio\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset-gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"amplified\00", [22 x i8] zeroinitializer }, align 32
@cc2520_fifop_irqwork.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cc2520_fifop_irqwork\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fifop interrupt received\0A\00", [38 x i8] zeroinitializer }, align 32
@cc2520_fifop_irqwork.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.50, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxfifo overflow\0A\00", [47 x i8] zeroinitializer }, align 32
@cc2520_rx.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cc2520_rx\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"corrupted frame received\0A\00", [38 x i8] zeroinitializer }, align 32
@cc2520_rx.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"frame reception failed\0A\00", [40 x i8] zeroinitializer }, align 32
@cc2520_rx.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.54, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CRC check failed\0A\00", [46 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cc2520_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 971, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"oscillator start failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc2520_hw_init\00", [17 x i8] zeroinitializer }, align 32
@cc2520_hw_init._entry_ptr = internal global ptr @cc2520_hw_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cc2520_read_register.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cc2520_read_register\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi status = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cc2520_sfd_isr.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc2520_sfd_isr\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SFD for TX\0A\00", [20 x i8] zeroinitializer }, align 32
@cc2520_sfd_isr.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.3, ptr @.str.62, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SFD for RX\0A\00", [20 x i8] zeroinitializer }, align 32
@cc2520_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @cc2520_start, ptr @cc2520_stop, ptr @cc2520_tx, ptr null, ptr @cc2520_ed, ptr @cc2520_set_channel, ptr @cc2520_filter, ptr @cc2520_set_txpower, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cc2520_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@cc2520_powers = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 500, i32 300, i32 200, i32 100, i32 0, i32 -200, i32 -400, i32 -700, i32 -1800], [60 x i8] zeroinitializer }, align 32
@cc2520_cc2591_powers = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1700, i32 1600, i32 1400, i32 1100, i32 -100, i32 -800], [40 x i8] zeroinitializer }, align 32
@cc2520_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cc2520 tx underflow exception\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cc2520_tx\00", [22 x i8] zeroinitializer }, align 32
@cc2520_tx._entry_ptr = internal global ptr @cc2520_tx._entry, section ".printk_index", align 4
@cc2520_set_channel.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc2520_set_channel\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trying to set channel\0A\00", [41 x i8] zeroinitializer }, align 32
@cc2520_write_ram.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.3, ptr @.str.59, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc2520_write_ram\00", [47 x i8] zeroinitializer }, align 32
@cc2520_set_promiscuous_mode.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cc2520_set_promiscuous_mode\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s : mode %d\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 100, i64 200, i64 300, i64 500, i64 4294965496, i64 4294966596, i64 4294966896, i64 4294967096]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 32, i64 1100, i64 1400, i64 1600, i64 1700, i64 4294966496, i64 4294967196]
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"cc2520_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1242, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"cc2520_ids\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1229, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1244, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"cc2520_of_ids\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1235, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1084, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1095, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1096, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1097, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1105, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1111, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1116, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1122, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1127, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1133, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1138, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1144, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1149, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1155, i32 29 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1160, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1166, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1188, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1200, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 930, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 933, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 935, i32 37 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 936, i32 37 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 937, i32 38 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 938, i32 39 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 941, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 875, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 880, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 548, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 557, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 578, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 87, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 971, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 366, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 904, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 908, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [11 x i8] c"cc2520_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 813, i32 36 }
@___asan_gen_.260 = private unnamed_addr constant [14 x i8] c"cc2520_powers\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 769, i32 18 }
@___asan_gen_.263 = private unnamed_addr constant [21 x i8] c"cc2520_cc2591_powers\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 774, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 507, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 636, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 333, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [35 x i8] c"../drivers/net/ieee802154/cc2520.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 795, i32 2 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_cc2520_driver_exit, ptr @__initcall__kmod_cc2520__350_1251_cc2520_driver_init6, ptr @cc2520_driver_exit, ptr @cc2520_hw_init._entry, ptr @cc2520_hw_init._entry_ptr, ptr @cc2520_probe._entry, ptr @cc2520_probe._entry.11, ptr @cc2520_probe._entry.15, ptr @cc2520_probe._entry.19, ptr @cc2520_probe._entry.23, ptr @cc2520_probe._entry.27, ptr @cc2520_probe._entry.31, ptr @cc2520_probe._entry.35, ptr @cc2520_probe._entry.38, ptr @cc2520_probe._entry_ptr, ptr @cc2520_probe._entry_ptr.13, ptr @cc2520_probe._entry_ptr.17, ptr @cc2520_probe._entry_ptr.21, ptr @cc2520_probe._entry_ptr.25, ptr @cc2520_probe._entry_ptr.29, ptr @cc2520_probe._entry_ptr.33, ptr @cc2520_probe._entry_ptr.37, ptr @cc2520_probe._entry_ptr.40, ptr @cc2520_tx._entry, ptr @cc2520_tx._entry_ptr, ptr @cc2520_driver, ptr @cc2520_ids, ptr @.str, ptr @cc2520_of_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cc2520_probe.__key, ptr @.str.6, ptr @cc2520_probe.__key.7, ptr @.str.8, ptr @cc2520_probe.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @init_completion.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @cc2520_ops, ptr @cc2520_powers, ptr @cc2520_cc2591_powers, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_powers to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_cc2591_powers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc2520_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @cc2520_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cc2520_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cc2520_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_probe(ptr noundef %spi) #2 align 64 {
entry:
  %pdata = alloca %struct.cc2520_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pdata) #6
  %0 = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 4
  %4 = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 5
  %5 = call ptr @memset(ptr %pdata, i32 255, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 260, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = call fastcc i32 @cc2520_get_platform_data(ptr noundef %spi, ptr noundef nonnull %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %call.i, align 4
  %call.i199 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 3, i32 noundef 3520) #6
  %buf = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i199, ptr %buf, align 4
  %tobool9.not = icmp eq ptr %call.i199, null
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %do.body12

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body12:                                        ; preds = %if.end4
  %buffer_mutex = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %buffer_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @cc2520_probe.__key) #6
  %fifop_irqwork = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %fifop_irqwork, i32 noundef 0) #6
  %9 = ptrtoint ptr %fifop_irqwork to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %fifop_irqwork, align 4
  %lockdep_map = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @cc2520_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry19 = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cc2520_fifop_irqwork, ptr %func, align 4
  %lock = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @cc2520_probe.__key.9, i16 noundef signext 3) #6
  %tx_complete = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_complete, align 4
  %wait.i = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @init_completion.__key) #6
  %amplified = getelementptr inbounds %struct.cc2520_private, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %amplified to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %amplified, align 1
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %17 = icmp ult i32 %16, 2048
  br i1 %17, label %if.end33, label %do.body12.err_hw_init.sink.split_crit_edge

do.body12.err_hw_init.sink.split_crit_edge:       ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init.sink.split

if.end33:                                         ; preds = %do.body12
  %call36 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %16, i32 noundef 1, ptr noundef nonnull @.str.14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.err_hw_init_crit_edge

if.end33.err_hw_init_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init

if.end39:                                         ; preds = %if.end33
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %20 = icmp ult i32 %19, 2048
  br i1 %20, label %if.end46, label %if.end39.err_hw_init.sink.split_crit_edge

if.end39.err_hw_init.sink.split_crit_edge:        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init.sink.split

if.end46:                                         ; preds = %if.end39
  %call49 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %19, i32 noundef 1, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end46.err_hw_init_crit_edge

if.end46.err_hw_init_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init

if.end52:                                         ; preds = %if.end46
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %23 = icmp ult i32 %22, 2048
  br i1 %23, label %if.end59, label %if.end52.err_hw_init.sink.split_crit_edge

if.end52.err_hw_init.sink.split_crit_edge:        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init.sink.split

if.end59:                                         ; preds = %if.end52
  %call62 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %22, i32 noundef 1, ptr noundef nonnull @.str.22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.err_hw_init_crit_edge

if.end59.err_hw_init_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init

if.end65:                                         ; preds = %if.end59
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %25)
  %26 = icmp ult i32 %25, 2048
  br i1 %26, label %if.end72, label %if.end65.err_hw_init.sink.split_crit_edge

if.end65.err_hw_init.sink.split_crit_edge:        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init.sink.split

if.end72:                                         ; preds = %if.end65
  %call75 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %25, i32 noundef 1, ptr noundef nonnull @.str.26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end72.err_hw_init_crit_edge

if.end72.err_hw_init_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init

if.end78:                                         ; preds = %if.end72
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %28)
  %29 = icmp ult i32 %28, 2048
  br i1 %29, label %if.end85, label %if.end78.err_hw_init.sink.split_crit_edge

if.end78.err_hw_init.sink.split_crit_edge:        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init.sink.split

if.end85:                                         ; preds = %if.end78
  %call88 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %28, i32 noundef 0, ptr noundef nonnull @.str.30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end85.err_hw_init_crit_edge

if.end85.err_hw_init_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init

if.end91:                                         ; preds = %if.end85
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %31)
  %32 = icmp ult i32 %31, 2048
  br i1 %32, label %if.end98, label %if.end91.err_hw_init.sink.split_crit_edge

if.end91.err_hw_init.sink.split_crit_edge:        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init.sink.split

if.end98:                                         ; preds = %if.end91
  %call101 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %31, i32 noundef 0, ptr noundef nonnull @.str.34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end98.err_hw_init_crit_edge

if.end98.err_hw_init_crit_edge:                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init

if.end104:                                        ; preds = %if.end98
  %call.i200 = tail call ptr @gpio_to_desc(i32 noundef %31) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i200, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %call.i201 = tail call ptr @gpio_to_desc(i32 noundef %28) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i201, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #6
  %call107 = tail call fastcc i32 @cc2520_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end104.err_hw_init_crit_edge

if.end104.err_hw_init_crit_edge:                  ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init

if.end110:                                        ; preds = %if.end104
  %call.i202 = tail call ptr @gpio_to_desc(i32 noundef %22) #6
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i202) #6
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end110.dev_name.exit_crit_edge

if.end110.dev_name.exit_crit_edge:                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end110.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %36, %if.end.i ], [ %34, %if.end110.dev_name.exit_crit_edge ]
  %call.i203 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %call1.i, ptr noundef nonnull @cc2520_fifop_isr, ptr noundef null, i32 noundef 1, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool117.not = icmp eq i32 %call.i203, 0
  br i1 %tobool117.not, label %if.end123, label %dev_name.exit.err_hw_init.sink.split_crit_edge

dev_name.exit.err_hw_init.sink.split_crit_edge:   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init.sink.split

if.end123:                                        ; preds = %dev_name.exit
  %call.i204 = tail call ptr @gpio_to_desc(i32 noundef %25) #6
  %call1.i205 = tail call i32 @gpiod_to_irq(ptr noundef %call.i204) #6
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i207 = icmp eq ptr %38, null
  br i1 %tobool.not.i207, label %if.end.i208, label %if.end123.dev_name.exit210_crit_edge

if.end123.dev_name.exit210_crit_edge:             ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit210

if.end.i208:                                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi, align 4
  br label %dev_name.exit210

dev_name.exit210:                                 ; preds = %if.end.i208, %if.end123.dev_name.exit210_crit_edge
  %retval.0.i209 = phi ptr [ %40, %if.end.i208 ], [ %38, %if.end123.dev_name.exit210_crit_edge ]
  %call.i211 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %call1.i205, ptr noundef nonnull @cc2520_sfd_isr, ptr noundef null, i32 noundef 2, ptr noundef %retval.0.i209, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool130.not = icmp eq i32 %call.i211, 0
  br i1 %tobool130.not, label %if.end136, label %dev_name.exit210.err_hw_init.sink.split_crit_edge

dev_name.exit210.err_hw_init.sink.split_crit_edge: ; preds = %dev_name.exit210
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init.sink.split

if.end136:                                        ; preds = %dev_name.exit210
  %call137 = tail call fastcc i32 @cc2520_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end136.cleanup_crit_edge, label %if.end136.err_hw_init_crit_edge

if.end136.err_hw_init_crit_edge:                  ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_init

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_hw_init.sink.split:                           ; preds = %dev_name.exit210.err_hw_init.sink.split_crit_edge, %dev_name.exit.err_hw_init.sink.split_crit_edge, %if.end91.err_hw_init.sink.split_crit_edge, %if.end78.err_hw_init.sink.split_crit_edge, %if.end65.err_hw_init.sink.split_crit_edge, %if.end52.err_hw_init.sink.split_crit_edge, %if.end39.err_hw_init.sink.split_crit_edge, %do.body12.err_hw_init.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.12, %do.body12.err_hw_init.sink.split_crit_edge ], [ @.str.16, %if.end39.err_hw_init.sink.split_crit_edge ], [ @.str.20, %if.end52.err_hw_init.sink.split_crit_edge ], [ @.str.24, %if.end65.err_hw_init.sink.split_crit_edge ], [ @.str.28, %if.end78.err_hw_init.sink.split_crit_edge ], [ @.str.32, %if.end91.err_hw_init.sink.split_crit_edge ], [ @.str.36, %dev_name.exit.err_hw_init.sink.split_crit_edge ], [ @.str.39, %dev_name.exit210.err_hw_init.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -22, %do.body12.err_hw_init.sink.split_crit_edge ], [ -22, %if.end39.err_hw_init.sink.split_crit_edge ], [ -22, %if.end52.err_hw_init.sink.split_crit_edge ], [ -22, %if.end65.err_hw_init.sink.split_crit_edge ], [ -22, %if.end78.err_hw_init.sink.split_crit_edge ], [ -22, %if.end91.err_hw_init.sink.split_crit_edge ], [ %call.i203, %dev_name.exit.err_hw_init.sink.split_crit_edge ], [ %call.i211, %dev_name.exit210.err_hw_init.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull %.str.39.sink) #9
  br label %err_hw_init

err_hw_init:                                      ; preds = %err_hw_init.sink.split, %if.end136.err_hw_init_crit_edge, %if.end104.err_hw_init_crit_edge, %if.end98.err_hw_init_crit_edge, %if.end85.err_hw_init_crit_edge, %if.end72.err_hw_init_crit_edge, %if.end59.err_hw_init_crit_edge, %if.end46.err_hw_init_crit_edge, %if.end33.err_hw_init_crit_edge
  %ret.0 = phi i32 [ %call36, %if.end33.err_hw_init_crit_edge ], [ %call49, %if.end46.err_hw_init_crit_edge ], [ %call62, %if.end59.err_hw_init_crit_edge ], [ %call75, %if.end72.err_hw_init_crit_edge ], [ %call88, %if.end85.err_hw_init_crit_edge ], [ %call101, %if.end98.err_hw_init_crit_edge ], [ %call107, %if.end104.err_hw_init_crit_edge ], [ %call137, %if.end136.err_hw_init_crit_edge ], [ %ret.0.ph, %err_hw_init.sink.split ]
  tail call void @mutex_destroy(ptr noundef %buffer_mutex) #6
  %call143 = tail call zeroext i1 @flush_work(ptr noundef %fifop_irqwork) #6
  br label %cleanup

cleanup:                                          ; preds = %err_hw_init, %if.end136.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %err_hw_init ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %if.end136.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pdata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %buffer_mutex = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %buffer_mutex) #6
  %fifop_irqwork = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %fifop_irqwork) #6
  %hw = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %3) #6
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_free_hw(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_get_platform_data(ptr nocapture noundef readonly %spi, ptr nocapture noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.cleanup17_crit_edge, label %if.end

if.then.cleanup17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = call ptr @memcpy(ptr %pdata, ptr %5, i32 24)
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdata, align 4
  %fifo_pin = getelementptr inbounds %struct.cc2520_private, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %fifo_pin to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fifo_pin, align 4
  br label %cleanup17

if.end4:                                          ; preds = %entry
  %call.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %1, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef null) #6
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %pdata, align 4
  %fifo_pin8 = getelementptr inbounds %struct.cc2520_private, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %fifo_pin8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %fifo_pin8, align 4
  %call.i40 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %1, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef null) #6
  %fifop = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 1
  %12 = ptrtoint ptr %fifop to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i40, ptr %fifop, align 4
  %call.i41 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %1, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef null) #6
  %sfd = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 3
  %13 = ptrtoint ptr %sfd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i41, ptr %sfd, align 4
  %call.i42 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %1, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef null) #6
  %cca = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 2
  %14 = ptrtoint ptr %cca to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i42, ptr %cca, align 4
  %call.i43 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %1, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef null) #6
  %vreg = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 5
  %15 = ptrtoint ptr %vreg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i43, ptr %vreg, align 4
  %call.i44 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %1, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef null) #6
  %reset = getelementptr inbounds %struct.cc2520_platform_data, ptr %pdata, i32 0, i32 4
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i44, ptr %reset, align 4
  %call.i45 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.47, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i45, null
  br i1 %tobool.i.not, label %if.end4.cleanup17_crit_edge, label %if.then15

if.end4.cleanup17_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %amplified = getelementptr inbounds %struct.cc2520_private, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %amplified to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %amplified, align 1
  br label %cleanup17

cleanup17:                                        ; preds = %if.then15, %if.end4.cleanup17_crit_edge, %if.end, %if.then.cleanup17_crit_edge
  %retval.1 = phi i32 [ 0, %if.end ], [ -2, %if.then.cleanup17_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end4.cleanup17_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc2520_fifop_irqwork(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_fifop_irqwork.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_fifop_irqwork, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_fifop_irqwork.__UNIQUE_ID_ddebug346, ptr noundef %1, ptr noundef nonnull @.str.49) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fifo_pin = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %fifo_pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_pin, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %do.body8, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cc2520_rx(ptr noundef %add.ptr)
  br label %if.end26

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_fifop_irqwork.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_fifop_irqwork, %if.then20)) #6
          to label %if.end26 [label %if.then20], !srcloc !160

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_fifop_irqwork.__UNIQUE_ID_ddebug347, ptr noundef %5, ptr noundef nonnull @.str.50) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %do.body8, %if.then6
  %call27 = tail call fastcc i32 @cc2520_cmd_strobe(ptr noundef %add.ptr, i8 noundef zeroext 71)
  %call28 = tail call fastcc i32 @cc2520_cmd_strobe(ptr noundef %add.ptr, i8 noundef zeroext 71)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_hw_init(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %status = alloca i8, align 1
  %state = alloca i8, align 1
  %pdata = alloca %struct.cc2520_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #6
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %state, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pdata) #6
  %2 = call ptr @memset(ptr %pdata, i32 255, i32 24)
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call = call fastcc i32 @cc2520_get_platform_data(ptr noundef %4, ptr noundef nonnull %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_ret_crit_edge

entry.err_ret_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @cc2520_read_register(ptr noundef %priv, i8 noundef zeroext 51, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_ret_crit_edge

if.end.err_ret_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %if.end4.do.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %if.end4.do.body_crit_edge
  %timeout.0 = phi i32 [ %dec, %if.end17.do.body_crit_edge ], [ 100, %if.end4.do.body_crit_edge ]
  %call8 = call fastcc i32 @cc2520_get_status(ptr noundef %priv, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body.err_ret_crit_edge

do.body.err_ret_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp12 = icmp eq i32 %timeout.0, 0
  br i1 %cmp12, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.56) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %dec = add nsw i32 %timeout.0, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 1
  %tobool20.not = icmp sgt i8 %11, -1
  br i1 %tobool20.not, label %if.end17.do.body_crit_edge, label %do.end21

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end21:                                         ; preds = %if.end17
  %amplified = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 5
  %12 = ptrtoint ptr %amplified to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %amplified, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %do.end21
  %call24 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 83, i8 noundef zeroext 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then23.err_ret_crit_edge

if.then23.err_ret_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end27:                                         ; preds = %if.then23
  %call28 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 32, i8 noundef zeroext 70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.err_ret_crit_edge

if.end27.err_ret_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end31:                                         ; preds = %if.end27
  %call32 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 37, i8 noundef zeroext 71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.err_ret_crit_edge

if.end31.err_ret_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end35:                                         ; preds = %if.end31
  %call36 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 38, i8 noundef zeroext 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.err_ret_crit_edge

if.end35.err_ret_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end39:                                         ; preds = %if.end35
  %call40 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 49, i8 noundef zeroext -63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.end39.err_ret_crit_edge

if.end39.err_ret_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.else:                                          ; preds = %do.end21
  %call44 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 83, i8 noundef zeroext 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.else.if.end48_crit_edge, label %if.else.err_ret_crit_edge

if.else.err_ret_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %call49 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 54, i8 noundef zeroext 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.err_ret_crit_edge

if.end48.err_ret_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end52:                                         ; preds = %if.end48
  %call53 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 70, i8 noundef zeroext -123)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.err_ret_crit_edge

if.end52.err_ret_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end56:                                         ; preds = %if.end52
  %call57 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 71, i8 noundef zeroext 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.err_ret_crit_edge

if.end56.err_ret_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end60:                                         ; preds = %if.end56
  %call61 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 74, i8 noundef zeroext 63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.err_ret_crit_edge

if.end60.err_ret_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end64:                                         ; preds = %if.end60
  %call65 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 76, i8 noundef zeroext 90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.err_ret_crit_edge

if.end64.err_ret_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end68:                                         ; preds = %if.end64
  %call69 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 79, i8 noundef zeroext 43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err_ret_crit_edge

if.end68.err_ret_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end72:                                         ; preds = %if.end68
  %call73 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 86, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.err_ret_crit_edge

if.end72.err_ret_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end76:                                         ; preds = %if.end72
  %call77 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 87, i8 noundef zeroext 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.err_ret_crit_edge

if.end76.err_ret_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end80:                                         ; preds = %if.end76
  %call81 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 88, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.err_ret_crit_edge

if.end80.err_ret_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end84:                                         ; preds = %if.end80
  %call85 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 13, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.err_ret_crit_edge

if.end84.err_ret_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end88:                                         ; preds = %if.end84
  %call89 = call fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext 52, i8 noundef zeroext 127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end88.cleanup_crit_edge, label %if.end88.err_ret_crit_edge

if.end88.err_ret_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ret

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_ret:                                          ; preds = %if.end88.err_ret_crit_edge, %if.end84.err_ret_crit_edge, %if.end80.err_ret_crit_edge, %if.end76.err_ret_crit_edge, %if.end72.err_ret_crit_edge, %if.end68.err_ret_crit_edge, %if.end64.err_ret_crit_edge, %if.end60.err_ret_crit_edge, %if.end56.err_ret_crit_edge, %if.end52.err_ret_crit_edge, %if.end48.err_ret_crit_edge, %if.else.err_ret_crit_edge, %if.end39.err_ret_crit_edge, %if.end35.err_ret_crit_edge, %if.end31.err_ret_crit_edge, %if.end27.err_ret_crit_edge, %if.then23.err_ret_crit_edge, %do.body.err_ret_crit_edge, %if.end.err_ret_crit_edge, %entry.err_ret_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_ret_crit_edge ], [ %call1, %if.end.err_ret_crit_edge ], [ %call24, %if.then23.err_ret_crit_edge ], [ %call28, %if.end27.err_ret_crit_edge ], [ %call32, %if.end31.err_ret_crit_edge ], [ %call36, %if.end35.err_ret_crit_edge ], [ %call40, %if.end39.err_ret_crit_edge ], [ %call49, %if.end48.err_ret_crit_edge ], [ %call53, %if.end52.err_ret_crit_edge ], [ %call57, %if.end56.err_ret_crit_edge ], [ %call61, %if.end60.err_ret_crit_edge ], [ %call65, %if.end64.err_ret_crit_edge ], [ %call69, %if.end68.err_ret_crit_edge ], [ %call73, %if.end72.err_ret_crit_edge ], [ %call77, %if.end76.err_ret_crit_edge ], [ %call81, %if.end80.err_ret_crit_edge ], [ %call85, %if.end84.err_ret_crit_edge ], [ %call89, %if.end88.err_ret_crit_edge ], [ %call44, %if.else.err_ret_crit_edge ], [ %call8, %do.body.err_ret_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err_ret, %if.end88.cleanup_crit_edge, %do.end, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_ret ], [ 0, %do.end ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pdata) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_fifop_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifop_irqwork = getelementptr inbounds %struct.cc2520_private, ptr %data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %fifop_irqwork) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_sfd_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cc2520_private, ptr %data, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %is_tx = getelementptr inbounds %struct.cc2520_private, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_tx, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_tx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_sfd_isr.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_sfd_isr, %if.then13)) #6
          to label %do.end15 [label %if.then13], !srcloc !160

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_sfd_isr.__UNIQUE_ID_ddebug348, ptr noundef %4, ptr noundef nonnull @.str.61) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then13, %if.then
  %tx_complete = getelementptr inbounds %struct.cc2520_private, ptr %data, i32 0, i32 9
  tail call void @complete(ptr noundef %tx_complete) #6
  br label %if.end35

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_sfd_isr.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_sfd_isr, %if.then29)) #6
          to label %if.end35 [label %if.then29], !srcloc !160

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_sfd_isr.__UNIQUE_ID_ddebug349, ptr noundef %6, ptr noundef nonnull @.str.62) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.else, %do.end15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_register(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ieee802154_alloc_hw(i32 noundef 260, ptr noundef nonnull @cc2520_ops) #6
  %hw = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %hw, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv3 = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %priv3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %priv, ptr %priv3, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %parent, align 4
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %9 = load ptr, ptr %hw, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %perm_extended_addr = getelementptr inbounds %struct.wpan_phy, ptr %11, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr, i32 noundef 8) #6
  %arrayidx.i = getelementptr i8, ptr %perm_extended_addr, i32 7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %14 = and i8 %13, -4
  %15 = or i8 %14, 2
  store i8 %15, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %phy8 = getelementptr inbounds %struct.ieee802154_hw, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %phy8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy8, align 4
  %supported = getelementptr inbounds %struct.wpan_phy, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 134215680, ptr %supported, align 4
  %21 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.ieee802154_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 49, ptr %flags, align 4
  %23 = load ptr, ptr %hw, align 4
  %phy11 = getelementptr inbounds %struct.ieee802154_hw, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %phy11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy11, align 4
  %flags12 = getelementptr inbounds %struct.wpan_phy, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %flags12, align 4
  %amplified = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 5
  %27 = ptrtoint ptr %amplified to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %amplified, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool13.not = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %phy16 = getelementptr inbounds %struct.ieee802154_hw, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %phy16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy16, align 4
  %tx_powers = getelementptr inbounds %struct.wpan_phy, ptr %32, i32 0, i32 4, i32 15
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %tx_powers to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @cc2520_powers, ptr %tx_powers, align 4
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %phy19 = getelementptr inbounds %struct.ieee802154_hw, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %phy19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy19, align 4
  %tx_powers_size = getelementptr inbounds %struct.wpan_phy, ptr %37, i32 0, i32 4, i32 13
  %38 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 9, ptr %tx_powers_size, align 4
  %39 = load ptr, ptr %hw, align 4
  %phy22 = getelementptr inbounds %struct.ieee802154_hw, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %phy22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy22, align 4
  %tx_powers24 = getelementptr inbounds %struct.wpan_phy, ptr %41, i32 0, i32 4, i32 15
  %42 = ptrtoint ptr %tx_powers24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_powers24, align 4
  %arrayidx25 = getelementptr i32, ptr %43, i32 4
  br label %if.end44

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %tx_powers to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @cc2520_cc2591_powers, ptr %tx_powers, align 4
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %phy33 = getelementptr inbounds %struct.ieee802154_hw, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %phy33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy33, align 4
  %tx_powers_size35 = getelementptr inbounds %struct.wpan_phy, ptr %48, i32 0, i32 4, i32 13
  %49 = ptrtoint ptr %tx_powers_size35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 6, ptr %tx_powers_size35, align 4
  %50 = load ptr, ptr %hw, align 4
  %phy37 = getelementptr inbounds %struct.ieee802154_hw, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %phy37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy37, align 4
  %tx_powers39 = getelementptr inbounds %struct.wpan_phy, ptr %52, i32 0, i32 4, i32 15
  %53 = ptrtoint ptr %tx_powers39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_powers39, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then14
  %.sink77 = phi ptr [ %54, %if.else ], [ %arrayidx25, %if.then14 ]
  %.sink76 = phi ptr [ %52, %if.else ], [ %41, %if.then14 ]
  %55 = ptrtoint ptr %.sink77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %.sink77, align 4
  %transmit_power43 = getelementptr inbounds %struct.wpan_phy, ptr %.sink76, i32 0, i32 5
  %57 = ptrtoint ptr %transmit_power43 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %transmit_power43, align 4
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %phy46 = getelementptr inbounds %struct.ieee802154_hw, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %phy46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy46, align 4
  %current_channel = getelementptr inbounds %struct.wpan_phy, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %current_channel to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 11, ptr %current_channel, align 8
  %63 = load ptr, ptr %hw, align 4
  %call48 = tail call i32 @ieee802154_register_hw(ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end44.cleanup_crit_edge, label %err_free_device

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_free_device:                                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_free_hw(ptr noundef %65) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_device, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44.cleanup_crit_edge ], [ %call48, %err_free_device ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc2520_rx(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %len, align 1
  %call = call fastcc i32 @cc2520_read_rxfifo(ptr noundef %priv, ptr noundef nonnull %len, i8 noundef zeroext 1)
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %2)
  %cmp.i = icmp eq i8 %2, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %3 = icmp sgt i8 %2, 8
  %spec.select.i = or i1 %cmp.i, %3
  br i1 %spec.select.i, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_rx.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_rx, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !160

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_rx.__UNIQUE_ID_ddebug341, ptr noundef %5, ptr noundef nonnull @.str.52) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 127, ptr %len, align 1
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry.if.end6_crit_edge
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv = zext i8 %8 to i32
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv, i32 noundef 2592) #6
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup82_crit_edge, label %if.end10

if.end6.cleanup82_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

if.end10:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  %conv11 = zext i8 %10 to i32
  %call12 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv11) #6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len, align 1
  %call13 = call fastcc i32 @cc2520_read_rxfifo(ptr noundef %priv, ptr noundef %call12, i8 noundef zeroext %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end34, label %do.body16

do.body16:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_rx.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_rx, %if.then28)) #6
          to label %do.end33 [label %if.then28], !srcloc !160

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_rx.__UNIQUE_ID_ddebug342, ptr noundef %14, ptr noundef nonnull @.str.53) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body16
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %cleanup82

if.end34:                                         ; preds = %if.end10
  %promiscuous = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 10
  %15 = ptrtoint ptr %promiscuous to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %promiscuous, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool35.not = icmp eq i8 %16, 0
  br i1 %tobool35.not, label %if.then36, label %if.end34.if.end81_crit_edge

if.end34.if.end81_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then36:                                        ; preds = %if.end34
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %len, align 1
  %conv37 = zext i8 %20 to i32
  %sub = add nsw i32 %conv37, -1
  %arrayidx = getelementptr i8, ptr %18, i32 %sub
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool39.not = icmp sgt i8 %22, -1
  br i1 %tobool39.not, label %do.body43, label %cleanup

do.body43:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_rx.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_rx, %if.then55)) #6
          to label %cleanup.thread [label %if.then55], !srcloc !160

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_rx.__UNIQUE_ID_ddebug343, ptr noundef %24, ptr noundef nonnull @.str.54) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then55, %do.body43
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %cleanup82

cleanup:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %and67 = and i8 %22, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %and67)
  %cmp = icmp ult i8 %and67, 50
  %25 = call i8 @llvm.umin.i8(i8 %and67, i8 113)
  %phi.bo = shl i8 %25, 2
  %phi.bo1 = add i8 %phi.bo, 56
  %lqi.0 = select i1 %cmp, i8 0, i8 %phi.bo1
  br label %if.end81

if.end81:                                         ; preds = %cleanup, %if.end34.if.end81_crit_edge
  %lqi.2 = phi i8 [ 0, %if.end34.if.end81_crit_edge ], [ %lqi.0, %cleanup ]
  %hw = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 1
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  call void @ieee802154_rx_irqsafe(ptr noundef %27, ptr noundef nonnull %call.i.i, i8 noundef zeroext %lqi.2) #6
  br label %cleanup82

cleanup82:                                        ; preds = %if.end81, %cleanup.thread, %do.end33, %if.end6.cleanup82_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_cmd_strobe(ptr noundef %priv, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #6
  %0 = getelementptr inbounds i8, ptr %xfer, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %buf = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %rx_buf, align 4
  %6 = getelementptr inbounds i8, ptr %msg, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %buffer_mutex = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #6
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cmd, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %call = call i32 @spi_sync(ptr noundef %22, ptr noundef nonnull %msg) #6
  call void @mutex_unlock(ptr noundef %buffer_mutex) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_read_rxfifo(ptr noundef %priv, ptr noundef %data, i8 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer_head = alloca %struct.spi_transfer, align 4
  %xfer_buf = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_head) #6
  %0 = getelementptr inbounds i8, ptr %xfer_head, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %buf = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %xfer_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %xfer_head, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %rx_buf, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_buf) #6
  %6 = call ptr @memset(ptr %xfer_buf, i32 0, i32 96)
  %rx_buf4 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %rx_buf4, align 4
  %len5 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf, i32 0, i32 2
  %conv = zext i8 %len to i32
  %8 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %len5, align 4
  %9 = getelementptr inbounds i8, ptr %msg, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i20 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf, i32 0, i32 18
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i22 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i20, ptr noundef %20, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i22, label %if.end.i.i.i24, label %spi_message_add_tail.exit.spi_message_add_tail.exit25_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit25_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit25

if.end.i.i.i24:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i20, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg, ptr %transfer_list.i20, align 4
  %prev3.i.i.i23 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i23, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i20, ptr %20, align 4
  br label %spi_message_add_tail.exit25

spi_message_add_tail.exit25:                      ; preds = %if.end.i.i.i24, %spi_message_add_tail.exit.spi_message_add_tail.exit25_crit_edge
  %buffer_mutex = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #6
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %len11 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head, i32 0, i32 2
  %27 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len11, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %len11, align 4
  %arrayidx = getelementptr i8, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 48, ptr %arrayidx, align 1
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %call = call i32 @spi_sync(ptr noundef %31, ptr noundef nonnull %msg) #6
  %status12 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %32 = ptrtoint ptr %status12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  %spec.select = select i1 %tobool.not, i32 %call, i32 %33
  call void @mutex_unlock(ptr noundef %buffer_mutex) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_buf) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_head) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_read_register(ptr noundef %priv, i8 noundef zeroext %reg, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer1 = alloca %struct.spi_transfer, align 4
  %xfer2 = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer1) #6
  %0 = getelementptr inbounds i8, ptr %xfer1, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %buf = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %xfer1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %xfer1, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer1, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %rx_buf, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer2) #6
  %6 = call ptr @memset(ptr %xfer2, i32 0, i32 96)
  %rx_buf3 = getelementptr inbounds %struct.spi_transfer, ptr %xfer2, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %rx_buf3, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer2, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len, align 4
  %9 = getelementptr inbounds i8, ptr %msg, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer1, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer1, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i32 = getelementptr inbounds %struct.spi_transfer, ptr %xfer2, i32 0, i32 18
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i34 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i32, ptr noundef %20, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i34, label %if.end.i.i.i36, label %spi_message_add_tail.exit.spi_message_add_tail.exit37_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit37_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit37

if.end.i.i.i36:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i32, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg, ptr %transfer_list.i32, align 4
  %prev3.i.i.i35 = getelementptr inbounds %struct.spi_transfer, ptr %xfer2, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i35, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i32, ptr %20, align 4
  br label %spi_message_add_tail.exit37

spi_message_add_tail.exit37:                      ; preds = %if.end.i.i.i36, %spi_message_add_tail.exit.spi_message_add_tail.exit37_crit_edge
  %buffer_mutex = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #6
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %xfer1, i32 0, i32 2
  %27 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len9, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %len9, align 4
  %arrayidx = getelementptr i8, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %arrayidx, align 1
  %30 = load ptr, ptr %buf, align 4
  %31 = load i32, ptr %len9, align 4
  %inc12 = add i32 %31, 1
  store i32 %inc12, ptr %len9, align 4
  %arrayidx13 = getelementptr i8, ptr %30, i32 %31
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %reg, ptr %arrayidx13, align 1
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %call = call i32 @spi_sync(ptr noundef %34, ptr noundef nonnull %msg) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_read_register.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_read_register, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %spi_message_add_tail.exit37
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_read_register.__UNIQUE_ID_ddebug340, ptr noundef %36, ptr noundef nonnull @.str.59, i32 noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %spi_message_add_tail.exit37
  %status18 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %37 = ptrtoint ptr %status18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool19.not = icmp eq i32 %38, 0
  %spec.select = select i1 %tobool19.not, i32 %call, i32 %38
  call void @mutex_unlock(ptr noundef %buffer_mutex) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer2) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer1) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_get_status(ptr noundef %priv, ptr nocapture noundef writeonly %status) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #6
  %0 = getelementptr inbounds i8, ptr %xfer, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %buf = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %rx_buf, align 4
  %6 = getelementptr inbounds i8, ptr %msg, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %buffer_mutex = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #6
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %call = call i32 @spi_sync(ptr noundef %22, ptr noundef nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %spi_message_add_tail.exit.if.end_crit_edge

spi_message_add_tail.exit.if.end_crit_edge:       ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %status, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %spi_message_add_tail.exit.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %buffer_mutex) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_write_register(ptr noundef %priv, i8 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #6
  %0 = getelementptr inbounds i8, ptr %xfer, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %buf = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %rx_buf, align 4
  %6 = getelementptr inbounds i8, ptr %msg, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %buffer_mutex = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %reg)
  %cmp = icmp ult i8 %reg, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = or i8 %reg, -64
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %16, ptr %arrayidx, align 1
  %22 = load ptr, ptr %buf, align 4
  %23 = load i32, ptr %len, align 4
  %inc8 = add i32 %23, 1
  store i32 %inc8, ptr %len, align 4
  %arrayidx9 = getelementptr i8, ptr %22, i32 %23
  br label %if.end

if.else:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 4
  %len11 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %26 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len11, align 4
  %inc12 = add i32 %27, 1
  store i32 %inc12, ptr %len11, align 4
  %arrayidx13 = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 32, ptr %arrayidx13, align 1
  %29 = load ptr, ptr %buf, align 4
  %30 = load i32, ptr %len11, align 4
  %inc16 = add i32 %30, 1
  store i32 %inc16, ptr %len11, align 4
  %arrayidx17 = getelementptr i8, ptr %29, i32 %30
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %reg, ptr %arrayidx17, align 1
  %32 = load ptr, ptr %buf, align 4
  %33 = load i32, ptr %len11, align 4
  %inc20 = add i32 %33, 1
  store i32 %inc20, ptr %len11, align 4
  %arrayidx21 = getelementptr i8, ptr %32, i32 %33
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx21.sink = phi ptr [ %arrayidx21, %if.else ], [ %arrayidx9, %if.then ]
  %34 = ptrtoint ptr %arrayidx21.sink to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %value, ptr %arrayidx21.sink, align 1
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  %call = call i32 @spi_sync(ptr noundef %36, ptr noundef nonnull %msg) #6
  %status22 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %37 = ptrtoint ptr %status22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  %spec.select = select i1 %tobool.not, i32 %call, i32 %38
  call void @mutex_unlock(ptr noundef %buffer_mutex) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @cc2520_cmd_strobe(ptr noundef %1, i8 noundef zeroext 66)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc2520_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @cc2520_cmd_strobe(ptr noundef %1, i8 noundef zeroext 69)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_tx(ptr nocapture noundef readonly %hw, ptr noundef %skb) #2 align 64 {
entry:
  %len_byte.i = alloca i32, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %xfer_head.i = alloca %struct.spi_transfer, align 4
  %xfer_len.i = alloca %struct.spi_transfer, align 4
  %xfer_buf.i = alloca %struct.spi_transfer, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %status, align 1
  %promiscuous = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %promiscuous to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %promiscuous, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 0, ptr noundef %6, i32 noundef %8) #6
  %call2 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 2) #6
  %9 = tail call i16 @llvm.bswap.i16(i16 %call) #6
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %call2, align 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len4, align 4
  %conv5 = add i32 %14, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pkt_len.0 = phi i32 [ %12, %if.then ], [ %conv5, %if.else ]
  %call6 = tail call fastcc i32 @cc2520_cmd_strobe(ptr noundef %1, i8 noundef zeroext 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data10, align 4
  %len11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len_byte.i) #6
  %conv.i = and i32 %pkt_len.0, 255
  %19 = ptrtoint ptr %len_byte.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %len_byte.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_head.i) #6
  %20 = getelementptr inbounds i8, ptr %xfer_head.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 88)
  %buf.i = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf.i, align 4
  %24 = ptrtoint ptr %xfer_head.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %xfer_head.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 1
  %25 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %rx_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_len.i) #6
  %26 = getelementptr inbounds i8, ptr %xfer_len.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 92)
  %28 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %len_byte.i, ptr %xfer_len.i, align 4
  %len5.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_len.i, i32 0, i32 2
  %29 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %len5.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_buf.i) #6
  %30 = getelementptr inbounds i8, ptr %xfer_buf.i, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 92)
  %32 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %16, ptr %xfer_buf.i, align 4
  %len12.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 2
  %conv13.i = and i32 %18, 255
  %33 = ptrtoint ptr %len12.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv13.i, ptr %len12.i, align 4
  %34 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 40)
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %38 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end9.spi_message_add_tail.exit.i_crit_edge

if.end9.spi_message_add_tail.exit.i_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %41 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %43 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end9.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i28.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_len.i, i32 0, i32 18
  %44 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i30.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i28.i, ptr noundef %45, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i30.i, label %if.end.i.i.i32.i, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit33.i_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit33.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit33.i

if.end.i.i.i32.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i28.i, ptr %prev.i.i.i.i, align 4
  %47 = ptrtoint ptr %transfer_list.i28.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i, ptr %transfer_list.i28.i, align 4
  %prev3.i.i.i31.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_len.i, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i31.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i28.i, ptr %45, align 4
  br label %spi_message_add_tail.exit33.i

spi_message_add_tail.exit33.i:                    ; preds = %if.end.i.i.i32.i, %spi_message_add_tail.exit.i.spi_message_add_tail.exit33.i_crit_edge
  %transfer_list.i34.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 18
  %50 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i36.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i34.i, ptr noundef %51, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i36.i, label %if.end.i.i.i38.i, label %spi_message_add_tail.exit33.i.cc2520_write_txfifo.exit_crit_edge

spi_message_add_tail.exit33.i.cc2520_write_txfifo.exit_crit_edge: ; preds = %spi_message_add_tail.exit33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc2520_write_txfifo.exit

if.end.i.i.i38.i:                                 ; preds = %spi_message_add_tail.exit33.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %transfer_list.i34.i, ptr %prev.i.i.i.i, align 4
  %53 = ptrtoint ptr %transfer_list.i34.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i, ptr %transfer_list.i34.i, align 4
  %prev3.i.i.i37.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 18, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i37.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %transfer_list.i34.i, ptr %51, align 4
  br label %cc2520_write_txfifo.exit

cc2520_write_txfifo.exit:                         ; preds = %if.end.i.i.i38.i, %spi_message_add_tail.exit33.i.cc2520_write_txfifo.exit_crit_edge
  %buffer_mutex.i = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %buffer_mutex.i, i32 noundef 0) #6
  %56 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf.i, align 4
  %58 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %20, align 4
  %inc.i = add i32 %59, 1
  store i32 %inc.i, ptr %20, align 4
  %arrayidx.i = getelementptr i8, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 58, ptr %arrayidx.i, align 1
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i = call i32 @spi_sync(ptr noundef %62, ptr noundef nonnull %msg.i) #6
  %status20.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 7
  %63 = ptrtoint ptr %status20.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %status20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %call.i, i32 %64
  call void @mutex_unlock(ptr noundef %buffer_mutex.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_len.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_head.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len_byte.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool14.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool14.not, label %if.end16, label %cc2520_write_txfifo.exit.cleanup_crit_edge

cc2520_write_txfifo.exit.cleanup_crit_edge:       ; preds = %cc2520_write_txfifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %cc2520_write_txfifo.exit
  %call17 = call fastcc i32 @cc2520_get_status(ptr noundef %1, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %65 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %status, align 1
  %67 = and i8 %66, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool22.not = icmp eq i8 %67, 0
  br i1 %tobool22.not, label %do.body26, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.63) #9
  br label %cleanup

do.body26:                                        ; preds = %if.end20
  %lock = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 8
  %call29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %is_tx = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 4
  %70 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_tx, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool34.not = icmp eq i8 %71, 0
  br i1 %tobool34.not, label %do.body26.if.end52_crit_edge, label %do.end46, !prof !162

do.body26.if.end52_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end46:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 512, i32 noundef 9, ptr noundef null) #6
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %do.body26.if.end52_crit_edge
  %72 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %is_tx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29) #6
  %call62 = call fastcc i32 @cc2520_cmd_strobe(ptr noundef %1, i8 noundef zeroext 68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end52.do.body74_crit_edge

if.end52.do.body74_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body74

if.end65:                                         ; preds = %if.end52
  %tx_complete = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 9
  %call66 = call i32 @wait_for_completion_interruptible(ptr noundef %tx_complete) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.do.body74_crit_edge, label %if.end70

if.end65.do.body74_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body74

if.end70:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = call fastcc i32 @cc2520_cmd_strobe(ptr noundef %1, i8 noundef zeroext 72)
  %call72 = call fastcc i32 @cc2520_cmd_strobe(ptr noundef %1, i8 noundef zeroext 66)
  br label %cleanup

do.body74:                                        ; preds = %if.end65.do.body74_crit_edge, %if.end52.do.body74_crit_edge
  %rc.0 = phi i32 [ %call62, %if.end52.do.body74_crit_edge ], [ %call66, %if.end65.do.body74_crit_edge ]
  %call82 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %73 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %is_tx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call82) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body74, %if.end70, %do.end, %if.end16.cleanup_crit_edge, %cc2520_write_txfifo.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call66, %if.end70 ], [ %call6, %if.end.cleanup_crit_edge ], [ %spec.select.i, %cc2520_write_txfifo.exit.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ 0, %do.end ], [ %rc.0, %do.body74 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_ed(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %level) #2 align 64 {
entry:
  %status = alloca i8, align 1
  %rssi = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi) #6
  %3 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %rssi, align 1, !annotation !163
  %call = call fastcc i32 @cc2520_read_register(ptr noundef %1, i8 noundef zeroext 57, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @cc2520_read_register(ptr noundef %1, i8 noundef zeroext 56, ptr noundef nonnull %rssi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rssi, align 1
  %sub = add i8 %7, -78
  %8 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %sub, ptr %level, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_set_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_set_channel.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_set_channel, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_set_channel.__UNIQUE_ID_ddebug344, ptr noundef %3, ptr noundef nonnull @.str.66) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %page)
  %cmp.not = icmp eq i8 %page, 0
  br i1 %cmp.not, label %do.end.if.end26_crit_edge, label %do.end20, !prof !162

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 638, i32 noundef 9, ptr noundef null) #6
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %do.end.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %channel)
  %cmp36 = icmp ult i8 %channel, 11
  br i1 %cmp36, label %if.end26.if.end92.sink.split_crit_edge, label %if.end59, !prof !164

if.end26.if.end92.sink.split_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.sink.split

if.end59:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %channel)
  %cmp69 = icmp ugt i8 %channel, 26
  br i1 %cmp69, label %if.end59.if.end92.sink.split_crit_edge, label %if.end59.if.end92_crit_edge, !prof !164

if.end59.if.end92_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.end59.if.end92.sink.split_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.sink.split

if.end92.sink.split:                              ; preds = %if.end59.if.end92.sink.split_crit_edge, %if.end26.if.end92.sink.split_crit_edge
  %.sink = phi i32 [ 639, %if.end26.if.end92.sink.split_crit_edge ], [ 640, %if.end59.if.end92.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #6
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %if.end59.if.end92_crit_edge
  %4 = mul i8 %channel, 5
  %add = add i8 %4, -44
  %call102 = tail call fastcc i32 @cc2520_write_register(ptr noundef %1, i8 noundef zeroext 46, i8 noundef zeroext %add)
  ret i32 %call102
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_filter(ptr nocapture noundef readonly %hw, ptr noundef %filt, i32 noundef %changed) #2 align 64 {
entry:
  %panid = alloca i16, align 2
  %addr = alloca i16, align 2
  %frmfilt0 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %and = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %panid) #6
  %2 = ptrtoint ptr %filt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %filt, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %panid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %panid, align 2
  %call = call fastcc i32 @cc2520_write_ram(ptr noundef %1, i16 noundef zeroext 1010, i8 noundef zeroext 2, ptr noundef nonnull %panid)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %panid) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and2 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ieee_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 2
  %call5 = call fastcc i32 @cc2520_write_ram(ptr noundef %1, i16 noundef zeroext 1002, i8 noundef zeroext 8, ptr noundef %ieee_addr)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %ret.1 = phi i32 [ %call5, %if.then4 ], [ %ret.0, %if.end.if.end6_crit_edge ]
  %and7 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #6
  %short_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 1
  %6 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %short_addr, align 2
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %addr, align 2
  %call10 = call fastcc i32 @cc2520_write_ram(ptr noundef %1, i16 noundef zeroext 1012, i8 noundef zeroext 2, ptr noundef nonnull %addr)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %ret.2 = phi i32 [ %call10, %if.then9 ], [ %ret.1, %if.end6.if.end11_crit_edge ]
  %and12 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end24_crit_edge, label %if.then14

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frmfilt0) #6
  %10 = ptrtoint ptr %frmfilt0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %frmfilt0, align 1, !annotation !163
  %call15 = call fastcc i32 @cc2520_read_register(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %frmfilt0)
  %pan_coord = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 3
  %11 = ptrtoint ptr %pan_coord to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pan_coord, align 8, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %frmfilt0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %frmfilt0, align 1
  %15 = and i8 %14, -3
  %masksel = select i1 %tobool16.not, i8 0, i8 2
  %storemerge = or i8 %15, %masksel
  store i8 %storemerge, ptr %frmfilt0, align 1
  %call23 = call fastcc i32 @cc2520_write_register(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %storemerge)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frmfilt0) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.end11.if.end24_crit_edge
  %ret.3 = phi i32 [ %call23, %if.then14 ], [ %ret.2, %if.end11.if.end24_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_set_txpower(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %amplified = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %amplified to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %amplified, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = zext i32 %mbm to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mbm, label %if.then.cleanup_crit_edge [
    i32 500, label %if.then.cleanup.sink.split_crit_edge
    i32 300, label %sw.bb1.i
    i32 200, label %sw.bb2.i
    i32 100, label %sw.bb3.i
    i32 0, label %sw.bb4.i
    i32 -200, label %sw.bb5.i
    i32 -400, label %sw.bb6.i
    i32 -700, label %sw.bb7.i
    i32 -1800, label %sw.bb8.i
  ]

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb7.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb8.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %5 = zext i32 %mbm to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %mbm, label %if.end.cleanup_crit_edge [
    i32 1700, label %if.end.cleanup.sink.split_crit_edge
    i32 1600, label %sw.bb1.i6
    i32 1400, label %sw.bb2.i7
    i32 1100, label %sw.bb3.i8
    i32 -100, label %sw.bb4.i9
    i32 -800, label %sw.bb5.i10
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i6:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb2.i7:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb3.i8:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb4.i9:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb5.i10:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5.i10, %sw.bb4.i9, %sw.bb3.i8, %sw.bb2.i7, %sw.bb1.i6, %if.end.cleanup.sink.split_crit_edge, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.cleanup.sink.split_crit_edge
  %power.0.i11.sink = phi i8 [ 3, %sw.bb8.i ], [ 44, %sw.bb7.i ], [ -120, %sw.bb6.i ], [ -127, %sw.bb5.i ], [ 50, %sw.bb4.i ], [ 19, %sw.bb3.i ], [ -85, %sw.bb2.i ], [ -14, %sw.bb1.i ], [ -9, %if.then.cleanup.sink.split_crit_edge ], [ 1, %sw.bb5.i10 ], [ 3, %sw.bb4.i9 ], [ 44, %sw.bb3.i8 ], [ -96, %sw.bb2.i7 ], [ -16, %sw.bb1.i6 ], [ -7, %if.end.cleanup.sink.split_crit_edge ]
  %call.i12 = tail call fastcc i32 @cc2520_write_register(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext %power.0.i11.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc2520_set_promiscuous_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
entry:
  %frmfilt0 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frmfilt0) #6
  %2 = ptrtoint ptr %frmfilt0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frmfilt0, align 1, !annotation !163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_set_promiscuous_mode.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_set_promiscuous_mode, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %conv = zext i1 %on to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_set_promiscuous_mode.__UNIQUE_ID_ddebug345, ptr noundef %4, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %promiscuous = getelementptr inbounds %struct.cc2520_private, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %promiscuous to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %promiscuous, align 4
  %call8 = call fastcc i32 @cc2520_read_register(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %frmfilt0)
  br i1 %on, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call fastcc i32 @cc2520_write_register(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext 0)
  %6 = ptrtoint ptr %frmfilt0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %frmfilt0, align 1
  %8 = and i8 %7, -2
  br label %if.end17

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call fastcc i32 @cc2520_write_register(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext 96)
  %9 = ptrtoint ptr %frmfilt0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %frmfilt0, align 1
  %11 = or i8 %10, 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  %storemerge = phi i8 [ %11, %if.else ], [ %8, %if.then10 ]
  %12 = ptrtoint ptr %frmfilt0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %storemerge, ptr %frmfilt0, align 1
  %call18 = call fastcc i32 @cc2520_write_register(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %storemerge)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frmfilt0) #6
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc2520_write_ram(ptr noundef %priv, i16 noundef zeroext %reg, i8 noundef zeroext %len, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer_head = alloca %struct.spi_transfer, align 4
  %xfer_buf = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_head) #6
  %0 = getelementptr inbounds i8, ptr %xfer_head, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %buf = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %xfer_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %xfer_head, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %rx_buf, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_buf) #6
  %6 = getelementptr inbounds i8, ptr %xfer_buf, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %xfer_buf, align 4
  %len5 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf, i32 0, i32 2
  %conv = zext i8 %len to i32
  %9 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %len5, align 4
  %buffer_mutex = getelementptr inbounds %struct.cc2520_private, ptr %priv, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #6
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %len13 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head, i32 0, i32 2
  %12 = ptrtoint ptr %len13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %len13, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 35, ptr %11, align 1
  %conv16 = trunc i16 %reg to i8
  %14 = load ptr, ptr %buf, align 4
  %15 = load i32, ptr %len13, align 4
  %inc19 = add i32 %15, 1
  store i32 %inc19, ptr %len13, align 4
  %arrayidx20 = getelementptr i8, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv16, ptr %arrayidx20, align 1
  %17 = getelementptr inbounds i8, ptr %msg, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i40 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf, i32 0, i32 18
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i42 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i40, ptr noundef %28, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i42, label %if.end.i.i.i44, label %spi_message_add_tail.exit.spi_message_add_tail.exit45_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit45_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit45

if.end.i.i.i44:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i40, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg, ptr %transfer_list.i40, align 4
  %prev3.i.i.i43 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i43, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i40, ptr %28, align 4
  br label %spi_message_add_tail.exit45

spi_message_add_tail.exit45:                      ; preds = %if.end.i.i.i44, %spi_message_add_tail.exit.spi_message_add_tail.exit45_crit_edge
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %call = call i32 @spi_sync(ptr noundef %34, ptr noundef nonnull %msg) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc2520_write_ram.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc2520_write_ram, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %spi_message_add_tail.exit45
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc2520_write_ram.__UNIQUE_ID_ddebug339, ptr noundef %36, ptr noundef nonnull @.str.59, i32 noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %spi_message_add_tail.exit45
  %status25 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %37 = ptrtoint ptr %status25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool26.not = icmp eq i32 %38, 0
  %spec.select = select i1 %tobool26.not, i32 %call, i32 %38
  call void @mutex_unlock(ptr noundef %buffer_mutex) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_buf) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_head) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__initcall__kmod_cc2520__350_1251_cc2520_driver_init6, !1, !"__initcall__kmod_cc2520__350_1251_cc2520_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1251, i32 1}
!2 = !{ptr @__exitcall_cc2520_driver_exit, !1, !"__exitcall_cc2520_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author351, !4, !"__UNIQUE_ID_author351", i1 false, i1 false}
!4 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1253, i32 1}
!5 = !{ptr @__UNIQUE_ID_description352, !6, !"__UNIQUE_ID_description352", i1 false, i1 false}
!6 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1254, i32 1}
!7 = !{ptr @__UNIQUE_ID_file353, !8, !"__UNIQUE_ID_file353", i1 false, i1 false}
!8 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1255, i32 1}
!9 = !{ptr @__UNIQUE_ID_license354, !8, !"__UNIQUE_ID_license354", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1244, i32 11}
!12 = !{ptr @cc2520_driver, !13, !"cc2520_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1242, i32 26}
!14 = !{ptr @cc2520_ids, !15, !"cc2520_ids", i1 false, i1 false}
!15 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1229, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1084, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cc2520_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cc2520_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cc2520_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1095, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cc2520_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1096, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cc2520_probe.__key.9, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1097, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1105, i32 3}
!35 = !{ptr @cc2520_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cc2520_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1111, i32 19}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1116, i32 3}
!41 = !{ptr @cc2520_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cc2520_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1122, i32 19}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1127, i32 3}
!47 = !{ptr @cc2520_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cc2520_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1133, i32 19}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1138, i32 3}
!53 = !{ptr @cc2520_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cc2520_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1144, i32 19}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1149, i32 3}
!59 = !{ptr @cc2520_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cc2520_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1155, i32 29}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1160, i32 3}
!65 = !{ptr @cc2520_probe._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cc2520_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1166, i32 29}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1188, i32 3}
!71 = !{ptr @cc2520_probe._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cc2520_probe._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1200, i32 3}
!75 = !{ptr @cc2520_probe._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cc2520_probe._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ieee802154/cc2520.c", i32 930, i32 38}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ieee802154/cc2520.c", i32 933, i32 39}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ieee802154/cc2520.c", i32 935, i32 37}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ieee802154/cc2520.c", i32 936, i32 37}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ieee802154/cc2520.c", i32 937, i32 38}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ieee802154/cc2520.c", i32 938, i32 39}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ieee802154/cc2520.c", i32 941, i32 32}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ieee802154/cc2520.c", i32 875, i32 2}
!93 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cc2520_fifop_irqwork.__UNIQUE_ID_ddebug346, !92, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ieee802154/cc2520.c", i32 880, i32 3}
!97 = !{ptr @cc2520_fifop_irqwork.__UNIQUE_ID_ddebug347, !96, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ieee802154/cc2520.c", i32 548, i32 3}
!100 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cc2520_rx.__UNIQUE_ID_ddebug341, !99, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ieee802154/cc2520.c", i32 557, i32 3}
!104 = !{ptr @cc2520_rx.__UNIQUE_ID_ddebug342, !103, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ieee802154/cc2520.c", i32 578, i32 4}
!107 = !{ptr @cc2520_rx.__UNIQUE_ID_ddebug343, !106, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!108 = !{ptr @init_completion.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../include/linux/completion.h", i32 87, i32 2}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ieee802154/cc2520.c", i32 971, i32 4}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cc2520_hw_init._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @cc2520_hw_init._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ieee802154/cc2520.c", i32 366, i32 2}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @cc2520_read_register.__UNIQUE_ID_ddebug340, !117, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ieee802154/cc2520.c", i32 904, i32 3}
!122 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @cc2520_sfd_isr.__UNIQUE_ID_ddebug348, !121, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ieee802154/cc2520.c", i32 908, i32 3}
!126 = !{ptr @cc2520_sfd_isr.__UNIQUE_ID_ddebug349, !125, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!127 = !{ptr @cc2520_ops, !128, !"cc2520_ops", i1 false, i1 false}
!128 = !{!"../drivers/net/ieee802154/cc2520.c", i32 813, i32 36}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ieee802154/cc2520.c", i32 507, i32 3}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cc2520_tx._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @cc2520_tx._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ieee802154/cc2520.c", i32 636, i32 2}
!136 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cc2520_set_channel.__UNIQUE_ID_ddebug344, !135, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ieee802154/cc2520.c", i32 333, i32 2}
!140 = !{ptr @cc2520_write_ram.__UNIQUE_ID_ddebug339, !139, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ieee802154/cc2520.c", i32 795, i32 2}
!143 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @cc2520_set_promiscuous_mode.__UNIQUE_ID_ddebug345, !142, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!145 = !{ptr @cc2520_powers, !146, !"cc2520_powers", i1 false, i1 false}
!146 = !{!"../drivers/net/ieee802154/cc2520.c", i32 769, i32 18}
!147 = !{ptr @cc2520_cc2591_powers, !148, !"cc2520_cc2591_powers", i1 false, i1 false}
!148 = !{!"../drivers/net/ieee802154/cc2520.c", i32 774, i32 18}
!149 = !{ptr @cc2520_of_ids, !150, !"cc2520_of_ids", i1 false, i1 false}
!150 = !{!"../drivers/net/ieee802154/cc2520.c", i32 1235, i32 34}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2148719808, i64 2148719813, i64 2148719826, i64 2148719870, i64 2148719904, i64 2148719925}
!161 = !{i8 0, i8 2}
!162 = !{!"branch_weights", i32 2000, i32 1}
!163 = !{!"auto-init"}
!164 = !{!"branch_weights", i32 1, i32 2000}
