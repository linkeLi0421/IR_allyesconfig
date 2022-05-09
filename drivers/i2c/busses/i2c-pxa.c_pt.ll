; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-pxa.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-pxa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pxa_reg_layout = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bits = type { i32, ptr, ptr }
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
%struct.pxa_i2c = type { %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i32, %struct.i2c_adapter, ptr, ptr, i32, [32 x i32], [32 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i32, i8, i32, i32, %struct.i2c_bus_recovery_info }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_pxa_platform_data = type { i32, i8, i8, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@i2c_pxa_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_pxa_probe, ptr @i2c_pxa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_pxa_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_pxa_dev_pm_ops, ptr null, ptr null }, ptr @i2c_pxa_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file309 = internal constant [40 x i8] c"i2c_pxa.file=drivers/i2c/busses/i2c-pxa\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [20 x i8] c"i2c_pxa.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_i2c_pxa__311_1551_i2c_adap_pxa_init4 = internal global ptr @i2c_adap_pxa_init, section ".initcall4.init", align 4
@__exitcall_i2c_adap_pxa_exit = internal global ptr @i2c_adap_pxa_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa2xx-i2c\00", [21 x i8] zeroinitializer }, align 32
@i2c_pxa_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pwri2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp-twsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@i2c_pxa_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_pxa_suspend_noirq, ptr @i2c_pxa_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i2c_pxa_id_table = internal constant { [6 x %struct.platform_device_id], [48 x i8] } { [6 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa2xx-i2c\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"pxa3xx-pwri2c\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"ce4100-i2c\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"pxa910-i2c\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.platform_device_id { [20 x i8] c"armada-3700-i2c\00\00\00\00\00", i32 4 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@i2c_pxa_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@i2c_pxa_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->wait\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxa_i2c-i2c\00", [20 x i8] zeroinitializer }, align 32
@i2c_pxa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1410, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get the clk: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_pxa_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/busses/i2c-pxa.c\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_pxa_probe._entry_ptr = internal global ptr @i2c_pxa_probe._entry, section ".printk_index", align 4
@pxa_reg_layout = internal constant { [5 x %struct.pxa_reg_layout], [44 x i8] } { [5 x %struct.pxa_reg_layout] [%struct.pxa_reg_layout { i32 0, i32 8, i32 16, i32 24, i32 32, i32 0, i32 0, i32 32768, i32 65536 }, %struct.pxa_reg_layout { i32 0, i32 4, i32 8, i32 12, i32 16, i32 0, i32 0, i32 32768, i32 65536 }, %struct.pxa_reg_layout { i32 20, i32 12, i32 0, i32 4, i32 0, i32 0, i32 0, i32 32768, i32 65536 }, %struct.pxa_reg_layout { i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 32768, i32 65536 }, %struct.pxa_reg_layout { i32 0, i32 4, i32 8, i32 12, i32 16, i32 0, i32 0, i32 65536, i32 131072 }], [44 x i8] zeroinitializer }, align 32
@i2c_pxa_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016i2c: <%s> set rate to %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_pxa_probe._entry_ptr.12 = internal global ptr @i2c_pxa_probe._entry.10, section ".printk_index", align 4
@i2c_pxa_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014i2c: <%s> clock rate not set\0A\00", [32 x i8] zeroinitializer }, align 32
@i2c_pxa_probe._entry_ptr.15 = internal global ptr @i2c_pxa_probe._entry.13, section ".printk_index", align 4
@i2c_pxa_pio_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_pxa_pio_xfer, ptr null, ptr null, ptr null, ptr @i2c_pxa_functionality, ptr @i2c_pxa_slave_reg, ptr @i2c_pxa_slave_unreg }, [36 x i8] zeroinitializer }, align 32
@i2c_pxa_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_pxa_xfer, ptr null, ptr null, ptr null, ptr @i2c_pxa_functionality, ptr @i2c_pxa_slave_reg, ptr @i2c_pxa_slave_unreg }, [36 x i8] zeroinitializer }, align 32
@i2c_pxa_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 1461, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_pxa_probe._entry_ptr.18 = internal global ptr @i2c_pxa_probe._entry.16, section ".printk_index", align 4
@i2c_pxa_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 1476, ptr @.str.21, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" PXA I2C adapter, slave address %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_pxa_probe._entry_ptr.22 = internal global ptr @i2c_pxa_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mrvl,i2c-polling\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mrvl,i2c-fast-mode\00", [45 x i8] zeroinitializer }, align 32
@i2c_pxa_internal_xfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.7, ptr @.str.27, i8 1, i8 25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_pxa\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c_pxa_internal_xfer\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Retrying transmission\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exhausted retries\00", [46 x i8] zeroinitializer }, align 32
@i2c_pxa_scream_blue_murder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 364, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"slave_0x%x error: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c_pxa_scream_blue_murder\00", [37 x i8] zeroinitializer }, align 32
@i2c_pxa_scream_blue_murder._entry_ptr = internal global ptr @i2c_pxa_scream_blue_murder._entry, section ".printk_index", align 4
@i2c_pxa_scream_blue_murder._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.7, i32 366, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"msg_num: %d msg_idx: %d msg_ptr: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@i2c_pxa_scream_blue_murder._entry_ptr.33 = internal global ptr @i2c_pxa_scream_blue_murder._entry.31, section ".printk_index", align 4
@i2c_pxa_scream_blue_murder._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.7, i32 369, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IBMR: %08x IDBR: %08x ICR: %08x ISR: %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@i2c_pxa_scream_blue_murder._entry_ptr.36 = internal global ptr @i2c_pxa_scream_blue_murder._entry.34, section ".printk_index", align 4
@i2c_pxa_scream_blue_murder._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.7, i32 370, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"log:\00", [27 x i8] zeroinitializer }, align 32
@i2c_pxa_scream_blue_murder._entry_ptr.39 = internal global ptr @i2c_pxa_scream_blue_murder._entry.37, section ".printk_index", align 4
@i2c_pxa_scream_blue_murder._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.7, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c [%03x:%05x]\00", [17 x i8] zeroinitializer }, align 32
@i2c_pxa_scream_blue_murder._entry_ptr.42 = internal global ptr @i2c_pxa_scream_blue_murder._entry.40, section ".printk_index", align 4
@i2c_pxa_scream_blue_murder._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.7, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@i2c_pxa_scream_blue_murder._entry_ptr.45 = internal global ptr @i2c_pxa_scream_blue_murder._entry.43, section ".printk_index", align 4
@__func__.i2c_pxa_set_slave = private unnamed_addr constant [18 x i8] c"i2c_pxa_set_slave\00", align 1
@i2c_pxa_set_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.i2c_pxa_set_slave, ptr @.str.7, i32 549, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: wait timedout\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_pxa_set_slave._entry_ptr = internal global ptr @i2c_pxa_set_slave._entry, section ".printk_index", align 4
@i2c_pxa_set_slave.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @__func__.i2c_pxa_set_slave, ptr @.str.7, ptr @.str.47, i8 0, i8 -117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ICR now %08x, ISR %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@i2c_pxa_show_state.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.48, ptr @.str.7, ptr @.str.49, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_pxa_show_state\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"state:%s:%d: ISR=%08x, ICR=%08x, IBMR=%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.i2c_pxa_wait_slave = private unnamed_addr constant [19 x i8] c"i2c_pxa_wait_slave\00", align 1
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: done\0A\00", [22 x i8] zeroinitializer }, align 32
@i2c_pxa_wait_slave.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @__func__.i2c_pxa_wait_slave, ptr @.str.7, ptr @.str.52, i8 0, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: did not free\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017ICR\00", [26 x i8] zeroinitializer }, align 32
@icr_bits = internal constant { [15 x %struct.bits], [44 x i8] } { [15 x %struct.bits] [%struct.bits { i32 1, ptr @.str.61, ptr null }, %struct.bits { i32 2, ptr @.str.62, ptr null }, %struct.bits { i32 4, ptr @.str.63, ptr null }, %struct.bits { i32 8, ptr @.str.64, ptr null }, %struct.bits { i32 16, ptr @.str.65, ptr null }, %struct.bits { i32 32, ptr @.str.66, ptr @.str.67 }, %struct.bits { i32 64, ptr @.str.68, ptr @.str.69 }, %struct.bits { i32 128, ptr @.str.70, ptr null }, %struct.bits { i32 256, ptr @.str.71, ptr null }, %struct.bits { i32 512, ptr @.str.72, ptr null }, %struct.bits { i32 1024, ptr @.str.73, ptr null }, %struct.bits { i32 2048, ptr @.str.74, ptr null }, %struct.bits { i32 4096, ptr @.str.75, ptr null }, %struct.bits { i32 8192, ptr @.str.76, ptr null }, %struct.bits { i32 16384, ptr @.str.77, ptr @.str.78 }], [44 x i8] zeroinitializer }, align 32
@decode_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.7, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %08x:\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decode_bits\00", [20 x i8] zeroinitializer }, align 32
@decode_bits._entry_ptr = internal global ptr @decode_bits._entry, section ".printk_index", align 4
@decode_bits._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.7, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@decode_bits._entry_ptr.58 = internal global ptr @decode_bits._entry.56, section ".printk_index", align 4
@decode_bits._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.55, ptr @.str.7, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@decode_bits._entry_ptr.60 = internal global ptr @decode_bits._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"START\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"STOP\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACKNAK\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TB\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MA\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCLE\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scle\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IUE\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iue\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GCD\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ITEIE\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IRFIE\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BEIE\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SSDIE\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALDIE\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SADIE\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UR\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ur\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"timeout (do_pio_xfer)\00", [42 x i8] zeroinitializer }, align 32
@__func__.i2c_pxa_pio_set_master = private unnamed_addr constant [23 x i8] c"i2c_pxa_pio_set_master\00", align 1
@i2c_pxa_pio_set_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.i2c_pxa_pio_set_master, ptr @.str.7, i32 1176, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"i2c_pxa: timeout waiting for bus free (set_master)\0A\00", [44 x i8] zeroinitializer }, align 32
@i2c_pxa_pio_set_master._entry_ptr = internal global ptr @i2c_pxa_pio_set_master._entry, section ".printk_index", align 4
@i2c_pxa_do_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.7, i32 1057, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i2c_pxa: timeout waiting for bus free\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_pxa_do_xfer\00", [16 x i8] zeroinitializer }, align 32
@i2c_pxa_do_xfer._entry_ptr = internal global ptr @i2c_pxa_do_xfer._entry, section ".printk_index", align 4
@i2c_pxa_do_xfer._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.7, i32 1067, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c_pxa_set_master: error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_pxa_do_xfer._entry_ptr.85 = internal global ptr @i2c_pxa_do_xfer._entry.83, section ".printk_index", align 4
@i2c_pxa_do_xfer._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.7, i32 1074, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c_pxa_send_mastercode timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@i2c_pxa_do_xfer._entry_ptr.88 = internal global ptr @i2c_pxa_do_xfer._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout with active message\00", [36 x i8] zeroinitializer }, align 32
@__func__.i2c_pxa_wait_bus_not_busy = private unnamed_addr constant [26 x i8] c"i2c_pxa_wait_bus_not_busy\00", align 1
@i2c_pxa_set_master.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.90, ptr @.str.7, ptr @.str.91, i8 0, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_pxa_set_master\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"setting to bus master\0A\00", [41 x i8] zeroinitializer }, align 32
@i2c_pxa_set_master.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.90, ptr @.str.7, ptr @.str.92, i8 0, i8 121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: unit is busy\0A\00", [46 x i8] zeroinitializer }, align 32
@i2c_pxa_set_master.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.90, ptr @.str.7, ptr @.str.93, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: error: unit busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_pxa_wait_master\00", [44 x i8] zeroinitializer }, align 32
@i2c_pxa_wait_master.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.94, ptr @.str.7, ptr @.str.95, i8 0, i8 114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Slave detected\0A\00", [44 x i8] zeroinitializer }, align 32
@i2c_pxa_wait_master.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.94, ptr @.str.7, ptr @.str.51, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@i2c_pxa_wait_master.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.94, ptr @.str.7, ptr @.str.52, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_pxa_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spurious irq\00", [19 x i8] zeroinitializer }, align 32
@i2c_pxa_slave_start.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.115, ptr @.str.7, ptr @.str.116, i8 0, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_pxa_slave_start\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SAD, mode is slave-%cx\0A\00", [40 x i8] zeroinitializer }, align 32
@i2c_pxa_slave_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.7, i32 675, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout waiting for SCL high\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_pxa_slave_start._entry_ptr = internal global ptr @i2c_pxa_slave_start._entry, section ".printk_index", align 4
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALD set\00", [24 x i8] zeroinitializer }, align 32
@__func__.i2c_pxa_irq_txempty = private unnamed_addr constant [20 x i8] c"i2c_pxa_irq_txempty\00", align 1
@i2c_pxa_reset.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.122, ptr @.str.7, ptr @.str.123, i8 0, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_pxa_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resetting I2C Controller Unit\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_pxa_abort.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.124, ptr @.str.7, ptr @.str.125, i8 0, i8 99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_pxa_abort\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: called in slave mode\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_pxa_do_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.7, i32 581, ptr @.str.21, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling slave mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_pxa_do_reset\00", [47 x i8] zeroinitializer }, align 32
@i2c_pxa_do_reset._entry_ptr = internal global ptr @i2c_pxa_do_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294965296, i64 4294967290]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 4294965296, i64 4294967290]
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"i2c_pxa_driver\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1528, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1532, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"i2c_pxa_dt_ids\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 205, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"i2c_pxa_dev_pm_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1518, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"i2c_pxa_id_table\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 214, i32 40 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1403, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1404, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1406, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1410, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"pxa_reg_layout\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 155, i32 30 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1444, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1447, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"i2c_pxa_pio_algorithm\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1242, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"i2c_pxa_algorithm\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1152, i32 35 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1461, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1475, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1264, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1266, i32 26 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1127, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1131, i32 35 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 363, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 365, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 367, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 370, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 372, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 373, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 548, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 558, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 352, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 516, i32 5 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 524, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 344, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant [9 x i8] c"icr_bits\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 323, i32 26 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 294, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 298, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 301, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 324, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 325, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 326, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 327, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 328, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 329, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 330, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 331, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 332, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 333, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 334, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 335, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 336, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 337, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 338, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1220, i32 35 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1175, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1057, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1067, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1074, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1103, i32 35 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 484, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 487, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 489, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 452, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 457, i32 5 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1004, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1038, i32 35 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 642, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 675, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 872, i32 35 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 597, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 399, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.460 = private constant [32 x i8] c"../drivers/i2c/busses/i2c-pxa.c\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 581, i32 2 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_i2c_adap_pxa_exit, ptr @__initcall__kmod_i2c_pxa__311_1551_i2c_adap_pxa_init4, ptr @decode_bits._entry, ptr @decode_bits._entry.56, ptr @decode_bits._entry.59, ptr @decode_bits._entry_ptr, ptr @decode_bits._entry_ptr.58, ptr @decode_bits._entry_ptr.60, ptr @i2c_adap_pxa_exit, ptr @i2c_pxa_do_reset._entry, ptr @i2c_pxa_do_reset._entry_ptr, ptr @i2c_pxa_do_xfer._entry, ptr @i2c_pxa_do_xfer._entry.83, ptr @i2c_pxa_do_xfer._entry.86, ptr @i2c_pxa_do_xfer._entry_ptr, ptr @i2c_pxa_do_xfer._entry_ptr.85, ptr @i2c_pxa_do_xfer._entry_ptr.88, ptr @i2c_pxa_pio_set_master._entry, ptr @i2c_pxa_pio_set_master._entry_ptr, ptr @i2c_pxa_probe._entry, ptr @i2c_pxa_probe._entry.10, ptr @i2c_pxa_probe._entry.13, ptr @i2c_pxa_probe._entry.16, ptr @i2c_pxa_probe._entry.19, ptr @i2c_pxa_probe._entry_ptr, ptr @i2c_pxa_probe._entry_ptr.12, ptr @i2c_pxa_probe._entry_ptr.15, ptr @i2c_pxa_probe._entry_ptr.18, ptr @i2c_pxa_probe._entry_ptr.22, ptr @i2c_pxa_scream_blue_murder._entry, ptr @i2c_pxa_scream_blue_murder._entry.31, ptr @i2c_pxa_scream_blue_murder._entry.34, ptr @i2c_pxa_scream_blue_murder._entry.37, ptr @i2c_pxa_scream_blue_murder._entry.40, ptr @i2c_pxa_scream_blue_murder._entry.43, ptr @i2c_pxa_scream_blue_murder._entry_ptr, ptr @i2c_pxa_scream_blue_murder._entry_ptr.33, ptr @i2c_pxa_scream_blue_murder._entry_ptr.36, ptr @i2c_pxa_scream_blue_murder._entry_ptr.39, ptr @i2c_pxa_scream_blue_murder._entry_ptr.42, ptr @i2c_pxa_scream_blue_murder._entry_ptr.45, ptr @i2c_pxa_set_slave._entry, ptr @i2c_pxa_set_slave._entry_ptr, ptr @i2c_pxa_slave_start._entry, ptr @i2c_pxa_slave_start._entry_ptr, ptr @i2c_pxa_driver, ptr @.str, ptr @i2c_pxa_dt_ids, ptr @i2c_pxa_dev_pm_ops, ptr @i2c_pxa_id_table, ptr @i2c_pxa_probe.__key, ptr @.str.1, ptr @i2c_pxa_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pxa_reg_layout, ptr @.str.11, ptr @.str.14, ptr @i2c_pxa_pio_algorithm, ptr @i2c_pxa_algorithm, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @icr_bits, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_id_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_reg_layout to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_pio_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_scream_blue_murder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_scream_blue_murder._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_scream_blue_murder._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_scream_blue_murder._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_scream_blue_murder._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_scream_blue_murder._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_set_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icr_bits to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_bits._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_bits._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_pio_set_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_do_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_do_xfer._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_do_xfer._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_slave_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pxa_do_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_adap_pxa_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_pxa_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_adap_pxa_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_pxa_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1864, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %adap = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8
  %nr = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 11
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nr, align 4
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %adap, align 8
  %retries = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 8
  %6 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %retries, align 8
  %algo_data = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %algo_data, align 4
  %dev9 = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 9
  %parent = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 9, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %of_node13 = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 9, i32 27
  %11 = ptrtoint ptr %of_node13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %of_node13, align 8
  %call14 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #8
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call14) #8
  %reg_base = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 14
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call23 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i249 = tail call ptr @of_match_device(ptr noundef nonnull @i2c_pxa_dt_ids, ptr noundef %dev1) #8
  %tobool.not.i = icmp eq ptr %call.i249, null
  br i1 %tobool.not.i, label %if.then32, label %if.end.i

if.end.i:                                         ; preds = %if.end25
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %nr, align 4
  %call2.i = tail call ptr @of_get_property(ptr noundef %15, ptr noundef nonnull @.str.23, ptr noundef null) #8
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_pio.i = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 25
  %17 = ptrtoint ptr %use_pio.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %use_pio.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %use_pio.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %call6.i = tail call ptr @of_get_property(ptr noundef %15, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.i2c_pxa_probe_dt.exit_crit_edge, label %if.then8.i

if.end5.i.i2c_pxa_probe_dt.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_probe_dt.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %fast_mode.i = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 25
  %18 = ptrtoint ptr %fast_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load9.i = load i8, ptr %fast_mode.i, align 8
  %bf.set11.i = or i8 %bf.load9.i, 64
  store i8 %bf.set11.i, ptr %fast_mode.i, align 8
  br label %i2c_pxa_probe_dt.exit

i2c_pxa_probe_dt.exit:                            ; preds = %if.then8.i, %if.end5.i.i2c_pxa_probe_dt.exit_crit_edge
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i249, i32 0, i32 3
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %do.body

if.then32:                                        ; preds = %if.end25
  %22 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i, align 8
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 8
  %24 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %driver_data.i, align 4
  %tobool.not.i250 = icmp eq ptr %23, null
  br i1 %tobool.not.i250, label %if.then32.do.body_crit_edge, label %if.then.i

if.then32.do.body_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %use_pio.i251 = getelementptr inbounds %struct.i2c_pxa_platform_data, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %use_pio.i251 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i252 = load i8, ptr %use_pio.i251, align 4
  %bf.lshr.i = and i8 %bf.load.i252, -128
  %use_pio1.i = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 25
  %29 = ptrtoint ptr %use_pio1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load2.i = load i8, ptr %use_pio1.i, align 8
  %bf.clear.i = and i8 %bf.load2.i, 127
  %bf.set.i253 = or i8 %bf.clear.i, %bf.lshr.i
  store i8 %bf.set.i253, ptr %use_pio1.i, align 8
  %bf.load3.i = load i8, ptr %use_pio.i251, align 4
  %bf.clear5.i = and i8 %bf.load3.i, 64
  %bf.clear11.i = and i8 %bf.set.i253, -65
  %bf.set12.i = or i8 %bf.clear11.i, %bf.clear5.i
  store i8 %bf.set12.i, ptr %use_pio1.i, align 8
  %bf.load14.i = load i8, ptr %use_pio.i251, align 4
  %bf.clear16.i = and i8 %bf.load14.i, 32
  %bf.clear22.i = and i8 %bf.set12.i, -33
  %bf.set23.i = or i8 %bf.clear22.i, %bf.clear16.i
  store i8 %bf.set23.i, ptr %use_pio1.i, align 8
  %master_code.i = getelementptr inbounds %struct.i2c_pxa_platform_data, ptr %23, i32 0, i32 2
  %30 = ptrtoint ptr %master_code.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %master_code.i, align 1
  %master_code25.i = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool27.not.i = icmp eq i8 %31, 0
  %spec.select.i = select i1 %tobool27.not.i, i8 14, i8 %31
  %32 = ptrtoint ptr %master_code25.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.select.i, ptr %master_code25.i, align 1
  %rate.i = getelementptr inbounds %struct.i2c_pxa_platform_data, ptr %23, i32 0, i32 3
  %33 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate.i, align 4
  %rate30.i = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 27
  %35 = ptrtoint ptr %rate30.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rate30.i, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.i, %if.then32.do.body_crit_edge, %i2c_pxa_probe_dt.exit
  %i2c_type.1 = phi i32 [ %21, %i2c_pxa_probe_dt.exit ], [ %27, %if.then32.do.body_crit_edge ], [ %27, %if.then.i ]
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @i2c_pxa_probe.__key, i16 noundef signext 3) #8
  %wait = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @i2c_pxa_probe.__key.2) #8
  %name = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 12
  %call43 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.4, i32 noundef 48) #8
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 9
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call45, ptr %clk, align 8
  %cmp.i254 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %do.end51, label %if.end57

do.end51:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %call45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %37) #11
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 8
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

if.end57:                                         ; preds = %do.body
  %41 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base, align 4
  %arrayidx = getelementptr [5 x %struct.pxa_reg_layout], ptr @pxa_reg_layout, i32 0, i32 %i2c_type.1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 %44
  %reg_ibmr = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 15
  %45 = ptrtoint ptr %reg_ibmr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr, ptr %reg_ibmr, align 8
  %idbr = getelementptr [5 x %struct.pxa_reg_layout], ptr @pxa_reg_layout, i32 0, i32 %i2c_type.1, i32 1
  %46 = ptrtoint ptr %idbr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %idbr, align 4
  %add.ptr61 = getelementptr i8, ptr %42, i32 %47
  %reg_idbr = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 16
  %48 = ptrtoint ptr %reg_idbr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr61, ptr %reg_idbr, align 4
  %icr = getelementptr [5 x %struct.pxa_reg_layout], ptr @pxa_reg_layout, i32 0, i32 %i2c_type.1, i32 2
  %49 = ptrtoint ptr %icr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %icr, align 4
  %add.ptr64 = getelementptr i8, ptr %42, i32 %50
  %reg_icr = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 17
  %51 = ptrtoint ptr %reg_icr to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr64, ptr %reg_icr, align 8
  %isr = getelementptr [5 x %struct.pxa_reg_layout], ptr @pxa_reg_layout, i32 0, i32 %i2c_type.1, i32 3
  %52 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %isr, align 4
  %add.ptr67 = getelementptr i8, ptr %42, i32 %53
  %reg_isr = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 18
  %54 = ptrtoint ptr %reg_isr to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr67, ptr %reg_isr, align 4
  %fm = getelementptr [5 x %struct.pxa_reg_layout], ptr @pxa_reg_layout, i32 0, i32 %i2c_type.1, i32 7
  %55 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fm, align 4
  %fm_mask = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 29
  %57 = ptrtoint ptr %fm_mask to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %fm_mask, align 4
  %hs = getelementptr [5 x %struct.pxa_reg_layout], ptr @pxa_reg_layout, i32 0, i32 %i2c_type.1, i32 8
  %58 = ptrtoint ptr %hs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hs, align 4
  %hs_mask = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 30
  %60 = ptrtoint ptr %hs_mask to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %hs_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i2c_type.1)
  %cmp70.not = icmp eq i32 %i2c_type.1, 2
  br i1 %cmp70.not, label %if.end57.if.end84_crit_edge, label %if.end75

if.end57.if.end84_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end75:                                         ; preds = %if.end57
  %isar = getelementptr [5 x %struct.pxa_reg_layout], ptr @pxa_reg_layout, i32 0, i32 %i2c_type.1, i32 4
  %61 = ptrtoint ptr %isar to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %isar, align 4
  %add.ptr74 = getelementptr i8, ptr %42, i32 %62
  %reg_isar = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 19
  %63 = ptrtoint ptr %reg_isar to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr74, ptr %reg_isar, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i2c_type.1)
  %cmp76 = icmp eq i32 %i2c_type.1, 3
  br i1 %cmp76, label %if.then77, label %if.end75.if.end84_crit_edge

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base, align 4
  %add.ptr80 = getelementptr i8, ptr %65, i32 40
  %reg_ilcr = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 20
  %66 = ptrtoint ptr %reg_ilcr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr80, ptr %reg_ilcr, align 4
  %add.ptr83 = getelementptr i8, ptr %65, i32 48
  %reg_iwcr = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 21
  %67 = ptrtoint ptr %reg_iwcr to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr83, ptr %reg_iwcr, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then77, %if.end75.if.end84_crit_edge, %if.end57.if.end84_crit_edge
  %68 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call14, align 4
  %iobase = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 22
  %70 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %iobase, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call14, i32 0, i32 1
  %71 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %end.i, align 4
  %73 = load i32, ptr %call14, align 4
  %sub.i = add i32 %72, 1
  %add.i = sub i32 %sub.i, %73
  %iosize = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 23
  %74 = ptrtoint ptr %iosize to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add.i, ptr %iosize, align 8
  %irq86 = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 24
  %75 = ptrtoint ptr %irq86 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call23, ptr %irq86, align 4
  %slave_addr = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 6
  %76 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %slave_addr, align 8
  %highmode_enter = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 28
  %77 = ptrtoint ptr %highmode_enter to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %highmode_enter, align 8
  %tobool87.not = icmp eq ptr %1, null
  br i1 %tobool87.not, label %if.end84.if.end91_crit_edge, label %if.then88

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %1, align 4
  %class90 = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 1
  %80 = ptrtoint ptr %class90 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %class90, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end84.if.end91_crit_edge
  %high_mode = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 25
  %81 = ptrtoint ptr %high_mode to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load = load i8, ptr %high_mode, align 8
  %82 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool92.not = icmp eq i8 %82, 0
  br i1 %tobool92.not, label %if.end91.if.end117_crit_edge, label %if.then93

if.end91.if.end117_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then93:                                        ; preds = %if.end91
  %rate = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 27
  %83 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool94.not = icmp eq i32 %84, 0
  br i1 %tobool94.not, label %do.end110, label %if.then95

if.then95:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk, align 8
  %call98 = tail call i32 @clk_set_rate(ptr noundef %86, i32 noundef %84) #8
  %87 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk, align 8
  %call106 = tail call i32 @clk_get_rate(ptr noundef %88) #8
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %call106) #11
  br label %if.end117

do.end110:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name) #11
  br label %if.end117

if.end117:                                        ; preds = %do.end110, %if.then95, %if.end91.if.end117_crit_edge
  %89 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %clk, align 8
  %call.i255 = tail call i32 @clk_prepare(ptr noundef %90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool.not.i256 = icmp eq i32 %call.i255, 0
  br i1 %tobool.not.i256, label %if.end.i257, label %if.end117.clk_prepare_enable.exit_crit_edge

if.end117.clk_prepare_enable.exit_crit_edge:      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i257:                                      ; preds = %if.end117
  %call1.i = tail call i32 @clk_enable(ptr noundef %90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i257.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i257.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %90) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i257.clk_prepare_enable.exit_crit_edge, %if.end117.clk_prepare_enable.exit_crit_edge
  %91 = ptrtoint ptr %high_mode to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load120 = load i8, ptr %high_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load120)
  %tobool123.not = icmp sgt i8 %bf.load120, -1
  %algo128 = getelementptr inbounds %struct.pxa_i2c, ptr %call.i, i32 0, i32 8, i32 2
  br i1 %tobool123.not, label %if.else126, label %if.then124

if.then124:                                       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %algo128 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @i2c_pxa_pio_algorithm, ptr %algo128, align 8
  br label %if.end140

if.else126:                                       ; preds = %clk_prepare_enable.exit
  %93 = ptrtoint ptr %algo128 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @i2c_pxa_algorithm, ptr %algo128, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i258 = icmp eq ptr %95, null
  br i1 %tobool.not.i258, label %if.end.i259, label %if.else126.dev_name.exit_crit_edge

if.else126.dev_name.exit_crit_edge:               ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i259:                                      ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i259, %if.else126.dev_name.exit_crit_edge
  %retval.0.i260 = phi ptr [ %97, %if.end.i259 ], [ %95, %if.else126.dev_name.exit_crit_edge ]
  %call.i261 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call23, ptr noundef nonnull @i2c_pxa_handler, ptr noundef null, i32 noundef 16512, ptr noundef %retval.0.i260, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool133.not = icmp eq i32 %call.i261, 0
  br i1 %tobool133.not, label %dev_name.exit.if.end140_crit_edge, label %do.end137

dev_name.exit.if.end140_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

do.end137:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call.i261) #11
  br label %ereqirq

if.end140:                                        ; preds = %dev_name.exit.if.end140_crit_edge, %if.then124
  tail call fastcc void @i2c_pxa_reset(ptr noundef nonnull %call.i)
  %call142 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.end140.ereqirq_crit_edge, label %if.end145

if.end140.ereqirq_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %ereqirq

if.end145:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %98 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %99 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %slave_addr, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.20, i32 noundef %100) #11
  br label %cleanup

ereqirq:                                          ; preds = %if.end140.ereqirq_crit_edge, %do.end137
  %ret.1 = phi i32 [ %call142, %if.end140.ereqirq_crit_edge ], [ %call.i261, %do.end137 ]
  %101 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %102) #8
  tail call void @clk_unprepare(ptr noundef %102) #8
  br label %cleanup

cleanup:                                          ; preds = %ereqirq, %if.end145, %do.end51, %if.end22.cleanup_crit_edge, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then19 ], [ %40, %do.end51 ], [ %ret.1, %ereqirq ], [ 0, %if.end145 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 8
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  %clk = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #8
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
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_handler(i32 noundef %this_irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %byte.i112 = alloca i8, align 1
  %byte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_isr = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 18
  %0 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_isr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !289
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !290
  %and = and i32 %3, 1776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irqlogidx = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 11
  %4 = ptrtoint ptr %irqlogidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqlogidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp22 = icmp ult i32 %5, 32
  br i1 %cmp22, label %if.then23, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw nsw i32 %5, 1
  %6 = ptrtoint ptr %irqlogidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %irqlogidx, align 8
  %arrayidx = getelementptr %struct.pxa_i2c, ptr %dev_id, i32 0, i32 12, i32 %5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %arrayidx, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end.if.end25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_handler, %i2c_pxa_show_state.exit)) #8
          to label %if.then.i [label %i2c_pxa_show_state.exit], !srcloc !291

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 8, i32 9
  %8 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_isr, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !289
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %reg_icr.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 17
  %12 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_icr.i, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !289
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  %reg_ibmr.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 15
  %16 = ptrtoint ptr %reg_ibmr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_ibmr.i, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !289
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.96, i32 noundef 1012, i32 noundef %11, i32 noundef %15, i32 noundef %19) #8
  br label %i2c_pxa_show_state.exit

i2c_pxa_show_state.exit:                          ; preds = %if.then.i, %if.end25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !295
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %and)
  %21 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_isr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !296
  %and31 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %i2c_pxa_show_state.exit.if.end34_crit_edge, label %if.then33

i2c_pxa_show_state.exit.if.end34_crit_edge:       ; preds = %i2c_pxa_show_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %i2c_pxa_show_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i2c_pxa_slave_start(ptr noundef %dev_id, i32 noundef %3)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %i2c_pxa_show_state.exit.if.end34_crit_edge
  %and35 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  %slave.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 10
  %23 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave.i, align 4
  %cmp6.not.i = icmp eq ptr %24, null
  br i1 %cmp6.not.i, label %if.then37.if.end32.i_crit_edge, label %if.then7.i

if.then37.if.end32.i_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then7.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %slave_cb.i.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %slave_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave_cb.i.i, align 8
  %call.i.i = tail call i32 %26(ptr noundef nonnull %24, i32 noundef 4, ptr noundef null) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then7.i, %if.then37.if.end32.i_crit_edge
  %msg.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 2
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msg.i, align 8
  %tobool33.not.i = icmp eq ptr %28, null
  br i1 %tobool33.not.i, label %if.end32.i.if.end38_crit_edge, label %if.then34.i

if.end32.i.if.end38_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34.i:                                      ; preds = %if.end32.i
  %msg_ptr.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 5
  %29 = ptrtoint ptr %msg_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %msg_ptr.i.i, align 4
  %30 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %msg.i, align 8
  %msg_idx.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 4
  %msg_num.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 3
  %31 = ptrtoint ptr %msg_num.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %msg_num.i.i, align 4
  %32 = ptrtoint ptr %msg_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2000, ptr %msg_idx.i.i, align 8
  %use_pio.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 25
  %33 = ptrtoint ptr %use_pio.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i = load i8, ptr %use_pio.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool2.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.then34.i.if.end38_crit_edge

if.then34.i.if.end38_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then3.i.i:                                     ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %wait.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then3.i.i, %if.then34.i.if.end38_crit_edge, %if.end32.i.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  %reg_icr.i107 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 17
  %34 = ptrtoint ptr %reg_icr.i107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_icr.i107, align 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  %37 = and i32 %36, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool40.not.not = icmp eq i32 %37, 0
  br i1 %tobool40.not.not, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end38
  %38 = and i32 %3, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %38)
  %39 = icmp eq i32 %38, 64
  br i1 %39, label %if.else.i, label %if.then41.if.end45_crit_edge

if.then41.if.end45_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else.i:                                        ; preds = %if.then41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #8
  %40 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %byte.i, align 1
  %slave.i108 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 10
  %41 = ptrtoint ptr %slave.i108 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slave.i108, align 4
  %cmp.not.i = icmp eq ptr %42, null
  br i1 %cmp.not.i, label %if.else.i.do.body.i_crit_edge, label %if.then1.i

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then1.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %slave_cb.i.i109 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %slave_cb.i.i109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %slave_cb.i.i109, align 8
  %call.i.i110 = call i32 %44(ptr noundef nonnull %42, i32 noundef 2, ptr noundef nonnull %byte.i) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then1.i, %if.else.i.do.body.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %byte.i, align 1
  %conv.i = zext i8 %46 to i32
  %47 = shl nuw i32 %conv.i, 24
  %reg_idbr.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 16
  %48 = ptrtoint ptr %reg_idbr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_idbr.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !296
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %reg_icr.i107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_icr.i107, align 8
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !300
  %53 = or i32 %52, 134217728
  %54 = ptrtoint ptr %reg_icr.i107 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_icr.i107, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #8, !srcloc !296
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #8
  br label %if.end45

if.end45:                                         ; preds = %do.body.i, %if.then41.if.end45_crit_edge
  %and46 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.then48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i112) #8
  %reg_idbr.i113 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 16
  %56 = ptrtoint ptr %reg_idbr.i113 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_idbr.i113, align 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !289
  %59 = lshr i32 %58, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !301
  %conv.i114 = trunc i32 %59 to i8
  %60 = ptrtoint ptr %byte.i112 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i114, ptr %byte.i112, align 1
  %slave.i115 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 10
  %61 = ptrtoint ptr %slave.i115 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %slave.i115, align 4
  %cmp.not.i116 = icmp eq ptr %62, null
  br i1 %cmp.not.i116, label %if.then48.i2c_pxa_slave_rxfull.exit_crit_edge, label %if.then.i119

if.then48.i2c_pxa_slave_rxfull.exit_crit_edge:    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_slave_rxfull.exit

if.then.i119:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %slave_cb.i.i117 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %slave_cb.i.i117 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %slave_cb.i.i117, align 8
  %call.i.i118 = call i32 %64(ptr noundef nonnull %62, i32 noundef 3, ptr noundef nonnull %byte.i112) #8
  br label %i2c_pxa_slave_rxfull.exit

i2c_pxa_slave_rxfull.exit:                        ; preds = %if.then.i119, %if.then48.i2c_pxa_slave_rxfull.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !302
  call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %reg_icr.i107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_icr.i107, align 8
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %68 = or i32 %67, 134217728
  %69 = ptrtoint ptr %reg_icr.i107 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_icr.i107, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #8, !srcloc !296
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i112) #8
  br label %cleanup

if.else:                                          ; preds = %if.end38
  %msg = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 2
  %71 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %msg, align 8
  %tobool50.not = icmp eq ptr %72, null
  br i1 %tobool50.not, label %if.else.if.else62_crit_edge, label %land.lhs.true51

if.else.if.else62_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else62

land.lhs.true51:                                  ; preds = %if.else
  %highmode_enter = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 28
  %73 = ptrtoint ptr %highmode_enter to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %highmode_enter, align 8, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool52.not = icmp eq i8 %74, 0
  br i1 %tobool52.not, label %if.then53, label %land.lhs.true51.if.else62_crit_edge

land.lhs.true51.if.else62_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else62

if.then53:                                        ; preds = %land.lhs.true51
  %and54 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then53.if.end57_crit_edge, label %if.then56

if.then53.if.end57_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i2c_pxa_irq_txempty(ptr noundef %dev_id, i32 noundef %3)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then53.if.end57_crit_edge
  %and58 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %if.then60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60:                                        ; preds = %if.end57
  %75 = ptrtoint ptr %reg_icr.i107 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_icr.i107, align 8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  %78 = and i32 %77, -251658241
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %reg_idbr.i123 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 16
  %80 = ptrtoint ptr %reg_idbr.i123 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_idbr.i123, align 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #8, !srcloc !289
  %83 = lshr i32 %82, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  %conv.i124 = trunc i32 %83 to i8
  %84 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %msg, align 8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf.i, align 4
  %msg_ptr.i = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 5
  %88 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_ptr.i, align 4
  %inc.i = add i32 %89, 1
  store i32 %inc.i, ptr %msg_ptr.i, align 4
  %arrayidx.i = getelementptr i8, ptr %87, i32 %89
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv.i124, ptr %arrayidx.i, align 1
  %91 = load i32, ptr %msg_ptr.i, align 4
  %92 = load ptr, ptr %msg, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %len.i, align 4
  %conv9.i = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %conv9.i)
  %cmp.i = icmp ult i32 %91, %conv9.i
  br i1 %cmp.i, label %if.then.i126, label %if.else.i132

if.then.i126:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %conv9.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %sub.i)
  %cmp15.i = icmp eq i32 %91, %sub.i
  %or.i = or i32 %79, 6
  %spec.select.i = select i1 %cmp15.i, i32 %or.i, i32 %79
  %or18.i = or i32 %spec.select.i, 4104
  br label %i2c_pxa_irq_rxfull.exit

if.else.i132:                                     ; preds = %if.then60
  %95 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %msg_ptr.i, align 4
  %96 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %msg, align 8
  %msg_idx.i.i127 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 4
  %97 = ptrtoint ptr %msg_idx.i.i127 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_idx.i.i127, align 8
  %inc.i.i = add i32 %98, 1
  store i32 %inc.i.i, ptr %msg_idx.i.i127, align 8
  %msg_num.i.i128 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 3
  %99 = ptrtoint ptr %msg_num.i.i128 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %msg_num.i.i128, align 4
  %use_pio.i.i129 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 25
  %100 = ptrtoint ptr %use_pio.i.i129 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i.i130 = load i8, ptr %use_pio.i.i129, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i130)
  %tobool2.not.i.i131 = icmp sgt i8 %bf.load.i.i130, -1
  br i1 %tobool2.not.i.i131, label %if.then3.i.i134, label %if.else.i132.i2c_pxa_irq_rxfull.exit_crit_edge

if.else.i132.i2c_pxa_irq_rxfull.exit_crit_edge:   ; preds = %if.else.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_irq_rxfull.exit

if.then3.i.i134:                                  ; preds = %if.else.i132
  call void @__sanitizer_cov_trace_pc() #10
  %wait.i.i133 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait.i.i133, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %i2c_pxa_irq_rxfull.exit

i2c_pxa_irq_rxfull.exit:                          ; preds = %if.then3.i.i134, %if.else.i132.i2c_pxa_irq_rxfull.exit_crit_edge, %if.then.i126
  %icr.1.i = phi i32 [ %or18.i, %if.then.i126 ], [ %79, %if.else.i132.i2c_pxa_irq_rxfull.exit_crit_edge ], [ %79, %if.then3.i.i134 ]
  %101 = ptrtoint ptr %irqlogidx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %irqlogidx, align 8
  %sub20.i = add i32 %102, -1
  %arrayidx21.i = getelementptr %struct.pxa_i2c, ptr %dev_id, i32 0, i32 13, i32 %sub20.i
  %103 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %icr.1.i, ptr %arrayidx21.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !307
  tail call void @arm_heavy_mb() #8
  %104 = tail call i32 @llvm.bswap.i32(i32 %icr.1.i) #8
  %105 = ptrtoint ptr %reg_icr.i107 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg_icr.i107, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #8, !srcloc !296
  br label %cleanup

if.else62:                                        ; preds = %land.lhs.true51.if.else62_crit_edge, %if.else.if.else62_crit_edge
  %and63 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else62.if.else70_crit_edge, label %land.lhs.true65

if.else62.if.else70_crit_edge:                    ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

land.lhs.true65:                                  ; preds = %if.else62
  %highmode_enter66 = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 28
  %107 = ptrtoint ptr %highmode_enter66 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %highmode_enter66, align 8, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool67.not = icmp eq i8 %108, 0
  br i1 %tobool67.not, label %land.lhs.true65.if.else70_crit_edge, label %if.then68

land.lhs.true65.if.else70_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

if.then68:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %highmode_enter66 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %highmode_enter66, align 8
  %wait = getelementptr inbounds %struct.pxa_i2c, ptr %dev_id, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.else70:                                        ; preds = %land.lhs.true65.if.else70_crit_edge, %if.else62.if.else70_crit_edge
  tail call fastcc void @i2c_pxa_scream_blue_murder(ptr noundef %dev_id, ptr noundef nonnull @.str.98)
  br label %cleanup

cleanup:                                          ; preds = %if.else70, %if.then68, %i2c_pxa_irq_rxfull.exit, %if.end57.cleanup_crit_edge, %i2c_pxa_slave_rxfull.exit, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %i2c_pxa_irq_rxfull.exit ], [ 1, %if.end57.cleanup_crit_edge ], [ 1, %if.else70 ], [ 1, %if.then68 ], [ 1, %if.end45.cleanup_crit_edge ], [ 1, %i2c_pxa_slave_rxfull.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pxa_reset(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_reset.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_reset, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !291

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2c_pxa_reset.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.123) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @i2c_pxa_abort(ptr noundef %i2c)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  tail call void @arm_heavy_mb() #8
  %reg_icr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %0 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_icr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 4194304) #8, !srcloc !296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void @arm_heavy_mb() #8
  %reg_isr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %2 = ptrtoint ptr %reg_isr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_isr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -16318464) #8, !srcloc !296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !310
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_icr.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  %7 = and i32 %6, -4194305
  %8 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_icr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !296
  %reg_isar.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 19
  %10 = ptrtoint ptr %reg_isar.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_isar.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.do.body11.i_crit_edge, label %do.body8.i

do.end.do.body11.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11.i

do.body8.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  tail call void @arm_heavy_mb() #8
  %slave_addr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 6
  %12 = ptrtoint ptr %slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slave_addr.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = ptrtoint ptr %reg_isar.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_isar.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !296
  br label %do.body11.i

do.body11.i:                                      ; preds = %do.body8.i, %do.end.do.body11.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !313
  tail call void @arm_heavy_mb() #8
  %fast_mode.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 25
  %17 = ptrtoint ptr %fast_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %fast_mode.i, align 8
  %18 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not.i = icmp eq i8 %18, 0
  br i1 %tobool13.not.i, label %do.body11.i.cond.end.i_crit_edge, label %cond.true.i

do.body11.i.cond.end.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  %fm_mask.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 29
  %19 = ptrtoint ptr %fm_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fm_mask.i, align 4
  %phi.bo.i = or i32 %20, 1952
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.body11.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.true.i ], [ 1952, %do.body11.i.cond.end.i_crit_edge ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %22 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_icr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_icr.i, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %27 = ptrtoint ptr %fast_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load23.i = load i8, ptr %fast_mode.i, align 8
  %28 = and i8 %bf.load23.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool27.not.i = icmp eq i8 %28, 0
  br i1 %tobool27.not.i, label %cond.end.i.i2c_pxa_do_reset.exit_crit_edge, label %cond.true28.i

cond.end.i.i2c_pxa_do_reset.exit_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_do_reset.exit

cond.true28.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %hs_mask.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 30
  %29 = ptrtoint ptr %hs_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hs_mask.i, align 8
  br label %i2c_pxa_do_reset.exit

i2c_pxa_do_reset.exit:                            ; preds = %cond.true28.i, %cond.end.i.i2c_pxa_do_reset.exit_crit_edge
  %cond31.i = phi i32 [ %30, %cond.true28.i ], [ 0, %cond.end.i.i2c_pxa_do_reset.exit_crit_edge ]
  %31 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %or32.i = or i32 %cond31.i, %31
  %32 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #8
  %33 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_icr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !296
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.126) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_icr.i, align 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  %38 = or i32 %37, 3670016
  %39 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_icr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #8, !srcloc !296
  tail call fastcc void @i2c_pxa_set_slave(ptr noundef %i2c, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_icr.i, align 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !319
  %44 = or i32 %43, 1073741824
  %45 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_icr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 21474800) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_pio_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %reg_icr = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_icr, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i2c_pxa_reset(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retries.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 8, i32 8
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 8, i32 9
  %msg1.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 2
  %msg_num.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 3
  %msg_idx.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 4
  %msg_ptr.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 5
  %irqlogidx.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 11
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %req_slave_addr.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 7
  %reg_idbr.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end14.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %if.end14.i ]
  %call.i5 = tail call fastcc i32 @i2c_pxa_pio_set_master(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i, label %if.end.i6, label %for.cond.i.i2c_pxa_do_pio_xfer.exit_crit_edge

for.cond.i.i2c_pxa_do_pio_xfer.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_do_pio_xfer.exit

if.end.i6:                                        ; preds = %for.cond.i
  %6 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msgs, ptr %msg1.i, align 8
  %7 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num, ptr %msg_num.i, align 4
  %8 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %msg_idx.i, align 8
  %9 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %msg_ptr.i, align 4
  %10 = ptrtoint ptr %irqlogidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %irqlogidx.i, align 8
  %11 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msgs, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %13 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i.i.i, align 2
  %15 = and i16 %14, 1
  %16 = zext i16 %15 to i32
  %shl.i.masked.i.i = and i32 %shl.i.i.i, 254
  %conv.i.i = or i32 %shl.i.masked.i.i, %16
  %17 = ptrtoint ptr %req_slave_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i.i, ptr %req_slave_addr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %req_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_slave_addr.i.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %21 = ptrtoint ptr %reg_idbr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_idbr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !296
  %23 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_icr, align 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %26 = and i32 %25, -185597953
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  %27 = or i32 %26, 150994944
  %28 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_icr, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !296
  %30 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not26.i = icmp eq i32 %31, 0
  br i1 %cmp.not26.i, label %if.end.i6.out.i_crit_edge, label %if.end.i6.land.rhs.i_crit_edge

if.end.i6.land.rhs.i_crit_edge:                   ; preds = %if.end.i6
  br label %land.rhs.i

if.end.i6.out.i_crit_edge:                        ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i6.land.rhs.i_crit_edge
  %timeout.027.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 500000, %if.end.i6.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.027.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i.out.loopexit.i_crit_edge, label %while.body.i

land.rhs.i.out.loopexit.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.loopexit.i

while.body.i:                                     ; preds = %land.rhs.i
  %call4.i = tail call i32 @i2c_pxa_handler(i32 noundef 0, ptr noundef %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #8
  %33 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_num.i, align 4
  %cmp.not.i = icmp eq i32 %34, 0
  br i1 %cmp.not.i, label %while.body.i.out.loopexit.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.out.loopexit.i_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.loopexit.i

out.loopexit.i:                                   ; preds = %while.body.i.out.loopexit.i_crit_edge, %land.rhs.i.out.loopexit.i_crit_edge
  %35 = xor i1 %tobool3.not.i, true
  br label %out.i

out.i:                                            ; preds = %out.loopexit.i, %if.end.i6.out.i_crit_edge
  %cmp.not.lcssa.i = phi i1 [ true, %if.end.i6.out.i_crit_edge ], [ %35, %out.loopexit.i ]
  %36 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_icr, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  %39 = and i32 %38, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_icr, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #8, !srcloc !296
  %42 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_idx.i, align 8
  br i1 %cmp.not.lcssa.i, label %out.i.i2c_pxa_do_pio_xfer.exit_crit_edge, label %if.end.i.thread

out.i.i2c_pxa_do_pio_xfer.exit_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_do_pio_xfer.exit

i2c_pxa_do_pio_xfer.exit:                         ; preds = %out.i.i2c_pxa_do_pio_xfer.exit_crit_edge, %for.cond.i.i2c_pxa_do_pio_xfer.exit_crit_edge
  %ret.1.i = phi i32 [ %43, %out.i.i2c_pxa_do_pio_xfer.exit_crit_edge ], [ %call.i5, %for.cond.i.i2c_pxa_do_pio_xfer.exit_crit_edge ]
  %44 = zext i32 %ret.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.1.i, label %i2c_pxa_do_pio_xfer.exit.i2c_pxa_internal_xfer.exit_crit_edge [
    i32 -2000, label %i2c_pxa_do_pio_xfer.exit.if.end.i_crit_edge
    i32 -6, label %i2c_pxa_do_pio_xfer.exit.if.end.i_crit_edge22
  ]

i2c_pxa_do_pio_xfer.exit.if.end.i_crit_edge22:    ; preds = %i2c_pxa_do_pio_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

i2c_pxa_do_pio_xfer.exit.if.end.i_crit_edge:      ; preds = %i2c_pxa_do_pio_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

i2c_pxa_do_pio_xfer.exit.i2c_pxa_internal_xfer.exit_crit_edge: ; preds = %i2c_pxa_do_pio_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_internal_xfer.exit

if.end.i:                                         ; preds = %i2c_pxa_do_pio_xfer.exit.if.end.i_crit_edge, %i2c_pxa_do_pio_xfer.exit.if.end.i_crit_edge22
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %45 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %retries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %46)
  %cmp2.not.i = icmp slt i32 %inc.i, %46
  br i1 %cmp2.not.i, label %if.end.i.do.body.i_crit_edge, label %for.end.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i.thread:                                  ; preds = %out.i
  tail call fastcc void @i2c_pxa_scream_blue_murder(ptr noundef %1, ptr noundef nonnull @.str.79) #8
  %inc.i10 = add nuw nsw i32 %i.0.i, 1
  %47 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %retries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10, i32 %48)
  %cmp2.not.i11 = icmp slt i32 %inc.i10, %48
  br i1 %cmp2.not.i11, label %if.end.i.thread.do.body.i_crit_edge, label %if.end.i.thread.if.then16.i_crit_edge

if.end.i.thread.if.then16.i_crit_edge:            ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.end.i.thread.do.body.i_crit_edge:              ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.thread.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %inc.i13 = phi i32 [ %inc.i10, %if.end.i.thread.do.body.i_crit_edge ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_internal_xfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_pio_xfer, %if.end14.i)) #8
          to label %if.then11.i [label %if.end14.i], !srcloc !291

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_internal_xfer.__UNIQUE_ID_ddebug306, ptr noundef %dev.i, ptr noundef nonnull @.str.27) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 21474800) #8
  br label %for.cond.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %ret.1.i)
  %cmp15.not.i = icmp eq i32 %ret.1.i, -6
  br i1 %cmp15.not.i, label %for.end.i.i2c_pxa_internal_xfer.exit_crit_edge, label %for.end.i.if.then16.i_crit_edge

for.end.i.if.then16.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

for.end.i.i2c_pxa_internal_xfer.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_internal_xfer.exit

if.then16.i:                                      ; preds = %for.end.i.if.then16.i_crit_edge, %if.end.i.thread.if.then16.i_crit_edge
  tail call fastcc void @i2c_pxa_scream_blue_murder(ptr noundef %1, ptr noundef nonnull @.str.28) #8
  br label %i2c_pxa_internal_xfer.exit

i2c_pxa_internal_xfer.exit:                       ; preds = %if.then16.i, %for.end.i.i2c_pxa_internal_xfer.exit_crit_edge, %i2c_pxa_do_pio_xfer.exit.i2c_pxa_internal_xfer.exit_crit_edge
  %ret.0.i = phi i32 [ -121, %if.then16.i ], [ -121, %for.end.i.i2c_pxa_internal_xfer.exit_crit_edge ], [ %ret.1.i, %i2c_pxa_do_pio_xfer.exit.i2c_pxa_internal_xfer.exit_crit_edge ]
  tail call fastcc void @i2c_pxa_set_slave(ptr noundef %1, i32 noundef %ret.0.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i2c_pxa_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592733
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_slave_reg(ptr noundef %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo_data, align 4
  %slave1 = getelementptr inbounds %struct.pxa_i2c, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_isar = getelementptr inbounds %struct.pxa_i2c, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %reg_isar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_isar, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %slave, ptr %slave1, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  %conv = zext i16 %10 to i32
  %slave_addr = getelementptr inbounds %struct.pxa_i2c, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %slave_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slave_addr, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %reg_isar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_isar, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_slave_unreg(ptr nocapture noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo_data, align 4
  %slave1 = getelementptr inbounds %struct.pxa_i2c, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !327

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 724, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %slave_addr = getelementptr inbounds %struct.pxa_i2c, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %slave_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slave_addr, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %reg_isar = getelementptr inbounds %struct.pxa_i2c, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %reg_isar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_isar, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !296
  %12 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %slave1, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pxa_scream_blue_murder(ptr noundef %i2c, ptr noundef %why) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %req_slave_addr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 7
  %0 = ptrtoint ptr %req_slave_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_slave_addr, align 4
  %shr = lshr i32 %1, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %shr, ptr noundef %why) #11
  %msg_num = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 3
  %2 = ptrtoint ptr %msg_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_num, align 4
  %msg_idx = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 4
  %4 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_idx, align 8
  %msg_ptr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 5
  %6 = ptrtoint ptr %msg_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %3, i32 noundef %5, i32 noundef %7) #11
  %reg_ibmr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  %8 = ptrtoint ptr %reg_ibmr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_ibmr, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !289
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  %reg_idbr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 16
  %12 = ptrtoint ptr %reg_idbr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_idbr, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !289
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !330
  %reg_icr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %16 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_icr, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !289
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !331
  %reg_isr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %20 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_isr, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !289
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %15, i32 noundef %19, i32 noundef %23) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #11
  %irqlogidx = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 11
  %24 = ptrtoint ptr %irqlogidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irqlogidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp55.not = icmp eq i32 %25, 0
  br i1 %cmp55.not, label %entry.do.end35_crit_edge, label %entry.do.end29_crit_edge

entry.do.end29_crit_edge:                         ; preds = %entry
  br label %do.end29

entry.do.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end29:                                         ; preds = %do.end29.do.end29_crit_edge, %entry.do.end29_crit_edge
  %i.056 = phi i32 [ %inc, %do.end29.do.end29_crit_edge ], [ 0, %entry.do.end29_crit_edge ]
  %arrayidx = getelementptr %struct.pxa_i2c, ptr %i2c, i32 0, i32 12, i32 %i.056
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %arrayidx31 = getelementptr %struct.pxa_i2c, ptr %i2c, i32 0, i32 13, i32 %i.056
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx31, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %27, i32 noundef %29) #11
  %inc = add nuw i32 %i.056, 1
  %30 = ptrtoint ptr %irqlogidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irqlogidx, align 8
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %do.end29.do.end29_crit_edge, label %do.end29.do.end35_crit_edge

do.end29.do.end35_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end29.do.end29_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

do.end35:                                         ; preds = %do.end29.do.end35_crit_edge, %entry.do.end35_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pxa_set_slave(ptr noundef %i2c, i32 noundef %errcode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_set_slave, %i2c_pxa_show_state.exit)) #8
          to label %if.then.i [label %i2c_pxa_show_state.exit], !srcloc !291

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %reg_isr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %0 = ptrtoint ptr %reg_isr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_isr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !289
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %reg_icr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %4 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_icr.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !289
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  %reg_ibmr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  %8 = ptrtoint ptr %reg_ibmr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_ibmr.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !289
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.i2c_pxa_set_slave, i32 noundef 534, i32 noundef %3, i32 noundef %7, i32 noundef %11) #8
  br label %i2c_pxa_show_state.exit

i2c_pxa_show_state.exit:                          ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errcode)
  %cmp = icmp slt i32 %errcode, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %i2c_pxa_show_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #8
  br label %do.body18

if.else:                                          ; preds = %i2c_pxa_show_state.exit
  %reg_icr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %13 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_icr, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !333
  %16 = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.else.if.end_crit_edge, label %if.then2

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_icr, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  %21 = and i32 %20, -33554433
  %22 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_icr, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else.if.end_crit_edge
  %call11 = tail call fastcc i32 @i2c_pxa_wait_slave(ptr noundef %i2c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end15, label %if.end.do.body18_crit_edge

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.i2c_pxa_set_slave) #11
  br label %if.end69

do.body18:                                        ; preds = %if.end.do.body18_crit_edge, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !336
  tail call void @arm_heavy_mb() #8
  %reg_icr22 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %24 = ptrtoint ptr %reg_icr22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_icr22, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !337
  %27 = and i32 %26, -369098753
  %28 = ptrtoint ptr %reg_icr22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_icr22, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %reg_icr22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_icr22, align 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !339
  %33 = and i32 %32, -536870913
  %34 = ptrtoint ptr %reg_icr22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_icr22, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !296
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_set_slave.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_set_slave, %do.end62)) #8
          to label %if.then47 [label %do.end62], !srcloc !291

if.then47:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %36 = ptrtoint ptr %reg_icr22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_icr22, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !289
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !340
  %reg_isr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %40 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_isr, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !289
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !341
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_set_slave.__UNIQUE_ID_ddebug300, ptr noundef %dev49, ptr noundef nonnull @.str.47, i32 noundef %39, i32 noundef %43) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then47, %do.body18
  %44 = ptrtoint ptr %reg_icr22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_icr22, align 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !289
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !342
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %47) #11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %do.end62
  %dec2.i.i = phi i32 [ 14, %do.end62 ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %bits.addr.01.i.i = phi ptr [ @icr_bits, %do.end62 ], [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %48 = ptrtoint ptr %bits.addr.01.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bits.addr.01.i.i, align 4
  %and.i.i = and i32 %49, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  %set.i.i = getelementptr inbounds %struct.bits, ptr %bits.addr.01.i.i, i32 0, i32 1
  %unset.i.i = getelementptr inbounds %struct.bits, ptr %bits.addr.01.i.i, i32 0, i32 2
  %cond.in.i.i = select i1 %tobool1.not.i.i, ptr %unset.i.i, ptr %set.i.i
  %50 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %cond.i.i, null
  br i1 %tobool2.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %do.end4.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end4.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull %cond.i.i) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end4.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bits, ptr %bits.addr.01.i.i, i32 1
  %dec.i.i = add nsw i32 %dec2.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec2.i.i, 0
  br i1 %tobool.not.i.i, label %decode_ICR.exit, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

decode_ICR.exit:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #11
  br label %if.end69

if.end69:                                         ; preds = %decode_ICR.exit, %do.end15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_pxa_wait_slave(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_wait_slave, %i2c_pxa_show_state.exit)) #8
          to label %if.then.i [label %i2c_pxa_show_state.exit], !srcloc !291

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %reg_isr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %1 = ptrtoint ptr %reg_isr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_isr.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !289
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %reg_icr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %5 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_icr.i, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !289
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  %reg_ibmr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  %9 = ptrtoint ptr %reg_ibmr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_ibmr.i, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !289
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.i2c_pxa_wait_slave, i32 noundef 505, i32 noundef %4, i32 noundef %8, i32 noundef %12) #8
  br label %i2c_pxa_show_state.exit

i2c_pxa_show_state.exit:                          ; preds = %if.then.i, %entry
  %add.neg = sub i32 -100, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub102 = add i32 %add.neg, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub102)
  %cmp103 = icmp slt i32 %sub102, 0
  br i1 %cmp103, label %if.end19.lr.ph, label %i2c_pxa_show_state.exit.do.body71_crit_edge

i2c_pxa_show_state.exit.do.body71_crit_edge:      ; preds = %i2c_pxa_show_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.end19.lr.ph:                                   ; preds = %i2c_pxa_show_state.exit
  %reg_isr22 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %reg_icr38 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  br label %if.end19

if.end19:                                         ; preds = %if.end68.if.end19_crit_edge, %if.end19.lr.ph
  %14 = ptrtoint ptr %reg_isr22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_isr22, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  %17 = and i32 %16, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp26 = icmp eq i32 %17, 0
  br i1 %cmp26, label %if.end19.cleanup_crit_edge, label %lor.lhs.false

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end19
  %18 = ptrtoint ptr %reg_isr22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_isr22, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !344
  %21 = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp34.not = icmp eq i32 %21, 0
  br i1 %cmp34.not, label %lor.lhs.false35, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %reg_icr38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_icr38, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !345
  %25 = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp43 = icmp eq i32 %25, 0
  br i1 %cmp43, label %lor.lhs.false35.cleanup_crit_edge, label %if.end68

lor.lhs.false35.cleanup_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %lor.lhs.false35
  tail call void @msleep(i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %26
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end68.if.end19_crit_edge, label %if.end68.do.body71_crit_edge

if.end68.do.body71_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.end68.if.end19_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body71:                                        ; preds = %if.end68.do.body71_crit_edge, %i2c_pxa_show_state.exit.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_wait_slave.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_wait_slave, %cleanup)) #8
          to label %if.then85 [label %cleanup], !srcloc !291

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %dev87 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_wait_slave.__UNIQUE_ID_ddebug299, ptr noundef %dev87, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.i2c_pxa_wait_slave) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body71, %lor.lhs.false35.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then85 ], [ 0, %do.body71 ], [ 1, %if.end19.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %lor.lhs.false35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_pxa_pio_set_master(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_isr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %dec19 = phi i32 [ 63, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_isr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !346
  %3 = and i32 %2, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  %dec = add nsw i32 %dec19, -1
  %tobool.not = icmp eq i32 %dec19, 0
  br i1 %tobool.not, label %while.body.if.then_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.end:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec19)
  %cmp = icmp slt i32 %dec19, 0
  br i1 %cmp, label %while.end.if.then_crit_edge, label %do.body3

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %while.body.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_pio_set_master, %i2c_pxa_show_state.exit)) #8
          to label %if.then.i [label %i2c_pxa_show_state.exit], !srcloc !291

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %5 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_isr, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !289
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %reg_icr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %9 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_icr.i, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !289
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  %reg_ibmr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  %13 = ptrtoint ptr %reg_ibmr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_ibmr.i, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !289
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.i2c_pxa_pio_set_master, i32 noundef 1174, i32 noundef %8, i32 noundef %12, i32 noundef %16) #8
  br label %i2c_pxa_show_state.exit

i2c_pxa_show_state.exit:                          ; preds = %if.then.i, %if.then
  %dev = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #11
  br label %cleanup

do.body3:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !347
  tail call void @arm_heavy_mb() #8
  %reg_icr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %17 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_icr, align 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !348
  %20 = or i32 %19, 536870912
  %21 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_icr, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %i2c_pxa_show_state.exit
  %retval.0 = phi i32 [ -2000, %i2c_pxa_show_state.exit ], [ 0, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %retries.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 8, i32 8
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 8, i32 9
  %adap.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 8
  %high_mode.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 25
  %highmode_enter.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 28
  %master_code.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 26
  %reg_idbr.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 16
  %reg_icr.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 17
  %wait.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 1
  %msg24.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 2
  %msg_num.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 3
  %msg_idx.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 4
  %msg_ptr.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 5
  %irqlogidx.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 11
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %req_slave_addr.i.i = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end14.i, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i12, %if.end14.i ]
  %call.i1 = call fastcc i32 @i2c_pxa_wait_bus_not_busy(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i, label %if.end.i3, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81) #11
  %call2.i = call i32 @i2c_recover_bus(ptr noundef %adap.i) #8
  br label %i2c_pxa_do_xfer.exit

if.end.i3:                                        ; preds = %for.cond.i
  %call3.i = call fastcc i32 @i2c_pxa_set_master(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end11.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.84, i32 noundef %call3.i) #11
  br label %i2c_pxa_do_xfer.exit

if.end11.i:                                       ; preds = %if.end.i3
  %2 = ptrtoint ptr %high_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %high_mode.i, align 8
  %3 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool12.not.i = icmp eq i8 %3, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end23.i_crit_edge, label %if.then13.i

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @_raw_spin_lock_irq(ptr noundef %1) #8
  %4 = ptrtoint ptr %highmode_enter.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %highmode_enter.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !349
  call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %master_code.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %master_code.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %7 = shl nuw i32 %conv.i.i, 24
  %8 = ptrtoint ptr %reg_idbr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_idbr.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !296
  %10 = ptrtoint ptr %reg_icr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_icr.i.i, align 8
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !350
  %13 = and i32 %12, -185665537
  %14 = or i32 %13, 151062528
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %reg_icr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_icr.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !296
  call void @_raw_spin_unlock_irq(ptr noundef %1) #8
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 837) #8
  %17 = ptrtoint ptr %highmode_enter.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %highmode_enter.i.i, align 8, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i.i = icmp eq i8 %18, 0
  br i1 %cmp.i.i, label %if.then13.i.if.end23.sink.split.i_crit_edge, label %if.then24.i.i

if.then13.i.if.end23.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split.i

if.then24.i.i:                                    ; preds = %if.then13.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #8
  %19 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #8
  %call2687.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #8
  %20 = ptrtoint ptr %highmode_enter.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %highmode_enter.i.i, align 8, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp3188.i.i = icmp eq i8 %21, 0
  br i1 %cmp3188.i.i, label %if.then24.i.i.i2c_pxa_send_mastercode.exit.thread119.i_crit_edge, label %if.then24.i.i.cleanup.i.i_crit_edge

if.then24.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then24.i.i
  br label %cleanup.i.i

if.then24.i.i.i2c_pxa_send_mastercode.exit.thread119.i_crit_edge: ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_send_mastercode.exit.thread119.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then24.i.i.cleanup.i.i_crit_edge
  %__ret25.189.i.i = phi i32 [ %__ret25.1.i.i, %cleanup.i.i.cleanup.i.i_crit_edge ], [ 100, %if.then24.i.i.cleanup.i.i_crit_edge ]
  %call51.i.i = call i32 @schedule_timeout(i32 noundef %__ret25.189.i.i) #8
  %call26.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #8
  %22 = ptrtoint ptr %highmode_enter.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %highmode_enter.i.i, align 8, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp31.i.i = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %tobool37.not.i.i = icmp eq i32 %call51.i.i, 0
  %24 = select i1 %cmp31.i.i, i1 %tobool37.not.i.i, i1 false
  %__ret25.1.i.i = select i1 %24, i32 1, i32 %call51.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1.i.i)
  %tobool44.not.i.i = icmp eq i32 %__ret25.1.i.i, 0
  %25 = select i1 %cmp31.i.i, i1 true, i1 %tobool44.not.i.i
  br i1 %25, label %if.end54.loopexit.i.i, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.end54.loopexit.i.i:                            ; preds = %cleanup.i.i
  br i1 %tobool44.not.i.i, label %do.end19.i, label %if.end54.loopexit.i.i.i2c_pxa_send_mastercode.exit.thread119.i_crit_edge

if.end54.loopexit.i.i.i2c_pxa_send_mastercode.exit.thread119.i_crit_edge: ; preds = %if.end54.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_send_mastercode.exit.thread119.i

i2c_pxa_send_mastercode.exit.thread119.i:         ; preds = %if.end54.loopexit.i.i.i2c_pxa_send_mastercode.exit.thread119.i_crit_edge, %if.then24.i.i.i2c_pxa_send_mastercode.exit.thread119.i_crit_edge
  call void @finish_wait(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #8
  br label %if.end23.sink.split.i

do.end19.i:                                       ; preds = %if.end54.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #8
  %26 = ptrtoint ptr %highmode_enter.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %highmode_enter.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.87) #11
  br label %if.end.i.thread

if.end23.sink.split.i:                            ; preds = %i2c_pxa_send_mastercode.exit.thread119.i, %if.then13.i.if.end23.sink.split.i_crit_edge
  %27 = ptrtoint ptr %highmode_enter.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %highmode_enter.i.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %if.end11.i.if.end23.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %1) #8
  %28 = ptrtoint ptr %msg24.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msgs, ptr %msg24.i, align 8
  %29 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %num, ptr %msg_num.i, align 4
  %30 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %msg_idx.i, align 8
  %31 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %msg_ptr.i, align 4
  %32 = ptrtoint ptr %irqlogidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %irqlogidx.i, align 8
  %33 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %msgs, align 4
  %conv.i.i.i = zext i16 %34 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %35 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags.i.i.i, align 2
  %37 = and i16 %36, 1
  %38 = zext i16 %37 to i32
  %shl.i.masked.i.i = and i32 %shl.i.i.i, 254
  %conv.i114.i = or i32 %shl.i.masked.i.i, %38
  %39 = ptrtoint ptr %req_slave_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i114.i, ptr %req_slave_addr.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %req_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %req_slave_addr.i.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #8
  %43 = ptrtoint ptr %reg_idbr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_idbr.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !296
  %45 = ptrtoint ptr %reg_icr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_icr.i.i, align 8
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %48 = and i32 %47, -185597953
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  call void @arm_heavy_mb() #8
  %49 = or i32 %48, 150994944
  %50 = ptrtoint ptr %reg_icr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_icr.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !296
  call void @_raw_spin_unlock_irq(ptr noundef %1) #8
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1094) #8
  %52 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i = icmp eq i32 %53, 0
  br i1 %cmp.i, label %if.end23.i.if.end65.i_crit_edge, label %if.then40.i

if.end23.i.if.end65.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then40.i:                                      ; preds = %if.end23.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %54 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %call42126.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %55 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp45127.i = icmp eq i32 %56, 0
  br i1 %cmp45127.i, label %if.then40.i.for.end.i4_crit_edge, label %if.then40.i.cleanup.i_crit_edge

if.then40.i.cleanup.i_crit_edge:                  ; preds = %if.then40.i
  br label %cleanup.i

if.then40.i.for.end.i4_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i4

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then40.i.cleanup.i_crit_edge
  %__ret41.1128.i = phi i32 [ %__ret41.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 500, %if.then40.i.cleanup.i_crit_edge ]
  %call62.i = call i32 @schedule_timeout(i32 noundef %__ret41.1128.i) #8
  %call42.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %57 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp45.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool49.not.i = icmp eq i32 %call62.i, 0
  %59 = select i1 %cmp45.i, i1 %tobool49.not.i, i1 false
  %__ret41.1.i = select i1 %59, i32 1, i32 %call62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret41.1.i)
  %tobool55.not.i = icmp eq i32 %__ret41.1.i, 0
  %60 = select i1 %cmp45.i, i1 true, i1 %tobool55.not.i
  br i1 %60, label %cleanup.i.for.end.i4_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

cleanup.i.for.end.i4_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i4

for.end.i4:                                       ; preds = %cleanup.i.for.end.i4_crit_edge, %if.then40.i.for.end.i4_crit_edge
  %__ret41.1.lcssa.i = phi i1 [ false, %if.then40.i.for.end.i4_crit_edge ], [ %tobool55.not.i, %cleanup.i.for.end.i4_crit_edge ]
  call void @finish_wait(ptr noundef %wait.i.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %if.end65.i

if.end65.i:                                       ; preds = %for.end.i4, %if.end23.i.if.end65.i_crit_edge
  %__ret.1.i = phi i1 [ false, %if.end23.i.if.end65.i_crit_edge ], [ %__ret41.1.lcssa.i, %for.end.i4 ]
  %61 = ptrtoint ptr %reg_icr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_icr.i.i, align 8
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  %64 = and i32 %63, -520093697
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %reg_icr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_icr.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #8, !srcloc !296
  %67 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_idx.i, align 8
  br i1 %__ret.1.i, label %land.lhs.true69.i, label %if.end65.i.i2c_pxa_do_xfer.exit_crit_edge

if.end65.i.i2c_pxa_do_xfer.exit_crit_edge:        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_do_xfer.exit

land.lhs.true69.i:                                ; preds = %if.end65.i
  %69 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool71.not.i = icmp eq i32 %70, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.i2c_pxa_do_xfer.exit_crit_edge, label %if.then72.i

land.lhs.true69.i.i2c_pxa_do_xfer.exit_crit_edge: ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_do_xfer.exit

if.then72.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @i2c_pxa_scream_blue_murder(ptr noundef %1, ptr noundef nonnull @.str.89) #8
  %call74.i = call i32 @i2c_recover_bus(ptr noundef %adap.i) #8
  br label %if.end.i.thread

i2c_pxa_do_xfer.exit:                             ; preds = %land.lhs.true69.i.i2c_pxa_do_xfer.exit_crit_edge, %if.end65.i.i2c_pxa_do_xfer.exit_crit_edge, %do.end8.i, %do.end.i
  %ret.0.i5 = phi i32 [ %call.i1, %do.end.i ], [ %call3.i, %do.end8.i ], [ %68, %if.end65.i.i2c_pxa_do_xfer.exit_crit_edge ], [ %68, %land.lhs.true69.i.i2c_pxa_do_xfer.exit_crit_edge ]
  %71 = zext i32 %ret.0.i5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %ret.0.i5, label %i2c_pxa_do_xfer.exit.i2c_pxa_internal_xfer.exit_crit_edge [
    i32 -2000, label %i2c_pxa_do_xfer.exit.if.end.i_crit_edge
    i32 -6, label %i2c_pxa_do_xfer.exit.if.end.i_crit_edge21
  ]

i2c_pxa_do_xfer.exit.if.end.i_crit_edge21:        ; preds = %i2c_pxa_do_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

i2c_pxa_do_xfer.exit.if.end.i_crit_edge:          ; preds = %i2c_pxa_do_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

i2c_pxa_do_xfer.exit.i2c_pxa_internal_xfer.exit_crit_edge: ; preds = %i2c_pxa_do_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_internal_xfer.exit

if.end.i:                                         ; preds = %i2c_pxa_do_xfer.exit.if.end.i_crit_edge, %i2c_pxa_do_xfer.exit.if.end.i_crit_edge21
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %72 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %retries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %73)
  %cmp2.not.i = icmp slt i32 %inc.i, %73
  br i1 %cmp2.not.i, label %if.end.i.do.body.i_crit_edge, label %for.end.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i.thread:                                  ; preds = %if.then72.i, %do.end19.i
  %inc.i9 = add nuw nsw i32 %i.0.i, 1
  %74 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %retries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i9, i32 %75)
  %cmp2.not.i10 = icmp slt i32 %inc.i9, %75
  br i1 %cmp2.not.i10, label %if.end.i.thread.do.body.i_crit_edge, label %if.end.i.thread.if.then16.i_crit_edge

if.end.i.thread.if.then16.i_crit_edge:            ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.end.i.thread.do.body.i_crit_edge:              ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.thread.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %inc.i12 = phi i32 [ %inc.i9, %if.end.i.thread.do.body.i_crit_edge ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_internal_xfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_xfer, %if.end14.i)) #8
          to label %if.then11.i [label %if.end14.i], !srcloc !291

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_internal_xfer.__UNIQUE_ID_ddebug306, ptr noundef %dev.i, ptr noundef nonnull @.str.27) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 21474800) #8
  br label %for.cond.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %ret.0.i5)
  %cmp15.not.i = icmp eq i32 %ret.0.i5, -6
  br i1 %cmp15.not.i, label %for.end.i.i2c_pxa_internal_xfer.exit_crit_edge, label %for.end.i.if.then16.i_crit_edge

for.end.i.if.then16.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

for.end.i.i2c_pxa_internal_xfer.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_pxa_internal_xfer.exit

if.then16.i:                                      ; preds = %for.end.i.if.then16.i_crit_edge, %if.end.i.thread.if.then16.i_crit_edge
  call fastcc void @i2c_pxa_scream_blue_murder(ptr noundef %1, ptr noundef nonnull @.str.28) #8
  br label %i2c_pxa_internal_xfer.exit

i2c_pxa_internal_xfer.exit:                       ; preds = %if.then16.i, %for.end.i.i2c_pxa_internal_xfer.exit_crit_edge, %i2c_pxa_do_xfer.exit.i2c_pxa_internal_xfer.exit_crit_edge
  %ret.0.i = phi i32 [ -121, %if.then16.i ], [ -121, %for.end.i.i2c_pxa_internal_xfer.exit_crit_edge ], [ %ret.0.i5, %i2c_pxa_do_xfer.exit.i2c_pxa_internal_xfer.exit_crit_edge ]
  call fastcc void @i2c_pxa_set_slave(ptr noundef %1, i32 noundef %ret.0.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_pxa_wait_bus_not_busy(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_isr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %0 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_isr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !289
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  %and21 = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not22 = icmp eq i32 %and21, 0
  br i1 %tobool.not22, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %reg_icr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %reg_ibmr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  br label %if.end

if.end:                                           ; preds = %i2c_pxa_show_state.exit.if.end_crit_edge, %if.end.lr.ph
  %4 = phi i32 [ %3, %if.end.lr.ph ], [ %20, %i2c_pxa_show_state.exit.if.end_crit_edge ]
  %timeout.023 = phi i32 [ 32, %if.end.lr.ph ], [ %dec, %i2c_pxa_show_state.exit.if.end_crit_edge ]
  %and2 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %add = add i32 %timeout.023, 4
  %spec.select = select i1 %tobool3.not, i32 %timeout.023, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool6.not = icmp eq i32 %spec.select, 0
  br i1 %tobool6.not, label %while.end, label %if.end8

if.end8:                                          ; preds = %if.end
  %dec = add i32 %spec.select, -1
  tail call void @msleep(i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_wait_bus_not_busy, %i2c_pxa_show_state.exit)) #8
          to label %if.then.i [label %i2c_pxa_show_state.exit], !srcloc !291

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_isr, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !289
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %9 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_icr.i, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !289
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  %13 = ptrtoint ptr %reg_ibmr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_ibmr.i, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !289
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.i2c_pxa_wait_bus_not_busy, i32 noundef 438, i32 noundef %8, i32 noundef %12, i32 noundef %16) #8
  br label %i2c_pxa_show_state.exit

i2c_pxa_show_state.exit:                          ; preds = %if.then.i, %if.end8
  %17 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_isr, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !289
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  %and = and i32 %20, 12
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %i2c_pxa_show_state.exit.cleanup_crit_edge, label %i2c_pxa_show_state.exit.if.end_crit_edge

i2c_pxa_show_state.exit.if.end_crit_edge:         ; preds = %i2c_pxa_show_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

i2c_pxa_show_state.exit.cleanup_crit_edge:        ; preds = %i2c_pxa_show_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_wait_bus_not_busy, %cleanup)) #8
          to label %if.then.i18 [label %cleanup], !srcloc !291

if.then.i18:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_isr, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !289
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %25 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_icr.i, align 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !289
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  %29 = ptrtoint ptr %reg_ibmr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_ibmr.i, align 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !289
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.i2c_pxa_wait_bus_not_busy, i32 noundef 441, i32 noundef %24, i32 noundef %28, i32 noundef %32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i18, %while.end, %i2c_pxa_show_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2000, %while.end ], [ -2000, %if.then.i18 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %i2c_pxa_show_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_pxa_set_master(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_set_master.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_set_master, %if.end6)) #8
          to label %if.then5 [label %if.end6], !srcloc !291

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_set_master.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.91) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %reg_isr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %0 = ptrtoint ptr %reg_isr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_isr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !353
  %3 = and i32 %2, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end6.do.body54_crit_edge, label %do.body11

if.end6.do.body54_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.body11:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_set_master.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_set_master, %do.end29)) #8
          to label %if.then25 [label %do.end29], !srcloc !291

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_set_master.__UNIQUE_ID_ddebug295, ptr noundef %dev27, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body11
  %call30 = tail call fastcc i32 @i2c_pxa_wait_master(ptr noundef %i2c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body33, label %do.end29.do.body54_crit_edge

do.end29.do.body54_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.body33:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_set_master.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_set_master, %return)) #8
          to label %if.then47 [label %return], !srcloc !291

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_set_master.__UNIQUE_ID_ddebug296, ptr noundef %dev49, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.90) #8
  br label %return

do.body54:                                        ; preds = %do.end29.do.body54_crit_edge, %if.end6.do.body54_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !354
  tail call void @arm_heavy_mb() #8
  %reg_icr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %4 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_icr, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !355
  %7 = or i32 %6, 536870912
  %8 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_icr, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !296
  br label %return

return:                                           ; preds = %do.body54, %if.then47, %do.body33
  %retval.0 = phi i32 [ 0, %do.body54 ], [ -2000, %if.then47 ], [ -2000, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_pxa_wait_master(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -400, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub133 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub133)
  %cmp134 = icmp slt i32 %sub133, 0
  br i1 %cmp134, label %if.end19.lr.ph, label %entry.do.body94_crit_edge

entry.do.body94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94

if.end19.lr.ph:                                   ; preds = %entry
  %reg_isr22 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %reg_ibmr62 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  br label %if.end19

if.end19:                                         ; preds = %if.end91.if.end19_crit_edge, %if.end19.lr.ph
  %2 = ptrtoint ptr %reg_isr22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_isr22, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !356
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool26.not = icmp eq i32 %5, 0
  br i1 %tobool26.not, label %if.end51, label %do.body30

do.body30:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_wait_master.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_wait_master, %cleanup)) #8
          to label %if.then44 [label %cleanup], !srcloc !291

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev46 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_wait_master.__UNIQUE_ID_ddebug291, ptr noundef %dev46, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end19
  %6 = ptrtoint ptr %reg_isr22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_isr22, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !357
  %9 = and i32 %8, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp59 = icmp eq i32 %9, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end51.if.end91_crit_edge

if.end51.if.end91_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.lhs.true:                                    ; preds = %if.end51
  %10 = ptrtoint ptr %reg_ibmr62 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_ibmr62, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %12)
  %cmp66 = icmp eq i32 %12, 50331648
  br i1 %cmp66, label %do.body70, label %land.lhs.true.if.end91_crit_edge

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.body70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_wait_master.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_wait_master, %cleanup)) #8
          to label %if.then84 [label %cleanup], !srcloc !291

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_wait_master.__UNIQUE_ID_ddebug292, ptr noundef %dev86, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.94) #8
  br label %cleanup

if.end91:                                         ; preds = %land.lhs.true.if.end91_crit_edge, %if.end51.if.end91_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %13
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end91.if.end19_crit_edge, label %if.end91.do.body94_crit_edge

if.end91.do.body94_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94

if.end91.if.end19_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body94:                                        ; preds = %if.end91.do.body94_crit_edge, %entry.do.body94_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_wait_master.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_wait_master, %cleanup)) #8
          to label %if.then108 [label %cleanup], !srcloc !291

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %dev110 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_wait_master.__UNIQUE_ID_ddebug293, ptr noundef %dev110, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.94) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %do.body94, %if.then84, %do.body70, %if.then44, %do.body30
  %retval.0 = phi i32 [ 1, %if.then84 ], [ 0, %if.then108 ], [ 0, %if.then44 ], [ 0, %do.body30 ], [ 1, %do.body70 ], [ 0, %do.body94 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pxa_slave_start(ptr noundef %i2c, i32 noundef %isr) unnamed_addr #2 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_slave_start.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_slave_start, %if.end6)) #8
          to label %if.then4 [label %if.end6], !srcloc !291

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %and = and i32 %isr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool5.not, i32 116, i32 114
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_slave_start.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.116, i32 noundef %cond) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry
  %slave = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %cmp7.not = icmp eq ptr %1, null
  br i1 %cmp7.not, label %if.end6.do.body21_crit_edge, label %if.then8

if.end6.do.body21_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

if.then8:                                         ; preds = %if.end6
  %and9 = and i32 %isr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #8
  %2 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %byte, align 1
  %slave_cb.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %slave_cb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slave_cb.i, align 8
  %call.i = call i32 %4(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %byte) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !359
  call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %byte, align 1
  %conv = zext i8 %6 to i32
  %7 = shl nuw i32 %conv, 24
  %reg_idbr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 16
  %8 = ptrtoint ptr %reg_idbr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_idbr, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !296
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #8
  br label %do.body21

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %slave_cb.i83 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %slave_cb.i83 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave_cb.i83, align 8
  %call.i84 = tail call i32 %11(ptr noundef nonnull %1, i32 noundef 1, ptr noundef null) #8
  br label %do.body21

do.body21:                                        ; preds = %if.else, %if.then11, %if.end6.do.body21_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !360
  call void @arm_heavy_mb() #8
  %reg_icr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %12 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_icr, align 8
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !361
  %15 = and i32 %14, -50331649
  %16 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_icr, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !296
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !362
  call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_icr, align 8
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !363
  %21 = or i32 %20, 134217728
  %22 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_icr, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !296
  %reg_ibmr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  br label %while.cond

while.cond:                                       ; preds = %if.end48.while.cond_crit_edge, %do.body21
  %timeout.0 = phi i32 [ 65536, %do.body21 ], [ %dec, %if.end48.while.cond_crit_edge ]
  %24 = ptrtoint ptr %reg_ibmr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_ibmr, align 8
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !364
  %27 = and i32 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp45.not = icmp eq i32 %27, 0
  br i1 %cmp45.not, label %if.end48, label %while.cond.do.body58_crit_edge

while.cond.do.body58_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

if.end48:                                         ; preds = %while.cond
  %dec = add nsw i32 %timeout.0, -1
  %cmp49 = icmp eq i32 %dec, 0
  br i1 %cmp49, label %do.end54, label %if.end48.while.cond_crit_edge

if.end48.while.cond_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.117) #11
  br label %do.body58

do.body58:                                        ; preds = %do.end54, %while.cond.do.body58_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !365
  call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_icr, align 8
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !366
  %31 = and i32 %30, -536870913
  %32 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_icr, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pxa_irq_txempty(ptr noundef %i2c, i32 noundef %isr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_icr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %0 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_icr, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !367
  %3 = and i32 %2, -251658241
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and2 = and i32 %isr, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %and3 = and i32 %isr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %msg = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 2
  %and8 = and i32 %isr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %and22 = and i32 %isr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %msg_ptr39 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 5
  %msg_idx71 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 4
  %msg_num72 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 3
  br i1 %tobool.not, label %entry.again_crit_edge, label %if.then

entry.again_crit_edge:                            ; preds = %entry
  br label %again

again:                                            ; preds = %if.then76.again_crit_edge, %entry.again_crit_edge
  br i1 %tobool4.not, label %again.if.else21_crit_edge, label %land.lhs.true

again.if.else21_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i2c_pxa_scream_blue_murder(ptr noundef %i2c, ptr noundef nonnull @.str.121)
  br label %cleanup

land.lhs.true:                                    ; preds = %again
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  %9 = and i16 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not = icmp eq i16 %9, 0
  %or.cond = or i1 %tobool9.not, %tobool6.not
  br i1 %or.cond, label %if.then10, label %land.lhs.true.if.else21_crit_edge

land.lhs.true.if.else21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else21

if.then10:                                        ; preds = %land.lhs.true
  br i1 %tobool9.not, label %if.then10.if.end20_crit_edge, label %if.then13

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then13:                                        ; preds = %if.then10
  %10 = ptrtoint ptr %msg_ptr39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_ptr39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.lhs.true15, label %if.then13.if.else_crit_edge

if.then13.if.else_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true15:                                  ; preds = %if.then13
  %12 = ptrtoint ptr %msg_idx71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_idx71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16 = icmp eq i32 %13, 0
  br i1 %cmp16, label %land.lhs.true15.if.end20_crit_edge, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %if.then13.if.else_crit_edge
  br label %if.end20

if.end20:                                         ; preds = %if.else, %land.lhs.true15.if.end20_crit_edge, %if.then10.if.end20_crit_edge
  %ret.0 = phi i32 [ -111, %if.else ], [ -121, %if.then10.if.end20_crit_edge ], [ -6, %land.lhs.true15.if.end20_crit_edge ]
  %14 = ptrtoint ptr %msg_ptr39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_ptr39, align 4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %msg, align 8
  %16 = ptrtoint ptr %msg_num72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %msg_num72, align 4
  %17 = ptrtoint ptr %msg_idx71 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %ret.0, ptr %msg_idx71, align 8
  %use_pio.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 25
  %18 = ptrtoint ptr %use_pio.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %use_pio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end20.if.end110_crit_edge

if.end20.if.end110_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then3.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %wait.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end110

if.else21:                                        ; preds = %land.lhs.true.if.else21_crit_edge, %again.if.else21_crit_edge
  %19 = ptrtoint ptr %msg_ptr39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_ptr39, align 4
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg, align 8
  %len41 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %len41 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len41, align 4
  %conv42 = zext i16 %24 to i32
  br i1 %tobool23.not, label %if.else38, label %if.then24

if.then24:                                        ; preds = %if.else21
  %conv42.le = zext i16 %24 to i32
  %sub = add nsw i32 %conv42.le, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub)
  %cmp28 = icmp eq i32 %20, %sub
  br i1 %cmp28, label %land.lhs.true30, label %if.then24.if.end36_crit_edge

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true30:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %msg_idx71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_idx71, align 8
  %27 = ptrtoint ptr %msg_num72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_num72, align 4
  %sub32 = add i32 %28, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub32)
  %cmp33 = icmp eq i32 %26, %sub32
  %or = or i32 %4, 6
  %spec.select = select i1 %cmp33, i32 %or, i32 %4
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true30, %if.then24.if.end36_crit_edge
  %icr.0 = phi i32 [ %4, %if.then24.if.end36_crit_edge ], [ %spec.select, %land.lhs.true30 ]
  %or37 = or i32 %icr.0, 4104
  br label %if.end110

if.else38:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv42)
  %cmp43 = icmp ult i32 %20, %conv42
  br i1 %cmp43, label %do.body, label %if.else70

do.body:                                          ; preds = %if.else38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msg, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf, align 4
  %33 = ptrtoint ptr %msg_ptr39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_ptr39, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %msg_ptr39, align 4
  %arrayidx = getelementptr i8, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %conv48 = zext i8 %36 to i32
  %37 = shl nuw i32 %conv48, 24
  %reg_idbr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 16
  %38 = ptrtoint ptr %reg_idbr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_idbr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !296
  %or49 = or i32 %4, 4104
  %40 = ptrtoint ptr %msg_ptr39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_ptr39, align 4
  %42 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %msg, align 8
  %len52 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %len52 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len52, align 4
  %conv53 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv53)
  %cmp54 = icmp eq i32 %41, %conv53
  br i1 %cmp54, label %land.lhs.true56, label %do.body.if.end110_crit_edge

do.body.if.end110_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

land.lhs.true56:                                  ; preds = %do.body
  %flags58 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %flags58 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %47)
  %tobool61.not = icmp sgt i16 %47, -1
  br i1 %tobool61.not, label %lor.lhs.false, label %land.lhs.true56.if.then67_crit_edge

land.lhs.true56.if.then67_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false:                                    ; preds = %land.lhs.true56
  %48 = ptrtoint ptr %msg_idx71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_idx71, align 8
  %50 = ptrtoint ptr %msg_num72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_num72, align 4
  %sub64 = add i32 %51, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %sub64)
  %cmp65 = icmp eq i32 %49, %sub64
  br i1 %cmp65, label %lor.lhs.false.if.then67_crit_edge, label %lor.lhs.false.if.end110_crit_edge

lor.lhs.false.if.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false.if.then67_crit_edge, %land.lhs.true56.if.then67_crit_edge
  %or68 = or i32 %4, 4106
  br label %if.end110

if.else70:                                        ; preds = %if.else38
  %52 = ptrtoint ptr %msg_idx71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_idx71, align 8
  %54 = ptrtoint ptr %msg_num72 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_num72, align 4
  %sub73 = add i32 %55, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub73)
  %cmp74 = icmp ult i32 %53, %sub73
  br i1 %cmp74, label %if.then76, label %if.else98

if.then76:                                        ; preds = %if.else70
  %56 = ptrtoint ptr %msg_ptr39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %msg_ptr39, align 4
  %inc79 = add nuw i32 %53, 1
  %57 = ptrtoint ptr %msg_idx71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc79, ptr %msg_idx71, align 8
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %22, i32 1
  %58 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %incdec.ptr, ptr %msg, align 8
  %flags82 = getelementptr %struct.i2c_msg, ptr %22, i32 1, i32 1
  %59 = ptrtoint ptr %flags82 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags82, align 2
  %61 = and i16 %60, 16384
  %tobool85.not = icmp eq i16 %61, 0
  br i1 %tobool85.not, label %if.end87, label %if.then76.again_crit_edge

if.then76.again_crit_edge:                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

if.end87:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %flags82.le = getelementptr %struct.i2c_msg, ptr %22, i32 1, i32 1
  %62 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %incdec.ptr, align 4
  %conv.i = zext i16 %63 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %64 = ptrtoint ptr %flags82.le to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %flags82.le, align 2
  %66 = and i16 %65, 1
  %67 = zext i16 %66 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv90 = or i32 %shl.i.masked, %67
  %req_slave_addr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 7
  %68 = ptrtoint ptr %req_slave_addr to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv90, ptr %req_slave_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %req_slave_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %req_slave_addr, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %reg_idbr95 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 16
  %72 = ptrtoint ptr %reg_idbr95 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_idbr95, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #8, !srcloc !296
  %and96 = and i32 %4, -4112
  %or97 = or i32 %and96, 9
  br label %if.end110

if.else98:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp102 = icmp eq i16 %24, 0
  %or105 = or i32 %4, 16
  %spec.select164 = select i1 %cmp102, i32 %or105, i32 %4
  %74 = ptrtoint ptr %msg_ptr39 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %msg_ptr39, align 4
  %75 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %msg, align 8
  %inc.i168 = add i32 %53, 1
  %76 = ptrtoint ptr %msg_idx71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %inc.i168, ptr %msg_idx71, align 8
  %77 = ptrtoint ptr %msg_num72 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %msg_num72, align 4
  %use_pio.i170 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 25
  %78 = ptrtoint ptr %use_pio.i170 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i171 = load i8, ptr %use_pio.i170, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i171)
  %tobool2.not.i172 = icmp sgt i8 %bf.load.i171, -1
  br i1 %tobool2.not.i172, label %if.then3.i174, label %if.else98.if.end110_crit_edge

if.else98.if.end110_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then3.i174:                                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  %wait.i173 = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait.i173, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then3.i174, %if.else98.if.end110_crit_edge, %if.end87, %if.then67, %lor.lhs.false.if.end110_crit_edge, %do.body.if.end110_crit_edge, %if.end36, %if.then3.i, %if.end20.if.end110_crit_edge
  %icr.2 = phi i32 [ %or37, %if.end36 ], [ %or68, %if.then67 ], [ %or49, %lor.lhs.false.if.end110_crit_edge ], [ %or49, %do.body.if.end110_crit_edge ], [ %or97, %if.end87 ], [ %4, %if.end20.if.end110_crit_edge ], [ %4, %if.then3.i ], [ %spec.select164, %if.else98.if.end110_crit_edge ], [ %spec.select164, %if.then3.i174 ]
  %irqlogidx = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 11
  %79 = ptrtoint ptr %irqlogidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irqlogidx, align 8
  %sub111 = add i32 %80, -1
  %arrayidx112 = getelementptr %struct.pxa_i2c, ptr %i2c, i32 0, i32 13, i32 %sub111
  %81 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %icr.2, ptr %arrayidx112, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !370
  tail call void @arm_heavy_mb() #8
  %82 = tail call i32 @llvm.bswap.i32(i32 %icr.2)
  %83 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_icr, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #8, !srcloc !296
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_irq_txempty, %cleanup)) #8
          to label %if.then.i [label %cleanup], !srcloc !291

if.then.i:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %reg_isr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  %85 = ptrtoint ptr %reg_isr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_isr.i, align 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8, !srcloc !289
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %89 = ptrtoint ptr %reg_icr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg_icr, align 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #8, !srcloc !289
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  %reg_ibmr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  %93 = ptrtoint ptr %reg_ibmr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_ibmr.i, align 8
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #8, !srcloc !289
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.i2c_pxa_irq_txempty, i32 noundef 963, i32 noundef %88, i32 noundef %92, i32 noundef %96) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end110, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pxa_abort(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_icr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 17
  %0 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_icr.i, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  %3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %do.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %reg_ibmr = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 15
  %dev.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  %reg_isr.i = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 18
  br label %land.rhs

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_abort.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_abort, %cleanup)) #8
          to label %if.then6 [label %cleanup], !srcloc !291

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pxa_i2c, ptr %i2c, i32 0, i32 8, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_abort.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.124) #8
  br label %cleanup

land.rhs:                                         ; preds = %i2c_pxa_show_state.exit.land.rhs_crit_edge, %while.cond.preheader
  %i.045 = phi i32 [ 250, %while.cond.preheader ], [ %dec, %i2c_pxa_show_state.exit.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %reg_ibmr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_ibmr, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !371
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %while.body, label %land.rhs.do.body22_crit_edge

land.rhs.do.body22_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_icr.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !372
  %11 = and i32 %10, -251658241
  %12 = or i32 %11, 234881024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_icr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !296
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pxa_abort, %i2c_pxa_show_state.exit)) #8
          to label %if.then.i [label %i2c_pxa_show_state.exit], !srcloc !291

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %reg_isr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_isr.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !289
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %19 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_icr.i, align 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !289
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  %23 = ptrtoint ptr %reg_ibmr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_ibmr, align 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !289
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.124, i32 noundef 411, i32 noundef %18, i32 noundef %22, i32 noundef %26) #8
  br label %i2c_pxa_show_state.exit

i2c_pxa_show_state.exit:                          ; preds = %if.then.i, %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  %dec = add nsw i32 %i.045, -1
  %cmp = icmp ugt i32 %i.045, 1
  br i1 %cmp, label %i2c_pxa_show_state.exit.land.rhs_crit_edge, label %i2c_pxa_show_state.exit.do.body22_crit_edge

i2c_pxa_show_state.exit.do.body22_crit_edge:      ; preds = %i2c_pxa_show_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

i2c_pxa_show_state.exit.land.rhs_crit_edge:       ; preds = %i2c_pxa_show_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.body22:                                        ; preds = %i2c_pxa_show_state.exit.do.body22_crit_edge, %land.rhs.do.body22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_icr.i, align 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !375
  %31 = and i32 %30, -318767105
  %32 = ptrtoint ptr %reg_icr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_icr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #8, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pxa_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.pxa_i2c, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  tail call fastcc void @i2c_pxa_reset(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !103, !104, !106, !107, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !128, !130, !132, !134, !136, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !159, !161, !163, !165, !166, !167, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !186, !188, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !206, !208, !209, !210, !212, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !259, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !274, !276, !278}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @__UNIQUE_ID_file309, !1, !"__UNIQUE_ID_file309", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1549, i32 1}
!2 = !{ptr @__UNIQUE_ID_license310, !1, !"__UNIQUE_ID_license310", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_i2c_pxa__311_1551_i2c_adap_pxa_init4, !4, !"__initcall__kmod_i2c_pxa__311_1551_i2c_adap_pxa_init4", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1551, i32 1}
!5 = !{ptr @__exitcall_i2c_adap_pxa_exit, !6, !"__exitcall_i2c_adap_pxa_exit", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1552, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1532, i32 11}
!9 = !{ptr @i2c_pxa_driver, !10, !"i2c_pxa_driver", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1528, i32 31}
!11 = !{ptr @i2c_pxa_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1403, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @i2c_pxa_probe.__key.2, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1404, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1406, i32 26}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1410, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @i2c_pxa_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @i2c_pxa_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1444, i32 4}
!29 = !{ptr @i2c_pxa_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @i2c_pxa_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1447, i32 4}
!33 = !{ptr @i2c_pxa_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @i2c_pxa_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1461, i32 4}
!37 = !{ptr @i2c_pxa_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @i2c_pxa_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1475, i32 2}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @i2c_pxa_probe._entry.19, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @i2c_pxa_probe._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1264, i32 26}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1266, i32 26}
!48 = !{ptr @pxa_reg_layout, !49, !"pxa_reg_layout", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 155, i32 30}
!50 = !{ptr @i2c_pxa_pio_algorithm, !51, !"i2c_pxa_pio_algorithm", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1242, i32 35}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1127, i32 4}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @i2c_pxa_internal_xfer.__UNIQUE_ID_ddebug306, !53, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1131, i32 35}
!59 = distinct !{null, !60, !"i2c_debug", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 348, i32 21}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 363, i32 2}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @i2c_pxa_scream_blue_murder._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @i2c_pxa_scream_blue_murder._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 365, i32 2}
!68 = !{ptr @i2c_pxa_scream_blue_murder._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @i2c_pxa_scream_blue_murder._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 367, i32 2}
!72 = !{ptr @i2c_pxa_scream_blue_murder._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @i2c_pxa_scream_blue_murder._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 370, i32 2}
!76 = !{ptr @i2c_pxa_scream_blue_murder._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @i2c_pxa_scream_blue_murder._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 372, i32 3}
!80 = !{ptr @i2c_pxa_scream_blue_murder._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @i2c_pxa_scream_blue_murder._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 373, i32 2}
!84 = !{ptr @i2c_pxa_scream_blue_murder._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @i2c_pxa_scream_blue_murder._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @__func__.i2c_pxa_set_slave, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 534, i32 2}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 548, i32 4}
!90 = !{ptr @i2c_pxa_set_slave._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @i2c_pxa_set_slave._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 558, i32 3}
!94 = !{ptr @i2c_pxa_set_slave.__UNIQUE_ID_ddebug300, !93, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 352, i32 2}
!97 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @i2c_pxa_show_state.__UNIQUE_ID_ddebug288, !96, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!99 = !{ptr @__func__.i2c_pxa_wait_slave, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 505, i32 2}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 509, i32 4}
!103 = distinct !{null, !102, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 516, i32 5}
!106 = distinct !{null, !105, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 524, i32 3}
!109 = !{ptr @i2c_pxa_wait_slave.__UNIQUE_ID_ddebug299, !108, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 344, i32 14}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 294, i32 2}
!114 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @decode_bits._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @decode_bits._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 298, i32 4}
!119 = !{ptr @decode_bits._entry.56, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @decode_bits._entry_ptr.58, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @decode_bits._entry.59, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 301, i32 2}
!123 = !{ptr @decode_bits._entry_ptr.60, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 324, i32 2}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 325, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 326, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 327, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 328, i32 2}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 329, i32 2}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 330, i32 2}
!139 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 331, i32 2}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 332, i32 2}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 333, i32 2}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 334, i32 2}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 335, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 336, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 337, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 338, i32 2}
!156 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @icr_bits, !158, !"icr_bits", i1 false, i1 false}
!158 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 323, i32 26}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1220, i32 35}
!161 = !{ptr @__func__.i2c_pxa_pio_set_master, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1174, i32 3}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1175, i32 3}
!165 = !{ptr @i2c_pxa_pio_set_master._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @i2c_pxa_pio_set_master._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @i2c_pxa_algorithm, !168, !"i2c_pxa_algorithm", i1 false, i1 false}
!168 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1152, i32 35}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1057, i32 3}
!171 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @i2c_pxa_do_xfer._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @i2c_pxa_do_xfer._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1067, i32 3}
!176 = !{ptr @i2c_pxa_do_xfer._entry.83, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @i2c_pxa_do_xfer._entry_ptr.85, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1074, i32 4}
!180 = !{ptr @i2c_pxa_do_xfer._entry.86, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @i2c_pxa_do_xfer._entry_ptr.88, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1103, i32 35}
!184 = !{ptr @__func__.i2c_pxa_wait_bus_not_busy, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 438, i32 3}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 484, i32 3}
!188 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @i2c_pxa_set_master.__UNIQUE_ID_ddebug294, !187, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 487, i32 3}
!192 = !{ptr @i2c_pxa_set_master.__UNIQUE_ID_ddebug295, !191, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 489, i32 4}
!195 = !{ptr @i2c_pxa_set_master.__UNIQUE_ID_ddebug296, !194, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 452, i32 4}
!198 = distinct !{null, !197, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 457, i32 5}
!201 = !{ptr @i2c_pxa_wait_master.__UNIQUE_ID_ddebug291, !200, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!202 = !{ptr @i2c_pxa_wait_master.__UNIQUE_ID_ddebug292, !203, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!203 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 468, i32 5}
!204 = !{ptr @i2c_pxa_wait_master.__UNIQUE_ID_ddebug293, !205, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!205 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 476, i32 3}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1004, i32 3}
!208 = distinct !{null, !207, !"<string literal>", i1 false, i1 false}
!209 = distinct !{null, !207, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1038, i32 35}
!212 = distinct !{null, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 320, i32 14}
!214 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 305, i32 2}
!216 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!217 = distinct !{null, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 306, i32 2}
!219 = distinct !{null, !218, !"<string literal>", i1 false, i1 false}
!220 = distinct !{null, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 307, i32 2}
!222 = distinct !{null, !221, !"<string literal>", i1 false, i1 false}
!223 = distinct !{null, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 308, i32 2}
!225 = distinct !{null, !224, !"<string literal>", i1 false, i1 false}
!226 = distinct !{null, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 309, i32 2}
!228 = distinct !{null, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 310, i32 2}
!230 = distinct !{null, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 311, i32 2}
!232 = distinct !{null, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 312, i32 2}
!234 = distinct !{null, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 313, i32 2}
!236 = distinct !{null, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 314, i32 2}
!238 = distinct !{null, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 315, i32 2}
!240 = distinct !{null, !241, !"isr_bits", i1 false, i1 false}
!241 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 304, i32 26}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 642, i32 3}
!244 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @i2c_pxa_slave_start.__UNIQUE_ID_ddebug302, !243, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 675, i32 4}
!248 = !{ptr @i2c_pxa_slave_start._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @i2c_pxa_slave_start._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = distinct !{null, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 686, i32 3}
!252 = distinct !{null, !251, !"<string literal>", i1 false, i1 false}
!253 = distinct !{null, !251, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!254 = distinct !{null, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 692, i32 3}
!256 = distinct !{null, !255, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!257 = !{ptr @.str.121, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 872, i32 35}
!259 = !{ptr @__func__.i2c_pxa_irq_txempty, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 963, i32 2}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 597, i32 2}
!263 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @i2c_pxa_reset.__UNIQUE_ID_ddebug301, !262, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 399, i32 3}
!267 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @i2c_pxa_abort.__UNIQUE_ID_ddebug289, !266, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 581, i32 2}
!271 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @i2c_pxa_do_reset._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @i2c_pxa_do_reset._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @i2c_pxa_dt_ids, !275, !"i2c_pxa_dt_ids", i1 false, i1 false}
!275 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 205, i32 34}
!276 = !{ptr @i2c_pxa_dev_pm_ops, !277, !"i2c_pxa_dev_pm_ops", i1 false, i1 false}
!277 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 1518, i32 32}
!278 = !{ptr @i2c_pxa_id_table, !279, !"i2c_pxa_id_table", i1 false, i1 false}
!279 = !{!"../drivers/i2c/busses/i2c-pxa.c", i32 214, i32 40}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{i64 6924880}
!290 = !{i64 2155795791}
!291 = !{i64 2148757606, i64 2148757611, i64 2148757624, i64 2148757668, i64 2148757702, i64 2148757723}
!292 = !{i64 2155680434}
!293 = !{i64 2155680945}
!294 = !{i64 2155681461}
!295 = !{i64 2155800389}
!296 = !{i64 6924462}
!297 = !{i64 2155693714}
!298 = !{i64 2155763467}
!299 = !{i64 2155764659}
!300 = !{i64 2155765580}
!301 = !{i64 2155766119}
!302 = !{i64 2155767143}
!303 = !{i64 2155768064}
!304 = !{i8 0, i8 2}
!305 = !{i64 2155794279}
!306 = !{i64 2155794831}
!307 = !{i64 2155795104}
!308 = !{i64 2155748220}
!309 = !{i64 2155748658}
!310 = !{i64 2155749856}
!311 = !{i64 2155750783}
!312 = !{i64 2155751599}
!313 = !{i64 2155752242}
!314 = !{i64 2155753724}
!315 = !{i64 2155754699}
!316 = !{i64 2155757387}
!317 = !{i64 2155758358}
!318 = !{i64 2155759418}
!319 = !{i64 2155760339}
!320 = !{i64 2155821595}
!321 = !{i64 2155785599}
!322 = !{i64 2155786335}
!323 = !{i64 2155786630}
!324 = !{i64 2155787552}
!325 = !{i64 2155787833}
!326 = !{i64 2155783981}
!327 = !{!"branch_weights", i32 1, i32 2000}
!328 = !{i64 2155784951}
!329 = !{i64 2155687285}
!330 = !{i64 2155687801}
!331 = !{i64 2155688312}
!332 = !{i64 2155688823}
!333 = !{i64 2155735863}
!334 = !{i64 2155737434}
!335 = !{i64 2155738359}
!336 = !{i64 2155741018}
!337 = !{i64 2155741993}
!338 = !{i64 2155743057}
!339 = !{i64 2155743982}
!340 = !{i64 2155746946}
!341 = !{i64 2155747457}
!342 = !{i64 2155747968}
!343 = !{i64 2155729226}
!344 = !{i64 2155729755}
!345 = !{i64 2155730275}
!346 = !{i64 2155816088}
!347 = !{i64 2155819590}
!348 = !{i64 2155820511}
!349 = !{i64 2155788260}
!350 = !{i64 2155788987}
!351 = !{i64 2155789279}
!352 = !{i64 2155701485}
!353 = !{i64 2155717427}
!354 = !{i64 2155723041}
!355 = !{i64 2155723962}
!356 = !{i64 2155706813}
!357 = !{i64 2155709621}
!358 = !{i64 2155710155}
!359 = !{i64 2155770756}
!360 = !{i64 2155771985}
!361 = !{i64 2155772938}
!362 = !{i64 2155773989}
!363 = !{i64 2155774910}
!364 = !{i64 2155775449}
!365 = !{i64 2155778139}
!366 = !{i64 2155779064}
!367 = !{i64 2155792053}
!368 = !{i64 2155792491}
!369 = !{i64 2155793042}
!370 = !{i64 2155793540}
!371 = !{i64 2155696581}
!372 = !{i64 2155697101}
!373 = !{i64 2155697373}
!374 = !{i64 2155699946}
!375 = !{i64 2155700921}
