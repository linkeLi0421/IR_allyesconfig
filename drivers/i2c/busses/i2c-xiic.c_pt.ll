; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-xiic.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-xiic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xiic_i2c = type { ptr, ptr, %struct.completion, %struct.i2c_adapter, ptr, %struct.mutex, i32, i32, ptr, i32, i32, ptr, i32, i8 }
%struct.xiic_i2c_platform_data = type { i8, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_xiic__306_911_xiic_i2c_driver_init6 = internal global ptr @xiic_i2c_driver_init, section ".initcall6.init", align 4
@xiic_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xiic_i2c_probe, ptr @xiic_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xiic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xiic_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xiic_i2c_driver_exit = internal global ptr @xiic_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [37 x i8] c"i2c_xiic.author=info@mocean-labs.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [43 x i8] c"i2c_xiic.description=Xilinx I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [42 x i8] c"i2c_xiic.file=drivers/i2c/busses/i2c-xiic\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [24 x i8] c"i2c_xiic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias311 = internal constant [33 x i8] c"i2c_xiic.alias=platform:xiic-i2c\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xiic-i2c\00", [23 x i8] zeroinitializer }, align 32
@xiic_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-iic-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xiic_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xiic_i2c_runtime_suspend, ptr @xiic_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@xiic_adapter = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 256, ptr @xiic_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"xiic-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @xiic_quirks, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@xiic_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"input clock not found.\0A\00", [40 x i8] zeroinitializer }, align 32
@xiic_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 784, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xiic_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-xiic.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xiic_i2c_probe._entry_ptr = internal global ptr @xiic_i2c_probe._entry, section ".printk_index", align 4
@xiic_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 797, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cannot claim IRQ\0A\00", [46 x i8] zeroinitializer }, align 32
@xiic_i2c_probe._entry_ptr.10 = internal global ptr @xiic_i2c_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"single-master\00", [18 x i8] zeroinitializer }, align 32
@xiic_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 818, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot xiic_reinit\0A\00", [44 x i8] zeroinitializer }, align 32
@xiic_i2c_probe._entry_ptr.14 = internal global ptr @xiic_i2c_probe._entry.12, section ".printk_index", align 4
@xiic_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @xiic_xfer, ptr null, ptr null, ptr null, ptr @xiic_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xiic_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 0, i32 0, i16 0, i16 255, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@xiic_xfer.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.5, ptr @.str.17, i8 0, i8 -84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_xiic\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xiic_xfer\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s entry SR: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@xiic_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 697, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error xiic_start_xfer\0A\00", [41 x i8] zeroinitializer }, align 32
@xiic_xfer._entry_ptr = internal global ptr @xiic_xfer._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__xiic_start_xfer.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__xiic_start_xfer\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s entry, msg: %p, fifos space: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@xiic_start_send.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 -103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xiic_start_send\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s entry, msg: %p, len: %d\00", [37 x i8] zeroinitializer }, align 32
@xiic_start_send.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.22, ptr @.str.5, ptr @.str.24, i8 0, i8 -102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s entry, ISR: 0x%x, CR: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@xiic_fill_tx_fifo.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xiic_fill_tx_fifo\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s entry, len: %d, fifo space: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@xiic_fill_tx_fifo.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.25, ptr @.str.5, ptr @.str.27, i8 0, i8 90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s TX STOP\0A\00", [20 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xiic_process\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: IER: 0x%x, ISR: 0x%x, pend: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.30, i8 0, i8 99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: SR: 0x%x, msg: %p, nmsgs: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.31, i8 0, i8 103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s error\0A\00", [22 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.32, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s unexpected RX IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.33, i8 0, i8 112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s end of message, nmsgs: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.34, i8 0, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s will start next...\0A\00", [41 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.35, i8 0, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s unexpected TX IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.36, i8 0, i8 125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s end of message sent, nmsgs: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.37, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Got TX IRQ but no more to do...\0A\00", [60 x i8] zeroinitializer }, align 32
@xiic_process.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.28, ptr @.str.5, ptr @.str.38, i8 0, i8 -126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s clr: 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xiic_clear_rx_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 268, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to clear rx fifo\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xiic_clear_rx_fifo\00", [45 x i8] zeroinitializer }, align 32
@xiic_clear_rx_fifo._entry_ptr = internal global ptr @xiic_clear_rx_fifo._entry, section ".printk_index", align 4
@xiic_read_rx.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 0, i8 81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xiic_read_rx\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s entry, bytes in fifo: %d, msg: %d, SR: 0x%x, CR: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@xiic_i2c_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 890, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot enable clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xiic_i2c_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@xiic_i2c_runtime_resume._entry_ptr = internal global ptr @xiic_i2c_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"xiic_i2c_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 901, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 905, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"xiic_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 867, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"xiic_dev_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 897, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"xiic_adapter\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 735, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 775, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 780, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 784, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 797, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 802, i32 44 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 818, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"xiic_algorithm\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 726, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"xiic_quirks\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 731, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 688, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 697, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 87, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 641, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 612, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 614, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 353, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 361, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 395, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 397, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 412, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 434, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 448, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 459, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 490, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 499, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 509, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 520, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 268, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 322, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-xiic.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 890, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias311, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_xiic_i2c_driver_exit, ptr @__initcall__kmod_i2c_xiic__306_911_xiic_i2c_driver_init6, ptr @xiic_clear_rx_fifo._entry, ptr @xiic_clear_rx_fifo._entry_ptr, ptr @xiic_i2c_driver_exit, ptr @xiic_i2c_probe._entry, ptr @xiic_i2c_probe._entry.12, ptr @xiic_i2c_probe._entry.8, ptr @xiic_i2c_probe._entry_ptr, ptr @xiic_i2c_probe._entry_ptr.10, ptr @xiic_i2c_probe._entry_ptr.14, ptr @xiic_i2c_runtime_resume._entry, ptr @xiic_i2c_runtime_resume._entry_ptr, ptr @xiic_xfer._entry, ptr @xiic_xfer._entry_ptr, ptr @xiic_i2c_driver, ptr @.str, ptr @xiic_of_match, ptr @xiic_dev_pm_ops, ptr @xiic_adapter, ptr @xiic_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @xiic_algorithm, ptr @xiic_quirks, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_clear_rx_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xiic_i2c_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xiic_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xiic_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xiic_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @xiic_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xiic_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1552, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #8
  %base = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %adap, ptr @xiic_adapter, i32 1360)
  %driver_data.i.i157 = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 3, i32 9, i32 8
  %6 = ptrtoint ptr %driver_data.i.i157 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i157, align 4
  %parent = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 3, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %of_node22 = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 3, i32 9, i32 27
  %10 = ptrtoint ptr %of_node22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %of_node22, align 8
  %lock = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @xiic_i2c_probe.__key) #8
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call24, ptr %clk, align 4
  %cmp.i158 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call24 to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end12
  %call.i159 = tail call i32 @clk_prepare(ptr noundef %call24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.do.end39_crit_edge

if.end32.do.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %call24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call24) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then3.i, %if.end32.do.end39_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i159, %if.end32.do.end39_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end41:                                         ; preds = %if.end.i
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %call.i, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %15, i1 noundef zeroext true) #8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  %call.i160 = tail call i32 @__pm_runtime_set_status(ptr noundef %17, i32 noundef 0) #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %19) #8
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %call50 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call10, ptr noundef null, ptr noundef nonnull @xiic_process, i32 noundef 8192, ptr noundef %21, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %xiic_setreg32.exit

do.end55:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %err_clk_dis

xiic_setreg32.exit:                               ; preds = %if.end41
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call.i161 = tail call ptr @of_find_property(ptr noundef %23, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i161, null
  %singlemaster = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 13
  %frombool = zext i1 %tobool.i to i8
  %24 = ptrtoint ptr %singlemaster to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %singlemaster, align 4
  %endianness = getelementptr inbounds %struct.xiic_i2c, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %endianness to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %endianness, align 8
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #8, !srcloc !134
  %28 = ptrtoint ptr %endianness to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %endianness, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i165 = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr.i167 = getelementptr i8, ptr %31, i32 260
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #8
  br i1 %cmp.i165, label %if.then.i168, label %if.else.i

if.then.i168:                                     ; preds = %xiic_setreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit

if.else.i:                                        ; preds = %xiic_setreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit

xiic_getreg32.exit:                               ; preds = %if.else.i, %if.then.i168
  %ret.0.i = phi i32 [ %33, %if.then.i168 ], [ %32, %if.else.i ]
  %and = and i32 %ret.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %if.then63, label %xiic_getreg32.exit.if.end65_crit_edge

xiic_getreg32.exit.if.end65_crit_edge:            ; preds = %xiic_getreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %xiic_getreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %endianness to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %endianness, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %xiic_getreg32.exit.if.end65_crit_edge
  %call66 = tail call fastcc i32 @xiic_reinit(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %if.end73

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %err_clk_dis

if.end73:                                         ; preds = %if.end65
  %call75 = tail call i32 @i2c_add_adapter(ptr noundef %adap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xiic_deinit(ptr noundef nonnull %call.i)
  br label %err_clk_dis

if.end78:                                         ; preds = %if.end73
  %tobool79.not = icmp eq ptr %3, null
  br i1 %tobool79.not, label %if.end78.cleanup_crit_edge, label %for.cond.preheader

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end78
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp82174.not = icmp eq i8 %36, 0
  br i1 %cmp82174.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %devices = getelementptr inbounds %struct.xiic_i2c_platform_data, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %37 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devices, align 4
  %add.ptr = getelementptr %struct.i2c_board_info, ptr %38, i32 %indvars.iv
  %call86 = tail call ptr @i2c_new_client_device(ptr noundef %adap, ptr noundef %add.ptr) #8
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %3, align 4
  %41 = zext i8 %40 to i32
  %cmp82 = icmp ult i32 %indvars.iv.next, %41
  br i1 %cmp82, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_clk_dis:                                      ; preds = %if.then77, %do.end71, %do.end55
  %ret.0 = phi i32 [ %call50, %do.end55 ], [ %call66, %do.end71 ], [ %call75, %if.then77 ]
  %call.i170 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %43) #8
  tail call void @clk_unprepare(ptr noundef %43) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clk_dis, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %do.end39, %if.then27, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %call31, %if.then27 ], [ %retval.0.i.ph, %do.end39 ], [ %ret.0, %err_clk_dis ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xiic_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !138
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xiic_deinit(ptr noundef %1)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call.i17 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 4) #8
  %clk = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev4, i1 noundef zeroext true) #8
  %call.i18 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev4, i32 noundef 2) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev4, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xiic_process(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %endianness.i = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %base.i = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit

xiic_getreg32.exit:                               ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %5, %if.then.i ], [ %4, %if.else.i ]
  %6 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i447 = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i449 = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i449) #8
  br i1 %cmp.i447, label %if.then.i450, label %if.else.i451

if.then.i450:                                     ; preds = %xiic_getreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit453

if.else.i451:                                     ; preds = %xiic_getreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit453

xiic_getreg32.exit453:                            ; preds = %if.else.i451, %if.then.i450
  %ret.0.i452 = phi i32 [ %11, %if.then.i450 ], [ %10, %if.else.i451 ]
  %and = and i32 %ret.0.i452, %ret.0.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.body6)) #8
          to label %if.then [label %do.body6], !srcloc !140

if.then:                                          ; preds = %xiic_getreg32.exit453
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug292, ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %ret.0.i452, i32 noundef %ret.0.i, i32 noundef %and) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %xiic_getreg32.exit453
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.end27)) #8
          to label %if.then20 [label %do.end27], !srcloc !140

if.then20:                                        ; preds = %do.body6
  %parent23 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %14 = ptrtoint ptr %parent23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent23, align 8
  %16 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i455 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i455, label %if.then.i458, label %if.else.i459

if.then.i458:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i457 = getelementptr i8, ptr %19, i32 260
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i457) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

if.else.i459:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i = getelementptr i8, ptr %19, i32 263
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

xiic_getreg8.exit:                                ; preds = %if.else.i459, %if.then.i458
  %ret.0.i460 = phi i8 [ %20, %if.then.i458 ], [ %21, %if.else.i459 ]
  %conv = zext i8 %ret.0.i460 to i32
  %tx_msg = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 4
  %22 = ptrtoint ptr %tx_msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_msg, align 8
  %nmsgs = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 7
  %24 = ptrtoint ptr %nmsgs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nmsgs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug293, ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %conv, ptr noundef %23, i32 noundef %25) #8
  br label %do.end27

do.end27:                                         ; preds = %xiic_getreg8.exit, %do.body6
  %and28 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp ne i32 %and28, 0
  %26 = and i32 %and, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %27 = icmp eq i32 %26, 2
  %or.cond = or i1 %tobool29.not, %27
  br i1 %or.cond, label %do.body35, label %do.end27.if.end64_crit_edge

do.end27.if.end64_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.body35:                                        ; preds = %do.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.end55)) #8
          to label %if.then49 [label %do.end55], !srcloc !140

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %parent52 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %28 = ptrtoint ptr %parent52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent52, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug294, ptr noundef %29, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %do.body35
  %call56 = tail call fastcc i32 @xiic_reinit(ptr noundef %dev_id)
  %rx_msg = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 8
  %30 = ptrtoint ptr %rx_msg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_msg, align 8
  %tobool57.not = icmp ne ptr %31, null
  %tx_msg60 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 4
  %32 = ptrtoint ptr %tx_msg60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_msg60, align 8
  %tobool61.not = icmp ne ptr %33, null
  %narrow = select i1 %tobool61.not, i1 true, i1 %tobool57.not
  %spec.select418 = zext i1 %narrow to i32
  br label %if.end64

if.end64:                                         ; preds = %do.end55, %do.end27.if.end64_crit_edge
  %wakeup_req.1 = phi i32 [ %spec.select418, %do.end55 ], [ 0, %do.end27.if.end64_crit_edge ]
  %and65 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end152_crit_edge, label %if.then67

if.end64.if.end152_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.then67:                                        ; preds = %if.end64
  %rx_msg68 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 8
  %34 = ptrtoint ptr %rx_msg68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_msg68, align 8
  %tobool69.not = icmp eq ptr %35, null
  br i1 %tobool69.not, label %do.body71, label %if.end93

do.body71:                                        ; preds = %if.then67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.end91)) #8
          to label %if.then85 [label %do.end91], !srcloc !140

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %parent88 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %36 = ptrtoint ptr %parent88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent88, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug295, ptr noundef %37, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28) #8
  br label %do.end91

do.end91:                                         ; preds = %if.then85, %do.body71
  %call92 = tail call fastcc i32 @xiic_clear_rx_fifo(ptr noundef %dev_id)
  br label %do.body286

if.end93:                                         ; preds = %if.then67
  tail call fastcc void @xiic_read_rx(ptr noundef %dev_id)
  %38 = ptrtoint ptr %rx_msg68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_msg68, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len, align 4
  %conv95 = zext i16 %41 to i32
  %rx_pos = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 9
  %42 = ptrtoint ptr %rx_pos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv95)
  %cmp = icmp eq i32 %43, %conv95
  br i1 %cmp, label %if.then97, label %if.end93.if.end152_crit_edge

if.end93.if.end152_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.then97:                                        ; preds = %if.end93
  %44 = ptrtoint ptr %rx_msg68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rx_msg68, align 8
  %and99 = and i32 %ret.0.i, 2
  %or100 = or i32 %and99, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.end122)) #8
          to label %if.then115 [label %do.end122], !srcloc !140

if.then115:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %parent118 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %45 = ptrtoint ptr %parent118 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent118, align 8
  %nmsgs119 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 7
  %47 = ptrtoint ptr %nmsgs119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nmsgs119, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug296, ptr noundef %46, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28, i32 noundef %48) #8
  br label %do.end122

do.end122:                                        ; preds = %if.then115, %if.then97
  %nmsgs123 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 7
  %49 = ptrtoint ptr %nmsgs123 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nmsgs123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp124 = icmp ugt i32 %50, 1
  br i1 %cmp124, label %if.then126, label %do.end122.if.end152_crit_edge

do.end122.if.end152_crit_edge:                    ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.then126:                                       ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %50, -1
  %51 = ptrtoint ptr %nmsgs123 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %dec, ptr %nmsgs123, align 4
  %tx_msg128 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 4
  %52 = ptrtoint ptr %tx_msg128 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_msg128, align 8
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %53, i32 1
  store ptr %incdec.ptr, ptr %tx_msg128, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %if.end152)) #8
          to label %if.then143 [label %if.end152], !srcloc !140

if.then143:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  %parent146 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %54 = ptrtoint ptr %parent146 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent146, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug297, ptr noundef %55, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.28) #8
  br label %if.end152

if.end152:                                        ; preds = %if.then143, %if.then126, %do.end122.if.end152_crit_edge, %if.end93.if.end152_crit_edge, %if.end64.if.end152_crit_edge
  %xfer_more.0 = phi i32 [ 0, %do.end122.if.end152_crit_edge ], [ 0, %if.end93.if.end152_crit_edge ], [ 0, %if.end64.if.end152_crit_edge ], [ 1, %if.then143 ], [ 1, %if.then126 ]
  %clr.0 = phi i32 [ %or100, %do.end122.if.end152_crit_edge ], [ 8, %if.end93.if.end152_crit_edge ], [ 0, %if.end64.if.end152_crit_edge ], [ %or100, %if.then143 ], [ %or100, %if.then126 ]
  %and153 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end152.if.end176_crit_edge, label %if.then155

if.end152.if.end176_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then155:                                       ; preds = %if.end152
  %or156 = or i32 %clr.0, 16
  %56 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i = icmp eq i32 %57, 0
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 40
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit.i

if.else.i.i:                                      ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit.i

xiic_getreg32.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ %61, %if.then.i.i ], [ %60, %if.else.i.i ]
  %and.i = and i32 %ret.0.i.i, -17
  %62 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i3.i = icmp eq i32 %63, 0
  br i1 %cmp.i3.i, label %if.then.i6.i, label %do.body.i.i

if.then.i6.i:                                     ; preds = %xiic_getreg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %65, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %66) #8, !srcloc !134
  br label %xiic_irq_dis.exit

do.body.i.i:                                      ; preds = %xiic_getreg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %and.i) #8, !srcloc !134
  br label %xiic_irq_dis.exit

xiic_irq_dis.exit:                                ; preds = %do.body.i.i, %if.then.i6.i
  %tx_msg157 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 4
  %69 = ptrtoint ptr %tx_msg157 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tx_msg157, align 8
  %tobool158.not = icmp eq ptr %70, null
  br i1 %tobool158.not, label %xiic_irq_dis.exit.do.body286_crit_edge, label %if.end160

xiic_irq_dis.exit.do.body286_crit_edge:           ; preds = %xiic_irq_dis.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body286

if.end160:                                        ; preds = %xiic_irq_dis.exit
  %nmsgs161 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 7
  %71 = ptrtoint ptr %nmsgs161 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nmsgs161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp162 = icmp eq i32 %72, 1
  br i1 %cmp162, label %land.lhs.true164, label %if.end160.if.else_crit_edge

if.end160.if.else_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true164:                                 ; preds = %if.end160
  %rx_msg165 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 8
  %73 = ptrtoint ptr %rx_msg165 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rx_msg165, align 8
  %tobool166.not = icmp eq ptr %74, null
  br i1 %tobool166.not, label %land.lhs.true167, label %land.lhs.true164.if.else_crit_edge

land.lhs.true164.if.else_crit_edge:               ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true167:                                 ; preds = %land.lhs.true164
  %len169 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 2
  %75 = ptrtoint ptr %len169 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %len169, align 4
  %conv170 = zext i16 %76 to i32
  %tx_pos = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 6
  %77 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_pos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %conv170)
  %cmp172 = icmp eq i32 %78, %conv170
  br i1 %cmp172, label %land.lhs.true167.if.end176_crit_edge, label %land.lhs.true167.if.else_crit_edge

land.lhs.true167.if.else_crit_edge:               ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true167.if.end176_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.else:                                          ; preds = %land.lhs.true167.if.else_crit_edge, %land.lhs.true164.if.else_crit_edge, %if.end160.if.else_crit_edge
  br label %if.end176

if.end176:                                        ; preds = %if.else, %land.lhs.true167.if.end176_crit_edge, %if.end152.if.end176_crit_edge
  %wakeup_code.2 = phi i32 [ 1, %if.else ], [ %wakeup_req.1, %if.end152.if.end176_crit_edge ], [ 0, %land.lhs.true167.if.end176_crit_edge ]
  %wakeup_req.2 = phi i32 [ 1, %if.else ], [ %wakeup_req.1, %if.end152.if.end176_crit_edge ], [ 1, %land.lhs.true167.if.end176_crit_edge ]
  %clr.1 = phi i32 [ %or156, %if.else ], [ %clr.0, %if.end152.if.end176_crit_edge ], [ %or156, %land.lhs.true167.if.end176_crit_edge ]
  %and177 = and i32 %and, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %if.end176.do.body286_crit_edge, label %if.then179

if.end176.do.body286_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body286

if.then179:                                       ; preds = %if.end176
  %or181 = or i32 %clr.1, %and177
  %tx_msg182 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 4
  %79 = ptrtoint ptr %tx_msg182 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx_msg182, align 8
  %tobool183.not = icmp eq ptr %80, null
  br i1 %tobool183.not, label %do.body185, label %if.end206

do.body185:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.body286)) #8
          to label %if.then199 [label %do.body286], !srcloc !140

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  %parent202 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %81 = ptrtoint ptr %parent202 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parent202, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug298, ptr noundef %82, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28) #8
  br label %do.body286

if.end206:                                        ; preds = %if.then179
  tail call fastcc void @xiic_fill_tx_fifo(ptr noundef %dev_id)
  %83 = ptrtoint ptr %tx_msg182 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_msg182, align 8
  %len208 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %len208 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %len208, align 4
  %conv209 = zext i16 %86 to i32
  %tx_pos210 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 6
  %87 = ptrtoint ptr %tx_pos210 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_pos210, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %conv209)
  %tobool212.not = icmp eq i32 %88, %conv209
  br i1 %tobool212.not, label %land.lhs.true213, label %if.end206.if.else271_crit_edge

if.end206.if.else271_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else271

land.lhs.true213:                                 ; preds = %if.end206
  %89 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i462 = icmp eq i32 %90, 0
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i.i462, label %if.then.i.i465, label %if.else.i.i466

if.then.i.i465:                                   ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i464 = getelementptr i8, ptr %92, i32 276
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i464) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_tx_fifo_space.exit

if.else.i.i466:                                   ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i = getelementptr i8, ptr %92, i32 279
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_tx_fifo_space.exit

xiic_tx_fifo_space.exit:                          ; preds = %if.else.i.i466, %if.then.i.i465
  %ret.0.i.i467 = phi i8 [ %93, %if.then.i.i465 ], [ %94, %if.else.i.i466 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %ret.0.i.i467)
  %cmp215 = icmp ult i8 %ret.0.i.i467, 14
  br i1 %cmp215, label %do.body218, label %xiic_tx_fifo_space.exit.if.else271_crit_edge

xiic_tx_fifo_space.exit.if.else271_crit_edge:     ; preds = %xiic_tx_fifo_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else271

do.body218:                                       ; preds = %xiic_tx_fifo_space.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.end239)) #8
          to label %if.then232 [label %do.end239], !srcloc !140

if.then232:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #10
  %parent235 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %95 = ptrtoint ptr %parent235 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %parent235, align 8
  %nmsgs236 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 7
  %97 = ptrtoint ptr %nmsgs236 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nmsgs236, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug299, ptr noundef %96, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.28, i32 noundef %98) #8
  br label %do.end239

do.end239:                                        ; preds = %if.then232, %do.body218
  %nmsgs240 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 7
  %99 = ptrtoint ptr %nmsgs240 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nmsgs240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp241 = icmp ugt i32 %100, 1
  br i1 %cmp241, label %if.then243, label %if.else248

if.then243:                                       ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #10
  %dec245 = add i32 %100, -1
  %101 = ptrtoint ptr %nmsgs240 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %dec245, ptr %nmsgs240, align 4
  %102 = ptrtoint ptr %tx_msg182 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_msg182, align 8
  %incdec.ptr247 = getelementptr %struct.i2c_msg, ptr %103, i32 1
  store ptr %incdec.ptr247, ptr %tx_msg182, align 8
  br label %do.body286

if.else248:                                       ; preds = %do.end239
  %104 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i.i469 = icmp eq i32 %105, 0
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i471 = getelementptr i8, ptr %107, i32 40
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i471) #8
  br i1 %cmp.i.i469, label %if.then.i.i472, label %if.else.i.i473

if.then.i.i472:                                   ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #10
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit.i477

if.else.i.i473:                                   ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit.i477

xiic_getreg32.exit.i477:                          ; preds = %if.else.i.i473, %if.then.i.i472
  %ret.0.i.i474 = phi i32 [ %109, %if.then.i.i472 ], [ %108, %if.else.i.i473 ]
  %and.i475 = and i32 %ret.0.i.i474, -129
  %110 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i3.i476 = icmp eq i32 %111, 0
  br i1 %cmp.i3.i476, label %if.then.i6.i479, label %do.body.i.i481

if.then.i6.i479:                                  ; preds = %xiic_getreg32.exit.i477
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i478 = getelementptr i8, ptr %113, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %114 = tail call i32 @llvm.bswap.i32(i32 %and.i475) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i478, i32 %114) #8, !srcloc !134
  br label %xiic_irq_dis.exit482

do.body.i.i481:                                   ; preds = %xiic_getreg32.exit.i477
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i480 = getelementptr i8, ptr %116, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i480, i32 %and.i475) #8, !srcloc !134
  br label %xiic_irq_dis.exit482

xiic_irq_dis.exit482:                             ; preds = %do.body.i.i481, %if.then.i6.i479
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.body286)) #8
          to label %if.then263 [label %do.body286], !srcloc !140

if.then263:                                       ; preds = %xiic_irq_dis.exit482
  call void @__sanitizer_cov_trace_pc() #10
  %parent266 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %117 = ptrtoint ptr %parent266 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %parent266, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug300, ptr noundef %118, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.28) #8
  br label %do.body286

if.else271:                                       ; preds = %xiic_tx_fifo_space.exit.if.else271_crit_edge, %if.end206.if.else271_crit_edge
  %119 = ptrtoint ptr %tx_msg182 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tx_msg182, align 8
  %len273 = getelementptr inbounds %struct.i2c_msg, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %len273 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %len273, align 4
  %conv274 = zext i16 %122 to i32
  %123 = ptrtoint ptr %tx_pos210 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tx_pos210, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %conv274)
  %tobool277.not = icmp eq i32 %124, %conv274
  br i1 %tobool277.not, label %land.lhs.true278, label %if.else271.do.body286_crit_edge

if.else271.do.body286_crit_edge:                  ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body286

land.lhs.true278:                                 ; preds = %if.else271
  %nmsgs279 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 7
  %125 = ptrtoint ptr %nmsgs279 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nmsgs279, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp280 = icmp eq i32 %126, 1
  br i1 %cmp280, label %if.then282, label %land.lhs.true278.do.body286_crit_edge

land.lhs.true278.do.body286_crit_edge:            ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body286

if.then282:                                       ; preds = %land.lhs.true278
  %127 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp.i.i484 = icmp eq i32 %128, 0
  %129 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i486 = getelementptr i8, ptr %130, i32 40
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i486) #8
  br i1 %cmp.i.i484, label %if.then.i.i487, label %if.else.i.i488

if.then.i.i487:                                   ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #10
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit.i492

if.else.i.i488:                                   ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit.i492

xiic_getreg32.exit.i492:                          ; preds = %if.else.i.i488, %if.then.i.i487
  %ret.0.i.i489 = phi i32 [ %132, %if.then.i.i487 ], [ %131, %if.else.i.i488 ]
  %and.i490 = and i32 %ret.0.i.i489, -129
  %133 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i3.i491 = icmp eq i32 %134, 0
  br i1 %cmp.i3.i491, label %if.then.i6.i494, label %do.body.i.i496

if.then.i6.i494:                                  ; preds = %xiic_getreg32.exit.i492
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i493 = getelementptr i8, ptr %136, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %137 = tail call i32 @llvm.bswap.i32(i32 %and.i490) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i493, i32 %137) #8, !srcloc !134
  br label %do.body286

do.body.i.i496:                                   ; preds = %xiic_getreg32.exit.i492
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %138 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i495 = getelementptr i8, ptr %139, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i495, i32 %and.i490) #8, !srcloc !134
  br label %do.body286

do.body286:                                       ; preds = %do.body.i.i496, %if.then.i6.i494, %land.lhs.true278.do.body286_crit_edge, %if.else271.do.body286_crit_edge, %if.then263, %xiic_irq_dis.exit482, %if.then243, %if.then199, %do.body185, %if.end176.do.body286_crit_edge, %xiic_irq_dis.exit.do.body286_crit_edge, %do.end91
  %wakeup_code.3 = phi i32 [ %wakeup_code.2, %if.else271.do.body286_crit_edge ], [ %wakeup_code.2, %land.lhs.true278.do.body286_crit_edge ], [ %wakeup_code.2, %if.then243 ], [ %wakeup_code.2, %if.then263 ], [ %wakeup_code.2, %if.then199 ], [ %wakeup_code.2, %if.end176.do.body286_crit_edge ], [ %wakeup_req.1, %xiic_irq_dis.exit.do.body286_crit_edge ], [ %wakeup_req.1, %do.end91 ], [ %wakeup_code.2, %if.then.i6.i494 ], [ %wakeup_code.2, %do.body.i.i496 ], [ %wakeup_code.2, %do.body185 ], [ %wakeup_code.2, %xiic_irq_dis.exit482 ]
  %wakeup_req.3 = phi i32 [ %wakeup_req.2, %if.else271.do.body286_crit_edge ], [ %wakeup_req.2, %land.lhs.true278.do.body286_crit_edge ], [ %wakeup_req.2, %if.then243 ], [ %wakeup_req.2, %if.then263 ], [ %wakeup_req.2, %if.then199 ], [ %wakeup_req.2, %if.end176.do.body286_crit_edge ], [ %wakeup_req.1, %xiic_irq_dis.exit.do.body286_crit_edge ], [ %wakeup_req.1, %do.end91 ], [ %wakeup_req.2, %if.then.i6.i494 ], [ %wakeup_req.2, %do.body.i.i496 ], [ %wakeup_req.2, %do.body185 ], [ %wakeup_req.2, %xiic_irq_dis.exit482 ]
  %xfer_more.1 = phi i32 [ %xfer_more.0, %if.else271.do.body286_crit_edge ], [ %xfer_more.0, %land.lhs.true278.do.body286_crit_edge ], [ 1, %if.then243 ], [ %xfer_more.0, %if.then263 ], [ %xfer_more.0, %if.then199 ], [ %xfer_more.0, %if.end176.do.body286_crit_edge ], [ %xfer_more.0, %xiic_irq_dis.exit.do.body286_crit_edge ], [ 0, %do.end91 ], [ %xfer_more.0, %if.then.i6.i494 ], [ %xfer_more.0, %do.body.i.i496 ], [ %xfer_more.0, %do.body185 ], [ %xfer_more.0, %xiic_irq_dis.exit482 ]
  %clr.2 = phi i32 [ %or181, %if.else271.do.body286_crit_edge ], [ %or181, %land.lhs.true278.do.body286_crit_edge ], [ %or181, %if.then243 ], [ %or181, %if.then263 ], [ %or181, %if.then199 ], [ %clr.1, %if.end176.do.body286_crit_edge ], [ %or156, %xiic_irq_dis.exit.do.body286_crit_edge ], [ 8, %do.end91 ], [ %or181, %if.then.i6.i494 ], [ %or181, %do.body.i.i496 ], [ %or181, %do.body185 ], [ %or181, %xiic_irq_dis.exit482 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_process.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_process, %do.end306)) #8
          to label %if.then300 [label %do.end306], !srcloc !140

if.then300:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #10
  %parent303 = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 3, i32 9, i32 1
  %140 = ptrtoint ptr %parent303 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %parent303, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_process.__UNIQUE_ID_ddebug301, ptr noundef %141, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.28, i32 noundef %clr.2) #8
  br label %do.end306

do.end306:                                        ; preds = %if.then300, %do.body286
  %142 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i499 = icmp eq i32 %143, 0
  br i1 %cmp.i499, label %if.then.i502, label %do.body.i

if.then.i502:                                     ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i, align 4
  %add.ptr.i501 = getelementptr i8, ptr %145, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %146 = tail call i32 @llvm.bswap.i32(i32 %clr.2) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i501, i32 %146) #8, !srcloc !134
  br label %xiic_setreg32.exit

do.body.i:                                        ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %147 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %148, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %clr.2) #8, !srcloc !134
  br label %xiic_setreg32.exit

xiic_setreg32.exit:                               ; preds = %do.body.i, %if.then.i502
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfer_more.1)
  %tobool307.not = icmp eq i32 %xfer_more.1, 0
  br i1 %tobool307.not, label %xiic_setreg32.exit.if.end309_crit_edge, label %if.then308

xiic_setreg32.exit.if.end309_crit_edge:           ; preds = %xiic_setreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

if.then308:                                       ; preds = %xiic_setreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__xiic_start_xfer(ptr noundef %dev_id)
  br label %if.end309

if.end309:                                        ; preds = %if.then308, %xiic_setreg32.exit.if.end309_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wakeup_req.3)
  %tobool310 = icmp ne i32 %wakeup_req.3, 0
  br i1 %tobool310, label %if.end312, label %if.end309.if.end336_crit_edge

if.end309.if.end336_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end336

if.end312:                                        ; preds = %if.end309
  %tx_msg.i = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 4
  %149 = ptrtoint ptr %tx_msg.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %tx_msg.i, align 8
  %rx_msg.i = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 8
  %150 = ptrtoint ptr %rx_msg.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %rx_msg.i, align 8
  %nmsgs.i = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 7
  %151 = ptrtoint ptr %nmsgs.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %nmsgs.i, align 4
  %state.i = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 12
  %152 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %wakeup_code.3, ptr %state.i, align 8
  %completion.i = getelementptr inbounds %struct.xiic_i2c, ptr %dev_id, i32 0, i32 2
  tail call void @complete(ptr noundef %completion.i) #8
  %not.tobool307.not = xor i1 %tobool307.not, true
  %spec.select417 = select i1 %not.tobool307.not, i1 %tobool310, i1 false
  br i1 %spec.select417, label %do.end330, label %if.end312.if.end336_crit_edge, !prof !144

if.end312.if.end336_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end336

do.end330:                                        ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 528, i32 noundef 9, ptr noundef null) #8
  br label %if.end336

if.end336:                                        ; preds = %do.end330, %if.end312.if.end336_crit_edge, %if.end309.if.end336_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xiic_reinit(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %endianness.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 167772160) #8, !srcloc !134
  br label %xiic_setreg32.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %base1.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %4 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 10) #8, !srcloc !134
  br label %xiic_setreg32.exit

xiic_setreg32.exit:                               ; preds = %do.body.i, %if.then.i
  %6 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i9 = icmp eq i32 %7, 0
  %base.i10 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %8 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i10, align 4
  br i1 %cmp.i9, label %if.then.i12, label %if.else.i

if.then.i12:                                      ; preds = %xiic_setreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 15) #8, !srcloc !146
  br label %xiic_setreg8.exit

if.else.i:                                        ; preds = %xiic_setreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i = getelementptr i8, ptr %9, i32 291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 15) #8, !srcloc !146
  br label %xiic_setreg8.exit

xiic_setreg8.exit:                                ; preds = %if.else.i, %if.then.i12
  %10 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i14 = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i10, align 4
  br i1 %cmp.i14, label %if.then.i17, label %if.else.i19

if.then.i17:                                      ; preds = %xiic_setreg8.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 2) #8, !srcloc !146
  br label %xiic_setreg8.exit20

if.else.i19:                                      ; preds = %xiic_setreg8.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i18 = getelementptr i8, ptr %13, i32 259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i18, i8 2) #8, !srcloc !146
  br label %xiic_setreg8.exit20

xiic_setreg8.exit20:                              ; preds = %if.else.i19, %if.then.i17
  %14 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i22 = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i10, align 4
  br i1 %cmp.i22, label %if.then.i25, label %if.else.i27

if.then.i25:                                      ; preds = %xiic_setreg8.exit20
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i24 = getelementptr i8, ptr %17, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i24, i8 1) #8, !srcloc !146
  br label %xiic_setreg8.exit28

if.else.i27:                                      ; preds = %xiic_setreg8.exit20
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i26 = getelementptr i8, ptr %17, i32 259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i26, i8 1) #8, !srcloc !146
  br label %xiic_setreg8.exit28

xiic_setreg8.exit28:                              ; preds = %if.else.i27, %if.then.i25
  %call = tail call fastcc i32 @xiic_clear_rx_fifo(ptr noundef %i2c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %xiic_setreg8.exit28.cleanup_crit_edge

xiic_setreg8.exit28.cleanup_crit_edge:            ; preds = %xiic_setreg8.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %xiic_setreg8.exit28
  %18 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i30 = icmp eq i32 %19, 0
  br i1 %cmp.i30, label %if.then.i33, label %do.body.i36

if.then.i33:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i10, align 4
  %add.ptr.i32 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 128) #8, !srcloc !134
  br label %xiic_setreg32.exit37

do.body.i36:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i10, align 4
  %add.ptr2.i35 = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i35, i32 -2147483648) #8, !srcloc !134
  br label %xiic_setreg32.exit37

xiic_setreg32.exit37:                             ; preds = %do.body.i36, %if.then.i33
  tail call fastcc void @xiic_irq_clr_en(ptr noundef %i2c, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %xiic_setreg32.exit37, %xiic_setreg8.exit28.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xiic_deinit(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %endianness.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 167772160) #8, !srcloc !134
  br label %xiic_setreg32.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %base1.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %4 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 10) #8, !srcloc !134
  br label %xiic_setreg32.exit

xiic_setreg32.exit:                               ; preds = %do.body.i, %if.then.i
  %6 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i5 = icmp eq i32 %7, 0
  %base.i6 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %8 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i6, align 4
  br i1 %cmp.i5, label %if.then.i8, label %if.else.i

if.then.i8:                                       ; preds = %xiic_setreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i7 = getelementptr i8, ptr %9, i32 256
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

if.else.i:                                        ; preds = %xiic_setreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i = getelementptr i8, ptr %9, i32 259
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

xiic_getreg8.exit:                                ; preds = %if.else.i, %if.then.i8
  %ret.0.i = phi i8 [ %10, %if.then.i8 ], [ %11, %if.else.i ]
  %12 = and i8 %ret.0.i, -2
  %13 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i10 = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i6, align 4
  br i1 %cmp.i10, label %if.then.i13, label %if.else.i15

if.then.i13:                                      ; preds = %xiic_getreg8.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i12 = getelementptr i8, ptr %16, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 %12) #8, !srcloc !146
  br label %xiic_setreg8.exit

if.else.i15:                                      ; preds = %xiic_getreg8.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i14 = getelementptr i8, ptr %16, i32 259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i14, i8 %12) #8, !srcloc !146
  br label %xiic_setreg8.exit

xiic_setreg8.exit:                                ; preds = %if.else.i15, %if.then.i13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xiic_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_xfer.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_xfer, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !140

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %endianness.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %base.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %7, i32 260
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i = getelementptr i8, ptr %7, i32 263
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

xiic_getreg8.exit:                                ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i8 [ %8, %if.then.i ], [ %9, %if.else.i ]
  %conv = zext i8 %ret.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_xfer.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %xiic_getreg8.exit, %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i66 = icmp slt i32 %call.i, 0
  br i1 %cmp.i66, label %if.then.i67, label %if.end10

if.then.i67:                                      ; preds = %do.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !138
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i67.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i67.cleanup_crit_edge:                    ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %lock.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %tx_msg.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %tx_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_msg.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end10.xiic_start_xfer.exit.thread_crit_edge

if.end10.xiic_start_xfer.exit.thread_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %xiic_start_xfer.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end10
  %rx_msg.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %rx_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_msg.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.xiic_start_xfer.exit.thread_crit_edge

lor.lhs.false.i.i.xiic_start_xfer.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xiic_start_xfer.exit.thread

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %singlemaster.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %singlemaster.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %singlemaster.i.i, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %endianness.i.i.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %endianness.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %endianness.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  %base.i.i.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i.i, align 4
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %22, i32 260
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_bus_busy.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %22, i32 263
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_bus_busy.exit.i.i

xiic_bus_busy.exit.i.i:                           ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %ret.0.i.i.i.i = phi i8 [ %23, %if.then.i.i.i.i ], [ %24, %if.else.i.i.i.i ]
  %25 = and i8 %ret.0.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i.i, label %xiic_bus_busy.exit.i.i.if.end.i_crit_edge, label %while.body.i.i

xiic_bus_busy.exit.i.i.if.end.i_crit_edge:        ; preds = %xiic_bus_busy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i:                                   ; preds = %xiic_bus_busy.exit.i.i
  tail call void @msleep(i32 noundef 1) #8
  %26 = ptrtoint ptr %endianness.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %endianness.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i15.i.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i.i, align 4
  br i1 %cmp.i.i15.i.i, label %if.then.i.i18.i.i, label %if.else.i.i20.i.i

if.then.i.i18.i.i:                                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %29, i32 260
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i17.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_bus_busy.exit24.i.i

if.else.i.i20.i.i:                                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i19.i.i = getelementptr i8, ptr %29, i32 263
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i19.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_bus_busy.exit24.i.i

xiic_bus_busy.exit24.i.i:                         ; preds = %if.else.i.i20.i.i, %if.then.i.i18.i.i
  %ret.0.i.i21.i.i = phi i8 [ %30, %if.then.i.i18.i.i ], [ %31, %if.else.i.i20.i.i ]
  %32 = and i8 %ret.0.i.i21.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i22.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i22.i.i, label %xiic_bus_busy.exit24.i.i.cleanup.loopexit.i.i_crit_edge, label %while.body.i.i.1

xiic_bus_busy.exit24.i.i.cleanup.loopexit.i.i_crit_edge: ; preds = %xiic_bus_busy.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.loopexit.i.i

while.body.i.i.1:                                 ; preds = %xiic_bus_busy.exit24.i.i
  tail call void @msleep(i32 noundef 1) #8
  %33 = ptrtoint ptr %endianness.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %endianness.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i15.i.i.1 = icmp eq i32 %34, 0
  %35 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i.i, align 4
  br i1 %cmp.i.i15.i.i.1, label %if.then.i.i18.i.i.1, label %if.else.i.i20.i.i.1

if.else.i.i20.i.i.1:                              ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i19.i.i.1 = getelementptr i8, ptr %36, i32 263
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i19.i.i.1) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_bus_busy.exit24.i.i.1

if.then.i.i18.i.i.1:                              ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i17.i.i.1 = getelementptr i8, ptr %36, i32 260
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i17.i.i.1) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_bus_busy.exit24.i.i.1

xiic_bus_busy.exit24.i.i.1:                       ; preds = %if.then.i.i18.i.i.1, %if.else.i.i20.i.i.1
  %ret.0.i.i21.i.i.1 = phi i8 [ %38, %if.then.i.i18.i.i.1 ], [ %37, %if.else.i.i20.i.i.1 ]
  %39 = and i8 %ret.0.i.i21.i.i.1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i22.i.i.1 = icmp eq i8 %39, 0
  br i1 %tobool.not.i22.i.i.1, label %xiic_bus_busy.exit24.i.i.1.cleanup.loopexit.i.i_crit_edge, label %while.body.i.i.2

xiic_bus_busy.exit24.i.i.1.cleanup.loopexit.i.i_crit_edge: ; preds = %xiic_bus_busy.exit24.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.loopexit.i.i

while.body.i.i.2:                                 ; preds = %xiic_bus_busy.exit24.i.i.1
  tail call void @msleep(i32 noundef 1) #8
  %40 = ptrtoint ptr %endianness.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %endianness.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i15.i.i.2 = icmp eq i32 %41, 0
  %42 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i.i, align 4
  br i1 %cmp.i.i15.i.i.2, label %if.then.i.i18.i.i.2, label %if.else.i.i20.i.i.2

if.else.i.i20.i.i.2:                              ; preds = %while.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i19.i.i.2 = getelementptr i8, ptr %43, i32 263
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i19.i.i.2) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_bus_busy.exit24.i.i.2

if.then.i.i18.i.i.2:                              ; preds = %while.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i17.i.i.2 = getelementptr i8, ptr %43, i32 260
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i17.i.i.2) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_bus_busy.exit24.i.i.2

xiic_bus_busy.exit24.i.i.2:                       ; preds = %if.then.i.i18.i.i.2, %if.else.i.i20.i.i.2
  %ret.0.i.i21.i.i.2 = phi i8 [ %45, %if.then.i.i18.i.i.2 ], [ %44, %if.else.i.i20.i.i.2 ]
  %46 = and i8 %ret.0.i.i21.i.i.2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i22.i.i.2 = icmp eq i8 %46, 0
  br label %cleanup.loopexit.i.i

cleanup.loopexit.i.i:                             ; preds = %xiic_bus_busy.exit24.i.i.2, %xiic_bus_busy.exit24.i.i.1.cleanup.loopexit.i.i_crit_edge, %xiic_bus_busy.exit24.i.i.cleanup.loopexit.i.i_crit_edge
  %tobool.not.i22.i.i.lcssa = phi i1 [ %tobool.not.i22.i.i, %xiic_bus_busy.exit24.i.i.cleanup.loopexit.i.i_crit_edge ], [ %tobool.not.i22.i.i.1, %xiic_bus_busy.exit24.i.i.1.cleanup.loopexit.i.i_crit_edge ], [ %tobool.not.i22.i.i.2, %xiic_bus_busy.exit24.i.i.2 ]
  br i1 %tobool.not.i22.i.i.lcssa, label %cleanup.loopexit.i.i.if.end.i_crit_edge, label %cleanup.loopexit.i.i.xiic_start_xfer.exit.thread_crit_edge

cleanup.loopexit.i.i.xiic_start_xfer.exit.thread_crit_edge: ; preds = %cleanup.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xiic_start_xfer.exit.thread

cleanup.loopexit.i.i.if.end.i_crit_edge:          ; preds = %cleanup.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.loopexit.i.i.if.end.i_crit_edge, %xiic_bus_busy.exit.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %47 = ptrtoint ptr %tx_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msgs, ptr %tx_msg.i.i, align 8
  %48 = ptrtoint ptr %rx_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rx_msg.i.i, align 8
  %nmsgs.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %nmsgs.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %num, ptr %nmsgs.i, align 4
  %completion.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #8
  %call1.i = tail call fastcc i32 @xiic_reinit(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %xiic_start_xfer.exit.thread78, label %xiic_start_xfer.exit

xiic_start_xfer.exit.thread78:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__xiic_start_xfer(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %if.end20

xiic_start_xfer.exit.thread:                      ; preds = %cleanup.loopexit.i.i.xiic_start_xfer.exit.thread_crit_edge, %lor.lhs.false.i.i.xiic_start_xfer.exit.thread_crit_edge, %if.end10.xiic_start_xfer.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %do.end17

xiic_start_xfer.exit:                             ; preds = %if.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp12 = icmp slt i32 %call1.i, 0
  br i1 %cmp12, label %xiic_start_xfer.exit.do.end17_crit_edge, label %xiic_start_xfer.exit.if.end20_crit_edge

xiic_start_xfer.exit.if.end20_crit_edge:          ; preds = %xiic_start_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

xiic_start_xfer.exit.do.end17_crit_edge:          ; preds = %xiic_start_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end17:                                         ; preds = %xiic_start_xfer.exit.do.end17_crit_edge, %xiic_start_xfer.exit.thread
  %ret.0.i6977 = phi i32 [ -16, %xiic_start_xfer.exit.thread ], [ %call1.i, %xiic_start_xfer.exit.do.end17_crit_edge ]
  %parent19 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %51 = ptrtoint ptr %parent19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end20:                                         ; preds = %xiic_start_xfer.exit.if.end20_crit_edge, %xiic_start_xfer.exit.thread78
  %call22 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 1000) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %tx_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %tx_msg.i.i, align 8
  %54 = ptrtoint ptr %rx_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rx_msg.i.i, align 8
  %55 = ptrtoint ptr %nmsgs.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %nmsgs.i, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp26 = icmp slt i32 %call22, 0
  br i1 %cmp26, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %tx_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %tx_msg.i.i, align 8
  %57 = ptrtoint ptr %rx_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rx_msg.i.i, align 8
  %58 = ptrtoint ptr %nmsgs.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %nmsgs.i, align 4
  br label %if.end36

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 12
  %59 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp33 = icmp eq i32 %60, 0
  %spec.select = select i1 %cmp33, i32 %num, i32 -5
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then28, %if.then25
  %err.0 = phi i32 [ -110, %if.then25 ], [ %call22, %if.then28 ], [ %spec.select, %if.else32 ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %call.i70 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 12, i32 22
  %63 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store volatile i64 %call.i70, ptr %last_busy.i, align 8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %call.i71 = tail call i32 @__pm_runtime_suspend(ptr noundef %65, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end17, %do.end11.i.i.i.i.i, %if.then.i67.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i6977, %do.end17 ], [ %err.0, %if.end36 ], [ %call.i, %if.then.i67.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xiic_func(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xiic_start_xfer(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %endianness.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %base.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 276
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_tx_fifo_space.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i = getelementptr i8, ptr %3, i32 279
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_tx_fifo_space.exit

xiic_tx_fifo_space.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %ret.0.i.i = phi i8 [ %4, %if.then.i.i ], [ %5, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xiic_start_xfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__xiic_start_xfer, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !140

if.then:                                          ; preds = %xiic_tx_fifo_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %ret.0.i.i to i32
  %sub1.i = sub nsw i32 15, %conv.i
  %parent = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 3, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %tx_msg = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 4
  %8 = ptrtoint ptr %tx_msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_msg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__xiic_start_xfer.__UNIQUE_ID_ddebug304, ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %9, i32 noundef %sub1.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %xiic_tx_fifo_space.exit
  %tx_msg5 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 4
  %10 = ptrtoint ptr %tx_msg5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_msg5, align 8
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %rx_pos = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 9
  %12 = ptrtoint ptr %rx_pos to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_pos, align 4
  %tx_pos = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 6
  %13 = ptrtoint ptr %tx_pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_pos, align 8
  %state = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 12
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %state, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool10.not = icmp eq i16 %17, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  %rx_msg.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 8
  %18 = ptrtoint ptr %rx_msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %11, ptr %rx_msg.i, align 8
  tail call fastcc void @xiic_irq_clr_en(ptr noundef %i2c, i32 noundef 10) #8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len.i, align 4
  %conv.mask.i = and i16 %20, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv.mask.i)
  %cmp.i = icmp ugt i16 %conv.mask.i, 16
  %21 = trunc i16 %20 to i8
  %.op.i = add i8 %21, -1
  %sub.i = select i1 %cmp.i, i8 15, i8 %.op.i
  %22 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i23 = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  br i1 %cmp.i.i23, label %if.then.i.i26, label %if.else.i.i28

if.then.i.i26:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i25 = getelementptr i8, ptr %25, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i25, i8 %sub.i) #8, !srcloc !146
  br label %xiic_setreg8.exit.i

if.else.i.i28:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i27 = getelementptr i8, ptr %25, i32 291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i27, i8 %sub.i) #8, !srcloc !146
  br label %xiic_setreg8.exit.i

xiic_setreg8.exit.i:                              ; preds = %if.else.i.i28, %if.then.i.i26
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 2
  %28 = and i16 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i, label %if.then6.i, label %xiic_setreg8.exit.i.if.end9.i_crit_edge

xiic_setreg8.exit.i.if.end9.i_crit_edge:          ; preds = %xiic_setreg8.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %xiic_setreg8.exit.i
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %11, align 4
  %conv.i.i = trunc i16 %30 to i8
  %shl.i.i = shl i8 %conv.i.i, 1
  %31 = trunc i16 %27 to i8
  %32 = and i8 %31, 1
  %or.i.i = or i8 %shl.i.i, %32
  %conv7.i = zext i8 %or.i.i to i16
  %or.i = or i16 %conv7.i, 256
  %33 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i39.i = icmp eq i32 %34, 0
  br i1 %cmp.i39.i, label %if.then.i42.i, label %do.body.i.i

if.then.i42.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %36, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %37 = tail call i16 @llvm.bswap.i16(i16 %or.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i41.i, i16 %37) #8, !srcloc !149
  br label %if.end9.i

do.body.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i43.i = getelementptr i8, ptr %39, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i43.i, i16 %or.i) #8, !srcloc !149
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.body.i.i, %if.then.i42.i, %xiic_setreg8.exit.i.if.end9.i_crit_edge
  tail call fastcc void @xiic_irq_clr_en(ptr noundef %i2c, i32 noundef 16) #8
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len.i, align 4
  %nmsgs.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 7
  %42 = ptrtoint ptr %nmsgs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nmsgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp12.i = icmp eq i32 %43, 1
  %cond.i = select i1 %cmp12.i, i16 512, i16 0
  %or14.i = or i16 %cond.i, %41
  %44 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i45.i = icmp eq i32 %45, 0
  br i1 %cmp.i45.i, label %if.then.i48.i, label %do.body.i51.i

if.then.i48.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %47, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %48 = tail call i16 @llvm.bswap.i16(i16 %or14.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i47.i, i16 %48) #8, !srcloc !149
  br label %xiic_setreg16.exit52.i

do.body.i51.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i50.i = getelementptr i8, ptr %50, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i50.i, i16 %or14.i) #8, !srcloc !149
  br label %xiic_setreg16.exit52.i

xiic_setreg16.exit52.i:                           ; preds = %do.body.i51.i, %if.then.i48.i
  %51 = ptrtoint ptr %nmsgs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nmsgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp17.i = icmp eq i32 %52, 1
  br i1 %cmp17.i, label %if.then19.i, label %xiic_setreg16.exit52.i.xiic_start_recv.exit_crit_edge

xiic_setreg16.exit52.i.xiic_start_recv.exit_crit_edge: ; preds = %xiic_setreg16.exit52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xiic_start_recv.exit

if.then19.i:                                      ; preds = %xiic_setreg16.exit52.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xiic_irq_clr_en(ptr noundef %i2c, i32 noundef 16) #8
  br label %xiic_start_recv.exit

xiic_start_recv.exit:                             ; preds = %if.then19.i, %xiic_setreg16.exit52.i.xiic_start_recv.exit_crit_edge
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %len.i, align 4
  %conv22.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %tx_pos to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv22.i, ptr %tx_pos, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xiic_start_send(ptr noundef %i2c)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %xiic_start_recv.exit, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xiic_start_send(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_msg = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 4
  %0 = ptrtoint ptr %tx_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_msg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_start_send.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_start_send, %do.body4)) #8
          to label %if.then [label %do.body4], !srcloc !140

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 3, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_start_send.__UNIQUE_ID_ddebug302, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, ptr noundef %1, i32 noundef %conv) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_start_send.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_start_send, %do.end27)) #8
          to label %if.then18 [label %do.end27], !srcloc !140

if.then18:                                        ; preds = %do.body4
  %parent21 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 3, i32 9, i32 1
  %6 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent21, align 8
  %endianness.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %8 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %base.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit

if.else.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit

xiic_getreg32.exit:                               ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %13, %if.then.i ], [ %12, %if.else.i ]
  %14 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i73 = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i73, label %if.then.i76, label %if.else.i77

if.then.i76:                                      ; preds = %xiic_getreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i75 = getelementptr i8, ptr %17, i32 256
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i75) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

if.else.i77:                                      ; preds = %xiic_getreg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i = getelementptr i8, ptr %17, i32 259
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

xiic_getreg8.exit:                                ; preds = %if.else.i77, %if.then.i76
  %ret.0.i78 = phi i8 [ %18, %if.then.i76 ], [ %19, %if.else.i77 ]
  %conv24 = zext i8 %ret.0.i78 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_start_send.__UNIQUE_ID_ddebug303, ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %ret.0.i, i32 noundef %conv24) #8
  br label %do.end27

do.end27:                                         ; preds = %xiic_getreg8.exit, %do.body4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 2
  %22 = and i16 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool29.not = icmp eq i16 %22, 0
  br i1 %tobool29.not, label %if.then30, label %do.end27.if.end44_crit_edge

do.end27.if.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then30:                                        ; preds = %do.end27
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 4
  %conv.i = trunc i16 %24 to i8
  %shl.i = shl i8 %conv.i, 1
  %25 = trunc i16 %21 to i8
  %26 = and i8 %25, 1
  %or.i = or i8 %shl.i, %26
  %conv32 = zext i8 %or.i to i16
  %or = or i16 %conv32, 256
  %nmsgs = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 7
  %27 = ptrtoint ptr %nmsgs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nmsgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp = icmp eq i32 %28, 1
  br i1 %cmp, label %land.lhs.true, label %if.then30.if.end43_crit_edge

if.then30.if.end43_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %len35 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %len35 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len35, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp37 = icmp eq i16 %30, 0
  %31 = or i16 %conv32, 768
  %spec.select = select i1 %cmp37, i16 %31, i16 %or
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true, %if.then30.if.end43_crit_edge
  %data.0 = phi i16 [ %or, %if.then30.if.end43_crit_edge ], [ %spec.select, %land.lhs.true ]
  %endianness.i79 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %32 = ptrtoint ptr %endianness.i79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %endianness.i79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i80 = icmp eq i32 %33, 0
  br i1 %cmp.i80, label %if.then.i83, label %do.body.i

if.then.i83:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %base.i81 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %34 = ptrtoint ptr %base.i81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i81, align 4
  %add.ptr.i82 = getelementptr i8, ptr %35, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %36 = tail call i16 @llvm.bswap.i16(i16 %data.0) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i82, i16 %36) #8, !srcloc !149
  br label %if.end44

do.body.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %base1.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %37 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base1.i, align 4
  %add.ptr3.i84 = getelementptr i8, ptr %38, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i84, i16 %data.0) #8, !srcloc !149
  br label %if.end44

if.end44:                                         ; preds = %do.body.i, %if.then.i83, %do.end27.if.end44_crit_edge
  %nmsgs45 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 7
  %39 = ptrtoint ptr %nmsgs45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nmsgs45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp46 = icmp ugt i32 %40, 1
  br i1 %cmp46, label %if.end44.lor.end_crit_edge, label %lor.rhs

if.end44.lor.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %tx_msg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_msg, align 8
  %len49 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %len49 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len49, align 4
  %conv50 = zext i16 %44 to i32
  %tx_pos = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 6
  %45 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_pos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv50)
  %tobool51.not = icmp eq i32 %46, %conv50
  %phi.bo = select i1 %tobool51.not, i32 22, i32 150
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end44.lor.end_crit_edge
  %47 = phi i32 [ 150, %if.end44.lor.end_crit_edge ], [ %phi.bo, %lor.rhs ]
  tail call fastcc void @xiic_irq_clr_en(ptr noundef %i2c, i32 noundef %47)
  tail call fastcc void @xiic_fill_tx_fifo(ptr noundef %i2c)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xiic_irq_clr_en(ptr nocapture noundef readonly %i2c, i32 noundef %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %endianness.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %base.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit.i

xiic_getreg32.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ %5, %if.then.i.i ], [ %4, %if.else.i.i ]
  %and.i = and i32 %ret.0.i.i, %mask
  %6 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i3.i = icmp eq i32 %7, 0
  br i1 %cmp.i3.i, label %if.then.i6.i, label %do.body.i.i

if.then.i6.i:                                     ; preds = %xiic_getreg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %10) #8, !srcloc !134
  br label %xiic_irq_clr.exit

do.body.i.i:                                      ; preds = %xiic_getreg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %and.i) #8, !srcloc !134
  br label %xiic_irq_clr.exit

xiic_irq_clr.exit:                                ; preds = %do.body.i.i, %if.then.i6.i
  %13 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i4 = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #8
  br i1 %cmp.i.i4, label %if.then.i.i7, label %if.else.i.i8

if.then.i.i7:                                     ; preds = %xiic_irq_clr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %xiic_getreg32.exit.i11

if.else.i.i8:                                     ; preds = %xiic_irq_clr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  br label %xiic_getreg32.exit.i11

xiic_getreg32.exit.i11:                           ; preds = %if.else.i.i8, %if.then.i.i7
  %ret.0.i.i9 = phi i32 [ %18, %if.then.i.i7 ], [ %17, %if.else.i.i8 ]
  %or.i = or i32 %ret.0.i.i9, %mask
  %19 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i3.i10 = icmp eq i32 %20, 0
  br i1 %cmp.i3.i10, label %if.then.i6.i13, label %do.body.i.i15

if.then.i6.i13:                                   ; preds = %xiic_getreg32.exit.i11
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i5.i12 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i12, i32 %23) #8, !srcloc !134
  br label %xiic_irq_en.exit

do.body.i.i15:                                    ; preds = %xiic_getreg32.exit.i11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i14 = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i14, i32 %or.i) #8, !srcloc !134
  br label %xiic_irq_en.exit

xiic_irq_en.exit:                                 ; preds = %do.body.i.i15, %if.then.i6.i13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xiic_fill_tx_fifo(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %endianness.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %base.i.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 276
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_tx_fifo_space.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i = getelementptr i8, ptr %3, i32 279
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_tx_fifo_space.exit

xiic_tx_fifo_space.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %ret.0.i.i = phi i8 [ %4, %if.then.i.i ], [ %5, %if.else.i.i ]
  %tx_msg = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 4
  %6 = ptrtoint ptr %tx_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_msg, align 8
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len1, align 4
  %conv2 = zext i16 %9 to i32
  %tx_pos = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 6
  %10 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pos, align 8
  %sub = sub i32 %conv2, %11
  %12 = sub i8 15, %ret.0.i.i
  %conv3 = zext i8 %12 to i32
  %13 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %conv3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_fill_tx_fifo.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_fill_tx_fifo, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !140

if.then:                                          ; preds = %xiic_tx_fifo_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 3, i32 9, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_fill_tx_fifo.__UNIQUE_ID_ddebug290, ptr noundef %15, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %13, i32 noundef %conv3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %xiic_tx_fifo_space.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not71 = icmp eq i32 %13, 0
  br i1 %tobool11.not71, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %nmsgs = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 7
  %parent44 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 3, i32 9, i32 1
  br label %while.body

while.body:                                       ; preds = %xiic_setreg16.exit.while.body_crit_edge, %while.body.lr.ph
  %dec72.in = phi i32 [ %13, %while.body.lr.ph ], [ %dec72, %xiic_setreg16.exit.while.body_crit_edge ]
  %dec72 = add i32 %dec72.in, -1
  %16 = ptrtoint ptr %tx_msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_msg, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %20 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_pos, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tx_pos, align 8
  %arrayidx = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %23 to i16
  %len16 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len16, align 4
  %conv17 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv17)
  %cmp20 = icmp eq i32 %inc, %conv17
  br i1 %cmp20, label %land.lhs.true, label %while.body.if.end48_crit_edge

while.body.if.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true:                                    ; preds = %while.body
  %26 = ptrtoint ptr %nmsgs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nmsgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp22 = icmp eq i32 %27, 1
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i16 %conv14, 512
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_fill_tx_fifo.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_fill_tx_fifo, %if.end48)) #8
          to label %if.then41 [label %if.end48], !srcloc !140

if.then41:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %parent44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent44, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_fill_tx_fifo.__UNIQUE_ID_ddebug291, ptr noundef %29, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %if.then24, %land.lhs.true.if.end48_crit_edge, %while.body.if.end48_crit_edge
  %data.0 = phi i16 [ %or, %if.then41 ], [ %conv14, %land.lhs.true.if.end48_crit_edge ], [ %conv14, %while.body.if.end48_crit_edge ], [ %or, %if.then24 ]
  %30 = ptrtoint ptr %endianness.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %endianness.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %34 = tail call i16 @llvm.bswap.i16(i16 %data.0) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %34) #8, !srcloc !149
  br label %xiic_setreg16.exit

do.body.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %36, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %data.0) #8, !srcloc !149
  br label %xiic_setreg16.exit

xiic_setreg16.exit:                               ; preds = %do.body.i, %if.then.i
  %tobool11.not = icmp eq i32 %dec72, 0
  br i1 %tobool11.not, label %xiic_setreg16.exit.while.end_crit_edge, label %xiic_setreg16.exit.while.body_crit_edge

xiic_setreg16.exit.while.body_crit_edge:          ; preds = %xiic_setreg16.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

xiic_setreg16.exit.while.end_crit_edge:           ; preds = %xiic_setreg16.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %xiic_setreg16.exit.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xiic_clear_rx_fifo(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %endianness.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %1 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  %base.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %4, i32 260
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i = getelementptr i8, ptr %4, i32 263
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

xiic_getreg8.exit:                                ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i8 [ %5, %if.then.i ], [ %6, %if.else.i ]
  %7 = and i8 %ret.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not27 = icmp eq i8 %7, 0
  br i1 %tobool.not27, label %xiic_getreg8.exit.for.body_crit_edge, label %xiic_getreg8.exit.cleanup_crit_edge

xiic_getreg8.exit.cleanup_crit_edge:              ; preds = %xiic_getreg8.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xiic_getreg8.exit.for.body_crit_edge:             ; preds = %xiic_getreg8.exit
  br label %for.body

for.body:                                         ; preds = %xiic_getreg8.exit26.for.body_crit_edge, %xiic_getreg8.exit.for.body_crit_edge
  %8 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i10 = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i10, label %if.then.i13, label %if.else.i15

if.then.i13:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 268
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit17

if.else.i15:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i14 = getelementptr i8, ptr %11, i32 271
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i14) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit17

xiic_getreg8.exit17:                              ; preds = %if.else.i15, %if.then.i13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %for.inc

do.end:                                           ; preds = %xiic_getreg8.exit17
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.39) #11
  br label %cleanup

for.inc:                                          ; preds = %xiic_getreg8.exit17
  %17 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i19 = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i19, label %if.then.i22, label %if.else.i24

if.then.i22:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i21 = getelementptr i8, ptr %20, i32 260
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i21) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit26

if.else.i24:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i23 = getelementptr i8, ptr %20, i32 263
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i23) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit26

xiic_getreg8.exit26:                              ; preds = %if.else.i24, %if.then.i22
  %ret.0.i25 = phi i8 [ %21, %if.then.i22 ], [ %22, %if.else.i24 ]
  %23 = and i8 %ret.0.i25, 64
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %xiic_getreg8.exit26.for.body_crit_edge, label %xiic_getreg8.exit26.cleanup_crit_edge

xiic_getreg8.exit26.cleanup_crit_edge:            ; preds = %xiic_getreg8.exit26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xiic_getreg8.exit26.for.body_crit_edge:           ; preds = %xiic_getreg8.exit26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %xiic_getreg8.exit26.cleanup_crit_edge, %do.end, %xiic_getreg8.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %xiic_getreg8.exit.cleanup_crit_edge ], [ 0, %xiic_getreg8.exit26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xiic_read_rx(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %endianness.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %base.i = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %3, i32 280
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i = getelementptr i8, ptr %3, i32 283
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit

xiic_getreg8.exit:                                ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i8 [ %4, %if.then.i ], [ %5, %if.else.i ]
  %add = add i8 %ret.0.i, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xiic_read_rx.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xiic_read_rx, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !140

if.then:                                          ; preds = %xiic_getreg8.exit
  %parent = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 3, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %conv6 = zext i8 %add to i32
  %rx_msg = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 8
  %8 = ptrtoint ptr %rx_msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_msg, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  %conv7 = zext i16 %11 to i32
  %rx_pos = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 9
  %12 = ptrtoint ptr %rx_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pos, align 4
  %sub = sub i32 %conv7, %13
  %14 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i69 = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i69, label %if.then.i72, label %if.else.i74

if.then.i72:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i71 = getelementptr i8, ptr %17, i32 260
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i71) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit76

if.else.i74:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i73 = getelementptr i8, ptr %17, i32 263
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i73) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit76

xiic_getreg8.exit76:                              ; preds = %if.else.i74, %if.then.i72
  %ret.0.i75 = phi i8 [ %18, %if.then.i72 ], [ %19, %if.else.i74 ]
  %conv9 = zext i8 %ret.0.i75 to i32
  %20 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i78 = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i78, label %if.then.i81, label %if.else.i83

if.then.i81:                                      ; preds = %xiic_getreg8.exit76
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i80 = getelementptr i8, ptr %23, i32 256
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i80) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit85

if.else.i83:                                      ; preds = %xiic_getreg8.exit76
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i82 = getelementptr i8, ptr %23, i32 259
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i82) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit85

xiic_getreg8.exit85:                              ; preds = %if.else.i83, %if.then.i81
  %ret.0.i84 = phi i8 [ %24, %if.then.i81 ], [ %25, %if.else.i83 ]
  %conv11 = zext i8 %ret.0.i84 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xiic_read_rx.__UNIQUE_ID_ddebug289, ptr noundef %7, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %conv6, i32 noundef %sub, i32 noundef %conv9, i32 noundef %conv11) #8
  br label %do.end

do.end:                                           ; preds = %xiic_getreg8.exit85, %xiic_getreg8.exit
  %conv12 = zext i8 %add to i32
  %rx_msg13 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 8
  %26 = ptrtoint ptr %rx_msg13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_msg13, align 8
  %len14 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %len14 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len14, align 4
  %conv15 = zext i16 %29 to i32
  %rx_pos16 = getelementptr inbounds %struct.xiic_i2c, ptr %i2c, i32 0, i32 9
  %30 = ptrtoint ptr %rx_pos16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_pos16, align 4
  %sub17 = sub i32 %conv15, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %conv12)
  %cmp = icmp slt i32 %sub17, %conv12
  %conv25 = trunc i32 %sub17 to i8
  %spec.select = select i1 %cmp, i8 %conv25, i8 %add
  %conv27 = zext i8 %spec.select to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %cmp28103.not = icmp eq i8 %spec.select, 0
  br i1 %cmp28103.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %xiic_getreg8.exit94.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0104 = phi i32 [ %inc33, %xiic_getreg8.exit94.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %32 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i87 = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i87, label %if.then.i90, label %if.else.i92

if.then.i90:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i89 = getelementptr i8, ptr %35, i32 268
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i89) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit94

if.else.i92:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i91 = getelementptr i8, ptr %35, i32 271
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i91) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %xiic_getreg8.exit94

xiic_getreg8.exit94:                              ; preds = %if.else.i92, %if.then.i90
  %ret.0.i93 = phi i8 [ %36, %if.then.i90 ], [ %37, %if.else.i92 ]
  %38 = ptrtoint ptr %rx_msg13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_msg13, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf, align 4
  %42 = ptrtoint ptr %rx_pos16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_pos16, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %rx_pos16, align 4
  %arrayidx = getelementptr i8, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %ret.0.i93, ptr %arrayidx, align 1
  %inc33 = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc33, %conv27
  br i1 %exitcond.not, label %xiic_getreg8.exit94.for.end_crit_edge, label %xiic_getreg8.exit94.for.body_crit_edge

xiic_getreg8.exit94.for.body_crit_edge:           ; preds = %xiic_getreg8.exit94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

xiic_getreg8.exit94.for.end_crit_edge:            ; preds = %xiic_getreg8.exit94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %xiic_getreg8.exit94.for.end_crit_edge, %do.end.for.end_crit_edge
  %45 = ptrtoint ptr %rx_msg13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_msg13, align 8
  %len35 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %len35 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %len35, align 4
  %conv36 = zext i16 %48 to i32
  %49 = ptrtoint ptr %rx_pos16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_pos16, align 4
  %sub38 = sub i32 %conv36, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub38)
  %cmp39 = icmp sgt i32 %sub38, 16
  %51 = trunc i32 %sub38 to i8
  %phi.cast = add i8 %51, -1
  %cond = select i1 %cmp39, i8 15, i8 %phi.cast
  %52 = ptrtoint ptr %endianness.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %endianness.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i96 = icmp eq i32 %53, 0
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i96, label %if.then.i99, label %if.else.i101

if.then.i99:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i98 = getelementptr i8, ptr %55, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i98, i8 %cond) #8, !srcloc !146
  br label %xiic_setreg8.exit

if.else.i101:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i100 = getelementptr i8, ptr %55, i32 291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i100, i8 %cond) #8, !srcloc !146
  br label %xiic_setreg8.exit

xiic_setreg8.exit:                                ; preds = %if.else.i101, %if.then.i99
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xiic_i2c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xiic_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !121, !122, !123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_i2c_xiic__306_911_xiic_i2c_driver_init6, !1, !"__initcall__kmod_i2c_xiic__306_911_xiic_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 911, i32 1}
!2 = !{ptr @__exitcall_xiic_i2c_driver_exit, !1, !"__exitcall_xiic_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 913, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 914, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 915, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias311, !11, !"__UNIQUE_ID_alias311", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 916, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 905, i32 11}
!14 = !{ptr @xiic_i2c_driver, !15, !"xiic_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 901, i32 31}
!16 = !{ptr @xiic_i2c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 775, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 780, i32 10}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 784, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @xiic_i2c_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @xiic_i2c_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 797, i32 3}
!31 = !{ptr @xiic_i2c_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @xiic_i2c_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 802, i32 44}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 818, i32 3}
!37 = !{ptr @xiic_i2c_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @xiic_i2c_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @xiic_adapter, !40, !"xiic_adapter", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 735, i32 33}
!41 = !{ptr @xiic_algorithm, !42, !"xiic_algorithm", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 726, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 688, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @xiic_xfer.__UNIQUE_ID_ddebug305, !44, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 697, i32 3}
!50 = !{ptr @xiic_xfer._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @xiic_xfer._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @init_completion.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/completion.h", i32 87, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 641, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__xiic_start_xfer.__UNIQUE_ID_ddebug304, !56, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 612, i32 2}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @xiic_start_send.__UNIQUE_ID_ddebug302, !60, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 614, i32 2}
!65 = !{ptr @xiic_start_send.__UNIQUE_ID_ddebug303, !64, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 353, i32 2}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @xiic_fill_tx_fifo.__UNIQUE_ID_ddebug290, !67, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 361, i32 4}
!72 = !{ptr @xiic_fill_tx_fifo.__UNIQUE_ID_ddebug291, !71, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!73 = !{ptr @xiic_quirks, !74, !"xiic_quirks", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 731, i32 40}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 395, i32 2}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @xiic_process.__UNIQUE_ID_ddebug292, !76, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 397, i32 2}
!81 = !{ptr @xiic_process.__UNIQUE_ID_ddebug293, !80, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 412, i32 3}
!84 = !{ptr @xiic_process.__UNIQUE_ID_ddebug294, !83, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 434, i32 4}
!87 = !{ptr @xiic_process.__UNIQUE_ID_ddebug295, !86, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 448, i32 4}
!90 = !{ptr @xiic_process.__UNIQUE_ID_ddebug296, !89, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 459, i32 5}
!93 = !{ptr @xiic_process.__UNIQUE_ID_ddebug297, !92, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 490, i32 4}
!96 = !{ptr @xiic_process.__UNIQUE_ID_ddebug298, !95, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 499, i32 4}
!99 = !{ptr @xiic_process.__UNIQUE_ID_ddebug299, !98, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 509, i32 5}
!102 = !{ptr @xiic_process.__UNIQUE_ID_ddebug300, !101, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 520, i32 2}
!105 = !{ptr @xiic_process.__UNIQUE_ID_ddebug301, !104, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 268, i32 4}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @xiic_clear_rx_fifo._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @xiic_clear_rx_fifo._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 322, i32 2}
!113 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @xiic_read_rx.__UNIQUE_ID_ddebug289, !112, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!115 = !{ptr @xiic_of_match, !116, !"xiic_of_match", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 867, i32 34}
!117 = !{ptr @xiic_dev_pm_ops, !118, !"xiic_dev_pm_ops", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 897, i32 32}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/i2c/busses/i2c-xiic.c", i32 890, i32 3}
!121 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @xiic_i2c_runtime_resume._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @xiic_i2c_runtime_resume._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2154402432}
!134 = !{i64 6867800}
!135 = !{i64 2154401077}
!136 = !{i64 2155614735}
!137 = !{i64 2148232533}
!138 = !{i64 717356, i64 717381, i64 717403, i64 717419, i64 717431, i64 717451, i64 717475, i64 717491, i64 717503}
!139 = !{i64 2148232721}
!140 = !{i64 2148714929, i64 2148714934, i64 2148714947, i64 2148714991, i64 2148715025, i64 2148715046}
!141 = !{i64 6867998}
!142 = !{i64 2154399853}
!143 = !{i64 2155614199}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{i64 2154401458}
!146 = !{i64 6867603}
!147 = !{i8 0, i8 2}
!148 = !{i64 2154401882}
!149 = !{i64 6867180}
!150 = !{i64 2155613717}
