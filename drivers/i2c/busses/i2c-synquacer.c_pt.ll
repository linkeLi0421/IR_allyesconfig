; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-synquacer.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-synquacer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.synquacer_i2c = type { %struct.completion, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.i2c_adapter }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_synquacer__312_655_synquacer_i2c_driver_init6 = internal global ptr @synquacer_i2c_driver_init, section ".initcall6.init", align 4
@synquacer_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @synquacer_i2c_probe, ptr @synquacer_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @synquacer_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_synquacer_i2c_driver_exit = internal global ptr @synquacer_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [47 x i8] c"i2c_synquacer.author=Fujitsu Semiconductor Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [57 x i8] c"i2c_synquacer.description=Socionext SynQuacer I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [52 x i8] c"i2c_synquacer.file=drivers/i2c/busses/i2c-synquacer\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [29 x i8] c"i2c_synquacer.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"synquacer_i2c\00", [18 x i8] zeroinitializer }, align 32
@synquacer_i2c_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,synquacer-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"socionext,pclk-rate\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@synquacer_i2c_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 -117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_synquacer\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"synquacer_i2c_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/i2c/busses/i2c-synquacer.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clock source %p\0A\00", [47 x i8] zeroinitializer }, align 32
@synquacer_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 562, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable clock (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@synquacer_i2c_probe._entry_ptr = internal global ptr @synquacer_i2c_probe._entry, section ".printk_index", align 4
@synquacer_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 571, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCLK missing or out of range (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@synquacer_i2c_probe._entry_ptr.13 = internal global ptr @synquacer_i2c_probe._entry.11, section ".printk_index", align 4
@synquacer_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 586, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot claim IRQ %d\0A\00", [43 x i8] zeroinitializer }, align 32
@synquacer_i2c_probe._entry_ptr.16 = internal global ptr @synquacer_i2c_probe._entry.14, section ".printk_index", align 4
@synquacer_i2c_ops = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @synquacer_i2c_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 5, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"synquacer_i2c-adapter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@synquacer_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 609, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add bus to i2c core\0A\00", [33 x i8] zeroinitializer }, align 32
@synquacer_i2c_probe._entry_ptr.19 = internal global ptr @synquacer_i2c_probe._entry.17, section ".printk_index", align 4
@synquacer_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 616, ptr @.str.22, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: synquacer_i2c adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@synquacer_i2c_probe._entry_ptr.23 = internal global ptr @synquacer_i2c_probe._entry.20, section ".printk_index", align 4
@synquacer_i2c_isr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.25, i8 0, i8 91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"synquacer_i2c_isr\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bsr:0x%02x, bcr:0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.6, i32 370, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus error\0A\00", [21 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr._entry_ptr = internal global ptr @synquacer_i2c_isr._entry, section ".printk_index", align 4
@synquacer_i2c_isr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.27, i8 0, i8 94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arbitration lost\0A\00", [46 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.28, i8 0, i8 96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ack was not received\0A\00", [42 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.29, i8 0, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WRITE: No Ack\0A\00", [17 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.30, i8 0, i8 106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WRITE: Next Message\0A\00", [43 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.31, i8 0, i8 108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"restart error (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.32, i8 0, i8 111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"address:0x%02x. ignore it.\0A\00", [36 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.33, i8 0, i8 116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"READ: Send Stop\0A\00", [47 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.34, i8 0, i8 117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"READ: Next Transfer\0A\00", [43 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.31, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@synquacer_i2c_isr._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.6, i32 485, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"called in err STATE (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@synquacer_i2c_isr._entry_ptr.37 = internal global ptr @synquacer_i2c_isr._entry.35, section ".printk_index", align 4
@synquacer_i2c_master_start.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.39, i8 0, i8 66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"synquacer_i2c_master_start\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slave:0x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@synquacer_i2c_master_start.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.25, i8 0, i8 67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@synquacer_i2c_master_start.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.40, i8 0, i8 68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bus is busy\00", [20 x i8] zeroinitializer }, align 32
@synquacer_i2c_master_start.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.41, i8 0, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Continuous Start\00", [47 x i8] zeroinitializer }, align 32
@synquacer_i2c_master_start.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.42, i8 0, i8 71, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"not in master mode\00", [45 x i8] zeroinitializer }, align 32
@synquacer_i2c_master_start.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.43, i8 0, i8 71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Start Condition\00", [16 x i8] zeroinitializer }, align 32
@synquacer_i2c_master_start.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.25, i8 0, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@synquacer_i2c_master_start.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.27, i8 0, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@synquacer_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @synquacer_i2c_xfer, ptr null, ptr null, ptr null, ptr @synquacer_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@synquacer_i2c_xfer.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.44, ptr @.str.6, ptr @.str.45, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"synquacer_i2c_xfer\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"calculated timeout %d ms\0A\00", [38 x i8] zeroinitializer }, align 32
@synquacer_i2c_xfer.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.44, ptr @.str.6, ptr @.str.46, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Retrying transmission (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@synquacer_i2c_doxfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 320, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get bus (bus busy)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"synquacer_i2c_doxfer\00", [43 x i8] zeroinitializer }, align 32
@synquacer_i2c_doxfer._entry_ptr = internal global ptr @synquacer_i2c_doxfer._entry, section ".printk_index", align 4
@synquacer_i2c_doxfer.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 0, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Address failed: (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@synquacer_i2c_doxfer.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.50, i8 0, i8 85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeout\0A\00", [23 x i8] zeroinitializer }, align 32
@synquacer_i2c_doxfer.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.51, i8 0, i8 86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"incomplete xfer (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 400]
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"synquacer_i2c_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 646, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 650, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"synquacer_i2c_dt_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 632, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 547, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 550, i32 39 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 553, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 557, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 561, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 570, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 586, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"synquacer_i2c_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 528, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 609, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 615, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 367, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 370, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 376, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 384, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 405, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 425, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 434, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 446, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 466, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 470, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 485, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 265, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 274, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 279, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 284, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 287, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"synquacer_i2c_algo\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 523, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 504, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 511, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 320, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 334, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 341, i32 3 }
@___asan_gen_.214 = private constant [38 x i8] c"../drivers/i2c/busses/i2c-synquacer.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 347, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 87, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_synquacer_i2c_driver_exit, ptr @__initcall__kmod_i2c_synquacer__312_655_synquacer_i2c_driver_init6, ptr @synquacer_i2c_doxfer._entry, ptr @synquacer_i2c_doxfer._entry_ptr, ptr @synquacer_i2c_driver_exit, ptr @synquacer_i2c_isr._entry, ptr @synquacer_i2c_isr._entry.35, ptr @synquacer_i2c_isr._entry_ptr, ptr @synquacer_i2c_isr._entry_ptr.37, ptr @synquacer_i2c_probe._entry, ptr @synquacer_i2c_probe._entry.11, ptr @synquacer_i2c_probe._entry.14, ptr @synquacer_i2c_probe._entry.17, ptr @synquacer_i2c_probe._entry.20, ptr @synquacer_i2c_probe._entry_ptr, ptr @synquacer_i2c_probe._entry_ptr.13, ptr @synquacer_i2c_probe._entry_ptr.16, ptr @synquacer_i2c_probe._entry_ptr.19, ptr @synquacer_i2c_probe._entry_ptr.23, ptr @synquacer_i2c_driver, ptr @.str, ptr @synquacer_i2c_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @synquacer_i2c_ops, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @synquacer_i2c_algo, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @init_completion.__key, ptr @.str.52], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_ops to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_isr._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_i2c_doxfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @synquacer_i2c_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synquacer_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @synquacer_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bus_speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_speed) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1464, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %bus_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bus_speed, align 4
  %call.i174 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %bus_speed, i32 noundef 1) #6
  %pclkrate = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 9
  %call.i175 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %pclkrate, i32 noundef 1) #6
  %call11 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %pclk = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call11, ptr %pclk, align 4
  %cmp = icmp eq ptr %call11, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %call11, null
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end15.if.end40_crit_edge, label %do.body

if.end15.if.end40_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.body:                                          ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_probe, %do.end)) #6
          to label %if.then24 [label %do.end], !srcloc !148

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_probe.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i176 = call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool.not.i177, label %if.end.i, label %do.end.do.end34_crit_edge

do.end.do.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.end.i:                                         ; preds = %do.end
  %call1.i = call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end36, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end34

do.end34:                                         ; preds = %if.then3.i, %do.end.do.end34_crit_edge
  %retval.0.i178.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i176, %do.end.do.end34_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i178.ph) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  %call38 = call i32 @clk_get_rate(ptr noundef %7) #6
  %8 = ptrtoint ptr %pclkrate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call38, ptr %pclkrate, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end36, %if.end15.if.end40_crit_edge
  %9 = ptrtoint ptr %pclkrate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pclkrate, align 8
  %11 = add i32 %10, -200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -186000001, i32 %11)
  %12 = icmp ult i32 %11, -186000001
  br i1 %12, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %10) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  %call52 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call52, ptr %base, align 8
  %cmp.i179 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call52 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %call59 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call59, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp61 = icmp slt i32 %call59, 0
  br i1 %cmp61, label %if.end58.cleanup_crit_edge, label %if.end64

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end58
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i180 = icmp eq ptr %17, null
  br i1 %tobool.not.i180, label %if.end.i181, label %if.end64.dev_name.exit_crit_edge

if.end64.dev_name.exit_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i181:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i181, %if.end64.dev_name.exit_crit_edge
  %retval.0.i182 = phi ptr [ %19, %if.end.i181 ], [ %17, %if.end64.dev_name.exit_crit_edge ]
  %call.i183 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call59, ptr noundef nonnull @synquacer_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i182, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %cmp70 = icmp slt i32 %call.i183, 0
  br i1 %cmp70, label %do.end74, label %if.end77

do.end74:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %21) #9
  br label %cleanup

if.end77:                                         ; preds = %dev_name.exit
  %state = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 12
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state, align 4
  %dev79 = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %dev79 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev79, align 4
  %adapter = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 13
  %24 = call ptr @memcpy(ptr %adapter, ptr @synquacer_i2c_ops, i32 1360)
  %driver_data.i.i = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 13, i32 9, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev83 = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 13, i32 9
  %parent = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 13, i32 9, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %of_node87 = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 13, i32 9, i32 27
  %29 = ptrtoint ptr %of_node87 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %of_node87, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 13, i32 11
  %32 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %nr, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %call.i, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %call.i, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #6
  %34 = ptrtoint ptr %bus_speed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bus_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %35)
  %cmp92 = icmp ult i32 %35, 400000
  %spec.select = select i1 %cmp92, i32 100, i32 400
  %36 = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 10
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %36, align 4
  call fastcc void @synquacer_i2c_hw_init(ptr noundef nonnull %call.i)
  %call97 = call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end104:                                        ; preds = %if.end77
  %driver_data.i.i184 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i184 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i184, align 4
  %init_name.i185 = getelementptr inbounds %struct.synquacer_i2c, ptr %call.i, i32 0, i32 13, i32 9, i32 3
  %39 = ptrtoint ptr %init_name.i185 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i185, align 8
  %tobool.not.i186 = icmp eq ptr %40, null
  br i1 %tobool.not.i186, label %if.end.i187, label %if.end104.dev_name.exit189_crit_edge

if.end104.dev_name.exit189_crit_edge:             ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit189

if.end.i187:                                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev83, align 4
  br label %dev_name.exit189

dev_name.exit189:                                 ; preds = %if.end.i187, %if.end104.dev_name.exit189_crit_edge
  %retval.0.i188 = phi ptr [ %42, %if.end.i187 ], [ %40, %if.end104.dev_name.exit189_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i188) #9
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit189, %do.end102, %do.end74, %if.end58.cleanup_crit_edge, %if.then55, %do.end48, %do.end34, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end48 ], [ %14, %if.then55 ], [ %call.i183, %do.end74 ], [ %call97, %do.end102 ], [ 0, %dev_name.exit189 ], [ %retval.0.i178.ph, %do.end34 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ], [ %call59, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_speed) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.synquacer_i2c, ptr %1, i32 0, i32 13
  tail call void @i2c_del_adapter(ptr noundef %adapter) #6
  %pclk = getelementptr inbounds %struct.synquacer_i2c, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_i2c_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %conv = zext i8 %5 to i32
  %conv14 = zext i8 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv14) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv15 = zext i8 %2 to i32
  %and = and i32 %conv15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %8 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #6, !srcloc !153
  %state.i = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 12
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state.i, align 4
  %msg_ptr.i = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 4
  %13 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msg_ptr.i, align 4
  %msg.i = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 1
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %msg.i, align 8
  %msg_idx.i = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 3
  %msg_num.i = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 2
  %15 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %msg_num.i, align 4
  %16 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -11, ptr %msg_idx.i, align 8
  tail call void @complete(ptr noundef %dev_id) #6
  br label %cond.false8.i

if.end22:                                         ; preds = %do.end
  %conv23 = zext i8 %5 to i32
  %and24 = and i32 %conv23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp ne i32 %and24, 0
  %and27 = and i32 %conv15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %do.body30, label %if.end49

do.body30:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end48)) #6
          to label %if.then44 [label %do.end48], !srcloc !148

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %dev45 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %17 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug300, ptr noundef %18, ptr noundef nonnull @.str.27) #6
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %do.body30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 8
  %add.ptr.i422 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i422, i8 0) #6, !srcloc !153
  %state.i423 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 12
  %21 = ptrtoint ptr %state.i423 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state.i423, align 4
  %msg_ptr.i424 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 4
  %22 = ptrtoint ptr %msg_ptr.i424 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msg_ptr.i424, align 4
  %msg.i425 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 1
  %23 = ptrtoint ptr %msg.i425 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %msg.i425, align 8
  %msg_idx.i426 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 3
  %msg_num.i428 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 2
  %24 = ptrtoint ptr %msg_num.i428 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %msg_num.i428, align 4
  %25 = ptrtoint ptr %msg_idx.i426 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -11, ptr %msg_idx.i426, align 8
  tail call void @complete(ptr noundef %dev_id) #6
  br label %cond.false8.i

if.end49:                                         ; preds = %if.end22
  %state = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 12
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %do.end318 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb93
    i32 2, label %sw.bb185
  ]

sw.bb:                                            ; preds = %if.end49
  %and51 = and i32 %conv23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end73, label %do.body54

do.body54:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end72)) #6
          to label %if.then68 [label %do.end72], !srcloc !148

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %dev69 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %29 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev69, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug301, ptr noundef %30, ptr noundef nonnull @.str.28) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then68, %do.body54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 8
  %add.ptr.i430 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i430, i8 0) #6, !srcloc !153
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state, align 4
  %msg_ptr.i432 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 4
  %34 = ptrtoint ptr %msg_ptr.i432 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %msg_ptr.i432, align 4
  %msg.i433 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 1
  %35 = ptrtoint ptr %msg.i433 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %msg.i433, align 8
  %msg_idx.i434 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 3
  %msg_num.i436 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 2
  %36 = ptrtoint ptr %msg_num.i436 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %msg_num.i436, align 4
  %37 = ptrtoint ptr %msg_idx.i434 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -11, ptr %msg_idx.i434, align 8
  tail call void @complete(ptr noundef %dev_id) #6
  br label %cond.false8.i

if.end73:                                         ; preds = %sw.bb
  %msg = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 1
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags, align 2
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool76.not = icmp eq i16 %42, 0
  %. = select i1 %tobool76.not, i32 3, i32 2
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %., ptr %state, align 4
  %msg_idx.i437 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 3
  %44 = ptrtoint ptr %msg_idx.i437 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_idx.i437, align 8
  %msg_num.i438 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 2
  %46 = ptrtoint ptr %msg_num.i438 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_num.i438, align 4
  %sub.i = add i32 %47, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sub.i)
  %cmp.i.not = icmp ult i32 %45, %sub.i
  br i1 %cmp.i.not, label %if.end73.if.end87_crit_edge, label %land.lhs.true

if.end73.if.end87_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end73
  %len = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 2
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp = icmp eq i16 %49, 0
  br i1 %cmp, label %if.then86, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @synquacer_i2c_stop(ptr noundef %dev_id, i32 noundef 0)
  br label %cond.false8.i

if.end87:                                         ; preds = %land.lhs.true.if.end87_crit_edge, %if.end73.if.end87_crit_edge
  br i1 %tobool76.not, label %if.end87.if.end117_crit_edge, label %if.end87.prepare_read_crit_edge

if.end87.prepare_read_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %prepare_read

if.end87.if.end117_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

sw.bb93:                                          ; preds = %if.end49
  %.pre = and i32 %conv23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br i1 %phi.cmp, label %sw.bb93.if.end117_crit_edge, label %do.body98

sw.bb93.if.end117_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.body98:                                        ; preds = %sw.bb93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end116)) #6
          to label %if.then112 [label %do.end116], !srcloc !148

if.then112:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  %dev113 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %50 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev113, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug302, ptr noundef %51, ptr noundef nonnull @.str.29) #6
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %do.body98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 8
  %add.ptr.i440 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i440, i8 0) #6, !srcloc !153
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %state, align 4
  %msg_ptr.i442 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 4
  %55 = ptrtoint ptr %msg_ptr.i442 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %msg_ptr.i442, align 4
  %msg.i443 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 1
  %56 = ptrtoint ptr %msg.i443 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %msg.i443, align 8
  %msg_idx.i444 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 3
  %msg_num.i446 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 2
  %57 = ptrtoint ptr %msg_num.i446 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %msg_num.i446, align 4
  %58 = ptrtoint ptr %msg_idx.i444 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -11, ptr %msg_idx.i444, align 8
  tail call void @complete(ptr noundef %dev_id) #6
  br label %cond.false8.i

if.end117:                                        ; preds = %sw.bb93.if.end117_crit_edge, %if.end87.if.end117_crit_edge
  %msg_ptr.i447 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 4
  %59 = ptrtoint ptr %msg_ptr.i447 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_ptr.i447, align 4
  %msg.i448 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 1
  %61 = ptrtoint ptr %msg.i448 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %msg.i448, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %len.i, align 4
  %conv.i449 = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv.i449)
  %cmp.i450.not = icmp ult i32 %60, %conv.i449
  br i1 %cmp.i450.not, label %do.body121, label %if.end132

do.body121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %msg.i448 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %msg.i448, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf, align 4
  %69 = ptrtoint ptr %msg_ptr.i447 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_ptr.i447, align 4
  %inc = add i32 %70, 1
  store i32 %inc, ptr %msg_ptr.i447, align 4
  %arrayidx = getelementptr i8, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 1
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 8
  %add.ptr126 = getelementptr i8, ptr %74, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126, i8 %72) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 8
  %add.ptr131 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr131, i8 82) #6, !srcloc !153
  br label %cond.false8.i

if.end132:                                        ; preds = %if.end117
  %msg_idx.i451 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 3
  %77 = ptrtoint ptr %msg_idx.i451 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_idx.i451, align 8
  %msg_num.i452 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 2
  %79 = ptrtoint ptr %msg_num.i452 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_num.i452, align 4
  %sub.i453 = add i32 %80, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %sub.i453)
  %cmp.i454.not = icmp ult i32 %78, %sub.i453
  br i1 %cmp.i454.not, label %do.body137, label %if.then135

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 8
  %add.ptr.i457 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i457, i8 0) #6, !srcloc !153
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %state, align 4
  %84 = ptrtoint ptr %msg_ptr.i447 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %msg_ptr.i447, align 4
  %85 = ptrtoint ptr %msg.i448 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %msg.i448, align 8
  %86 = ptrtoint ptr %msg_idx.i451 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msg_idx.i451, align 8
  %inc.i462 = add i32 %87, 1
  store i32 %inc.i462, ptr %msg_idx.i451, align 8
  %88 = ptrtoint ptr %msg_num.i452 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %msg_num.i452, align 4
  tail call void @complete(ptr noundef %dev_id) #6
  br label %cond.false8.i

do.body137:                                       ; preds = %if.end132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end155)) #6
          to label %if.then151 [label %do.end155], !srcloc !148

if.then151:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #8
  %dev152 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %89 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev152, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug303, ptr noundef %90, ptr noundef nonnull @.str.30) #6
  br label %do.end155

do.end155:                                        ; preds = %if.then151, %do.body137
  %91 = ptrtoint ptr %msg_ptr.i447 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %msg_ptr.i447, align 4
  %92 = ptrtoint ptr %msg_idx.i451 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_idx.i451, align 8
  %inc157 = add i32 %93, 1
  store i32 %inc157, ptr %msg_idx.i451, align 8
  %94 = ptrtoint ptr %msg.i448 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %msg.i448, align 8
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %95, i32 1
  store ptr %incdec.ptr, ptr %msg.i448, align 8
  %call160 = tail call fastcc i32 @synquacer_i2c_master_start(ptr noundef %dev_id, ptr noundef %incdec.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %do.body164, label %if.end183

do.body164:                                       ; preds = %do.end155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end182)) #6
          to label %if.then178 [label %do.end182], !srcloc !148

if.then178:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #8
  %dev179 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %96 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev179, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug304, ptr noundef %97, ptr noundef nonnull @.str.31, i32 noundef %call160) #6
  br label %do.end182

do.end182:                                        ; preds = %if.then178, %do.body164
  tail call fastcc void @synquacer_i2c_stop(ptr noundef %dev_id, i32 noundef -11)
  br label %cond.false8.i

if.end183:                                        ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %state, align 4
  br label %cond.false8.i

sw.bb185:                                         ; preds = %if.end49
  %99 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base, align 8
  %add.ptr189 = getelementptr i8, ptr %100, i32 16
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr189) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %and194 = and i32 %conv23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.then196, label %do.body203

if.then196:                                       ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #8
  %msg197 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 1
  %102 = ptrtoint ptr %msg197 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %msg197, align 8
  %buf198 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %buf198 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buf198, align 4
  %msg_ptr199 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 4
  %106 = ptrtoint ptr %msg_ptr199 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %msg_ptr199, align 4
  %inc200 = add i32 %107, 1
  store i32 %inc200, ptr %msg_ptr199, align 4
  %arrayidx201 = getelementptr i8, ptr %105, i32 %107
  %108 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %101, ptr %arrayidx201, align 1
  br label %prepare_read

do.body203:                                       ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %prepare_read)) #6
          to label %if.then217 [label %prepare_read], !srcloc !148

if.then217:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  %dev218 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %109 = ptrtoint ptr %dev218 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev218, align 4
  %conv219 = zext i8 %101 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug305, ptr noundef %110, ptr noundef nonnull @.str.32, i32 noundef %conv219) #6
  br label %prepare_read

prepare_read:                                     ; preds = %if.then217, %do.body203, %if.then196, %if.end87.prepare_read_crit_edge
  %msg_ptr.i464 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 4
  %111 = ptrtoint ptr %msg_ptr.i464 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msg_ptr.i464, align 4
  %msg.i465 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 1
  %113 = ptrtoint ptr %msg.i465 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %msg.i465, align 8
  %len.i466 = getelementptr inbounds %struct.i2c_msg, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %len.i466 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %len.i466, align 4
  %conv.i467 = zext i16 %116 to i32
  %sub.i468 = add nsw i32 %conv.i467, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %sub.i468)
  %cmp.i469.not = icmp eq i32 %112, %sub.i468
  br i1 %cmp.i469.not, label %do.body227, label %if.end232

do.body227:                                       ; preds = %prepare_read
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %117 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base, align 8
  %add.ptr231 = getelementptr i8, ptr %118, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr231, i8 82) #6, !srcloc !153
  br label %cond.false8.i

if.end232:                                        ; preds = %prepare_read
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %conv.i467)
  %cmp.i475.not = icmp ult i32 %112, %conv.i467
  br i1 %cmp.i475.not, label %do.body236, label %if.end241

do.body236:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %119 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base, align 8
  %add.ptr240 = getelementptr i8, ptr %120, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr240, i8 90) #6, !srcloc !153
  br label %cond.false8.i

if.end241:                                        ; preds = %if.end232
  %msg_idx.i477 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 3
  %121 = ptrtoint ptr %msg_idx.i477 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %msg_idx.i477, align 8
  %msg_num.i478 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 2
  %123 = ptrtoint ptr %msg_num.i478 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %msg_num.i478, align 4
  %sub.i479 = add i32 %124, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %sub.i479)
  %cmp.i480.not = icmp ult i32 %122, %sub.i479
  br i1 %cmp.i480.not, label %do.body265, label %do.body245

do.body245:                                       ; preds = %if.end241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end263)) #6
          to label %if.then259 [label %do.end263], !srcloc !148

if.then259:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #8
  %dev260 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %125 = ptrtoint ptr %dev260 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev260, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug306, ptr noundef %126, ptr noundef nonnull @.str.33) #6
  br label %do.end263

do.end263:                                        ; preds = %if.then259, %do.body245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %127 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base, align 8
  %add.ptr.i483 = getelementptr i8, ptr %128, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i483, i8 0) #6, !srcloc !153
  %129 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %state, align 4
  %130 = ptrtoint ptr %msg_ptr.i464 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %msg_ptr.i464, align 4
  %131 = ptrtoint ptr %msg.i465 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %msg.i465, align 8
  %132 = ptrtoint ptr %msg_idx.i477 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %msg_idx.i477, align 8
  %inc.i488 = add i32 %133, 1
  store i32 %inc.i488, ptr %msg_idx.i477, align 8
  %134 = ptrtoint ptr %msg_num.i478 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %msg_num.i478, align 4
  tail call void @complete(ptr noundef %dev_id) #6
  br label %cond.false8.i

do.body265:                                       ; preds = %if.end241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end283)) #6
          to label %if.then279 [label %do.end283], !srcloc !148

if.then279:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #8
  %dev280 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %135 = ptrtoint ptr %dev280 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev280, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug307, ptr noundef %136, ptr noundef nonnull @.str.34) #6
  br label %do.end283

do.end283:                                        ; preds = %if.then279, %do.body265
  %137 = ptrtoint ptr %msg_ptr.i464 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %msg_ptr.i464, align 4
  %138 = ptrtoint ptr %msg_idx.i477 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %msg_idx.i477, align 8
  %inc286 = add i32 %139, 1
  store i32 %inc286, ptr %msg_idx.i477, align 8
  %140 = ptrtoint ptr %msg.i465 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %msg.i465, align 8
  %incdec.ptr288 = getelementptr %struct.i2c_msg, ptr %141, i32 1
  store ptr %incdec.ptr288, ptr %msg.i465, align 8
  %call290 = tail call fastcc i32 @synquacer_i2c_master_start(ptr noundef %dev_id, ptr noundef %incdec.ptr288)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %cmp291 = icmp slt i32 %call290, 0
  br i1 %cmp291, label %do.body294, label %if.else313

do.body294:                                       ; preds = %do.end283
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_isr, %do.end312)) #6
          to label %if.then308 [label %do.end312], !srcloc !148

if.then308:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #8
  %dev309 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %142 = ptrtoint ptr %dev309 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev309, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_isr.__UNIQUE_ID_ddebug308, ptr noundef %143, ptr noundef nonnull @.str.31, i32 noundef %call290) #6
  br label %do.end312

do.end312:                                        ; preds = %if.then308, %do.body294
  tail call fastcc void @synquacer_i2c_stop(ptr noundef %dev_id, i32 noundef -11)
  br label %cond.false8.i

if.else313:                                       ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %state, align 4
  br label %cond.false8.i

do.end318:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %dev319 = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 6
  %145 = ptrtoint ptr %dev319 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev319, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.36, i32 noundef %27) #9
  br label %cond.false8.i

cond.false8.i:                                    ; preds = %do.end318, %if.else313, %do.end312, %do.end263, %do.body236, %do.body227, %if.end183, %do.end182, %if.then135, %do.body121, %do.end116, %if.then86, %do.end72, %do.end48, %do.end20
  %pclkrate = getelementptr inbounds %struct.synquacer_i2c, ptr %dev_id, i32 0, i32 9
  %147 = ptrtoint ptr %pclkrate to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pclkrate, align 8
  %sub = add i32 %148, 999999999
  %div = udiv i32 %sub, %148
  %sub323 = add i32 %div, 9
  %div324 = udiv i32 %sub323, 10
  %sub.i490 = add nuw nsw i32 %div324, 1009
  %div.i = udiv i32 %sub.i490, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %149(i32 noundef %div.i) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @synquacer_i2c_hw_init(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pclkrate = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 9
  %0 = ptrtoint ptr %pclkrate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pclkrate, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %pclkrate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pclkrate, align 8
  %div = udiv i32 %5, 20000000
  %6 = trunc i32 %div to i8
  %conv = add nuw i8 %6, 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 8
  %add.ptr6 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %conv) #6, !srcloc !153
  %speed_khz = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 10
  %9 = ptrtoint ptr %speed_khz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed_khz, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %10, label %do.end109 [
    i32 400, label %sw.bb
    i32 100, label %sw.bb52
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %pclkrate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pclkrate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000001, i32 %13)
  %cmp = icmp ult i32 %13, 18000001
  %sub = add i32 %1, 399999
  %div10 = udiv i32 %sub, 400000
  %sub11 = shl nuw nsw i32 %div10, 1
  %sub13 = add nsw i32 %sub11, -2
  %div14 = udiv i32 %sub13, 3
  %sub15 = add nsw i32 %div14, -1
  %shr = lshr i32 %sub15, 5
  %14 = trunc i32 %shr to i8
  %conv38 = and i8 %14, 63
  %csr_cs.0 = select i1 %cmp, i8 0, i8 %conv38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @arm_heavy_mb() #6
  %15 = trunc i32 %sub15 to i8
  %16 = and i8 %15, 31
  %conv44 = or i8 %16, 96
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 8
  %add.ptr46 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 %conv44) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 8
  %add.ptr51 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 %csr_cs.0) #6, !srcloc !153
  br label %do.body122

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pclkrate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pclkrate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000001, i32 %22)
  %cmp54 = icmp ult i32 %22, 18000001
  %sub58 = add i32 %1, 99999
  %div59 = udiv i32 %sub58, 100000
  %sub62 = add nsw i32 %div59, -1
  %div63153 = lshr i32 %sub62, 1
  %sub64 = add nuw i32 %div63153, 31
  %sub75 = add nsw i32 %div63153, -1
  %shr86 = lshr i32 %sub75, 5
  %23 = trunc i32 %shr86 to i8
  %conv88 = and i8 %23, 63
  %csr_cs.1 = select i1 %cmp54, i8 0, i8 %conv88
  %ccr_cs.1.in = select i1 %cmp54, i32 %sub64, i32 %sub75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %24 = trunc i32 %ccr_cs.1.in to i8
  %25 = and i8 %24, 31
  %conv95 = or i8 %25, 32
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr97 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr97, i8 %conv95) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 8
  %add.ptr102 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102, i8 %csr_cs.1) #6, !srcloc !153
  br label %do.body122

do.end109:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 241, i32 noundef 9, ptr noundef null) #6
  br label %do.body122

do.body122:                                       ; preds = %do.end109, %sw.bb52, %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 8
  %add.ptr126 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126, i8 0) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %add.ptr131 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr131, i8 0) #6, !srcloc !153
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @synquacer_i2c_stop(ptr noundef %i2c, i32 noundef %ret) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 7
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #6, !srcloc !153
  %state = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %msg_ptr = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 4
  %3 = ptrtoint ptr %msg_ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %msg_ptr, align 4
  %msg = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 1
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %msg, align 8
  %msg_idx = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 3
  %5 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_idx, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %msg_idx, align 8
  %msg_num = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 2
  %7 = ptrtoint ptr %msg_num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %tobool.not = icmp eq i32 %ret, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %msg_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ret, ptr %msg_idx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @complete(ptr noundef %i2c) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synquacer_i2c_master_start(ptr nocapture noundef readonly %i2c, ptr nocapture noundef readonly %pmsg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %0 = ptrtoint ptr %pmsg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pmsg, align 4
  %conv.i = trunc i16 %1 to i8
  %shl.i = shl i8 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %pmsg, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, 1
  %or.i = or i8 %5, %shl.i
  %base = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 7
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %or.i) #6, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_master_start, %do.end7)) #6
          to label %if.then [label %do.end7], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %pmsg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pmsg, align 4
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_master_start.__UNIQUE_ID_ddebug288, ptr noundef %9, ptr noundef nonnull @.str.39, i32 noundef %conv) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 8
  %add.ptr16 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_master_start, %do.end40)) #6
          to label %if.then34 [label %do.end40], !srcloc !148

if.then34:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %18 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev35, align 4
  %conv36 = zext i8 %14 to i32
  %conv37 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_master_start.__UNIQUE_ID_ddebug289, ptr noundef %19, ptr noundef nonnull @.str.25, i32 noundef %conv36, i32 noundef %conv37) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool42.not = icmp sgt i8 %14, -1
  %tobool42.not.not = xor i1 %tobool42.not, true
  %20 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool45.not = icmp eq i8 %20, 0
  %or.cond = select i1 %tobool42.not.not, i1 %tobool45.not, i1 false
  br i1 %or.cond, label %do.body47, label %if.end66

do.body47:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_master_start, %cleanup)) #6
          to label %if.then61 [label %cleanup], !srcloc !148

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %dev62 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %21 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_master_start.__UNIQUE_ID_ddebug290, ptr noundef %22, ptr noundef nonnull @.str.40) #6
  br label %cleanup

if.end66:                                         ; preds = %do.end40
  br i1 %tobool42.not, label %if.else, label %do.body71

do.body71:                                        ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_master_start, %do.body90)) #6
          to label %if.then85 [label %do.body90], !srcloc !148

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  %dev86 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %23 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_master_start.__UNIQUE_ID_ddebug291, ptr noundef %24, ptr noundef nonnull @.str.41) #6
  br label %do.body90

do.body90:                                        ; preds = %if.then85, %do.body71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %25 = or i8 %17, 32
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr96 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96, i8 %25) #6, !srcloc !153
  br label %cond.false8.i

if.else:                                          ; preds = %if.end66
  br i1 %tobool45.not, label %do.body121, label %do.body101

do.body101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_master_start, %cleanup)) #6
          to label %if.then115 [label %cleanup], !srcloc !148

if.then115:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  %dev116 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %28 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev116, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_master_start.__UNIQUE_ID_ddebug292, ptr noundef %29, ptr noundef nonnull @.str.42) #6
  br label %cleanup

do.body121:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_master_start, %do.body140)) #6
          to label %if.then135 [label %do.body140], !srcloc !148

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #8
  %dev136 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %30 = ptrtoint ptr %dev136 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev136, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_master_start.__UNIQUE_ID_ddebug293, ptr noundef %31, ptr noundef nonnull @.str.43) #6
  br label %do.body140

do.body140:                                       ; preds = %if.then135, %do.body121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %or146 = or i8 %17, 82
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %add.ptr149 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr149, i8 %or146) #6, !srcloc !153
  br label %cond.false8.i

cond.false8.i:                                    ; preds = %do.body140, %do.body90
  %pclkrate = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 9
  %34 = ptrtoint ptr %pclkrate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pclkrate, align 8
  %sub = add i32 %35, 999999999
  %div = udiv i32 %sub, %35
  %sub153 = add i32 %div, 9
  %div154 = udiv i32 %sub153, 10
  %sub.i = add nuw nsw i32 %div154, 1009
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %div.i) #6
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 8
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %38) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 8
  %add.ptr166 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr166) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_master_start, %do.end190)) #6
          to label %if.then184 [label %do.end190], !srcloc !148

if.then184:                                       ; preds = %cond.false8.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev185 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %43 = ptrtoint ptr %dev185 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev185, align 4
  %conv186 = zext i8 %39 to i32
  %conv187 = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_master_start.__UNIQUE_ID_ddebug294, ptr noundef %44, ptr noundef nonnull @.str.25, i32 noundef %conv186, i32 noundef %conv187) #6
  br label %do.end190

do.end190:                                        ; preds = %if.then184, %cond.false8.i
  %45 = and i8 %39, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool193.not = icmp ne i8 %45, 0
  %46 = and i8 %42, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool196.not = icmp eq i8 %46, 0
  %or.cond246 = select i1 %tobool193.not, i1 true, i1 %tobool196.not
  br i1 %or.cond246, label %do.body198, label %do.end190.cleanup_crit_edge

do.end190.cleanup_crit_edge:                      ; preds = %do.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body198:                                       ; preds = %do.end190
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_master_start, %cleanup)) #6
          to label %if.then212 [label %cleanup], !srcloc !148

if.then212:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #8
  %dev213 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %47 = ptrtoint ptr %dev213 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev213, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_master_start.__UNIQUE_ID_ddebug295, ptr noundef %48, ptr noundef nonnull @.str.27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then212, %do.body198, %do.end190.cleanup_crit_edge, %if.then115, %do.body101, %if.then61, %do.body47
  %retval.0 = phi i32 [ -16, %if.then61 ], [ -11, %if.then115 ], [ -11, %if.then212 ], [ 0, %do.end190.cleanup_crit_edge ], [ -16, %do.body47 ], [ -11, %do.body101 ], [ -11, %do.body198 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp1.i = icmp sgt i32 %num, 0
  br i1 %cmp1.i, label %entry.for.body.i_crit_edge, label %entry.calc_timeout_ms.exit_crit_edge

entry.calc_timeout_ms.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_timeout_ms.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit_count.03.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %msgs.addr.02.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %msgs, %entry.for.body.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.addr.02.i, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.i = add i32 %bit_count.03.i, %conv.i
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %incdec.ptr.i = getelementptr %struct.i2c_msg, ptr %msgs.addr.02.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo.i = mul i32 %add.i, 9
  br label %calc_timeout_ms.exit

calc_timeout_ms.exit:                             ; preds = %for.end.loopexit.i, %entry.calc_timeout_ms.exit_crit_edge
  %bit_count.0.lcssa.i = phi i32 [ 0, %entry.calc_timeout_ms.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %mul1.i = mul i32 %num, 10
  %add2.i = add i32 %bit_count.0.lcssa.i, %mul1.i
  %mul3.i = mul i32 %add2.i, 3
  %sub.i = add i32 %mul3.i, 199
  %div.i = udiv i32 %sub.i, 200
  %add5.i = add nuw nsw i32 %div.i, 10
  %timeout_ms = getelementptr inbounds %struct.synquacer_i2c, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add5.i, ptr %timeout_ms, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_xfer.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_xfer, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %calc_timeout_ms.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.synquacer_i2c, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout_ms, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_xfer.__UNIQUE_ID_ddebug309, ptr noundef %6, ptr noundef nonnull @.str.45, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %calc_timeout_ms.exit
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 8
  %9 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not51 = icmp slt i32 %10, 0
  br i1 %cmp.not51, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %dev26 = getelementptr inbounds %struct.synquacer_i2c, ptr %1, i32 0, i32 6
  %base.i = getelementptr inbounds %struct.synquacer_i2c, ptr %1, i32 0, i32 7
  %pclkrate.i = getelementptr inbounds %struct.synquacer_i2c, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %do.end29.for.body_crit_edge, %for.body.lr.ph
  %retry.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end29.for.body_crit_edge ]
  %call7 = tail call fastcc i32 @synquacer_i2c_doxfer(ptr noundef %1, ptr noundef %msgs, i32 noundef %num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, -11
  br i1 %cmp8.not, label %do.body11, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body11:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_xfer.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_xfer, %do.end29)) #6
          to label %if.then25 [label %do.end29], !srcloc !148

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_xfer.__UNIQUE_ID_ddebug310, ptr noundef %12, ptr noundef nonnull @.str.46, i32 noundef %retry.052) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 0) #6, !srcloc !153
  %17 = ptrtoint ptr %pclkrate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pclkrate.i, align 8
  %sub.i47 = add i32 %18, 999999999
  %div.i48 = udiv i32 %sub.i47, %18
  %sub7.i = add i32 %div.i48, 99
  %div8.i = udiv i32 %sub7.i, 100
  %sub.i.i = add nuw nsw i32 %div8.i, 1009
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %div.i.i) #6
  %inc = add i32 %retry.052, 1
  %20 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %retries, align 8
  %cmp.not = icmp sgt i32 %inc, %21
  br i1 %cmp.not, label %do.end29.cleanup_crit_edge, label %do.end29.for.body_crit_edge

do.end29.for.body_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end29.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end.cleanup_crit_edge ], [ -5, %do.end29.cleanup_crit_edge ], [ %call7, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @synquacer_i2c_functionality(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synquacer_i2c_doxfer(ptr noundef %i2c, ptr noundef %msgs, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @synquacer_i2c_hw_init(ptr noundef %i2c)
  %base = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 7
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not = icmp sgt i8 %2, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %i2c, align 4
  %msg = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 1
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msgs, ptr %msg, align 8
  %msg_num = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 2
  %7 = ptrtoint ptr %msg_num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num, ptr %msg_num, align 4
  %msg_ptr = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 4
  %8 = ptrtoint ptr %msg_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %msg_ptr, align 4
  %msg_idx = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 3
  %9 = ptrtoint ptr %msg_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %msg_idx, align 8
  %state = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 12
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  %call3 = tail call fastcc i32 @synquacer_i2c_master_start(ptr noundef %i2c, ptr noundef %msgs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.body6, label %if.else.i

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_doxfer, %cleanup)) #6
          to label %if.then13 [label %cleanup], !srcloc !148

if.then13:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %dev14 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %11 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug296, ptr noundef %12, ptr noundef nonnull @.str.49, i32 noundef %call3) #6
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  %timeout_ms = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 11
  %13 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout_ms, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #6
  %call21 = tail call i32 @wait_for_completion_timeout(ptr noundef %i2c, i32 noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %do.body25, label %if.end44

do.body25:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_doxfer, %cleanup)) #6
          to label %if.then39 [label %cleanup], !srcloc !148

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %dev40 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %15 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug297, ptr noundef %16, ptr noundef nonnull @.str.50) #6
  br label %cleanup

if.end44:                                         ; preds = %if.else.i
  %17 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %num)
  %cmp46.not = icmp eq i32 %18, %num
  br i1 %cmp46.not, label %cond.false83, label %do.body49

do.body49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@synquacer_i2c_doxfer, %cleanup)) #6
          to label %if.then63 [label %cleanup], !srcloc !148

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %dev64 = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 6
  %19 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug298, ptr noundef %20, ptr noundef nonnull @.str.51, i32 noundef %18) #6
  br label %cleanup

cond.false83:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %speed_khz = getelementptr inbounds %struct.synquacer_i2c, ptr %i2c, i32 0, i32 10
  %21 = ptrtoint ptr %speed_khz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed_khz, align 4
  %sub = add i32 %22, 1999
  %div = udiv i32 %sub, %22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %div) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.false83, %if.then63, %do.body49, %if.then39, %do.body25, %if.then13, %do.body6, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call3, %if.then13 ], [ -11, %if.then39 ], [ -11, %if.then63 ], [ %num, %cond.false83 ], [ %call3, %do.body6 ], [ -11, %do.body25 ], [ -11, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !109, !111, !113, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_i2c_synquacer__312_655_synquacer_i2c_driver_init6, !1, !"__initcall__kmod_i2c_synquacer__312_655_synquacer_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 655, i32 1}
!2 = !{ptr @__exitcall_synquacer_i2c_driver_exit, !1, !"__exitcall_synquacer_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 657, i32 1}
!5 = !{ptr @__UNIQUE_ID_description314, !6, !"__UNIQUE_ID_description314", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 658, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 659, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 650, i32 11}
!12 = !{ptr @synquacer_i2c_driver, !13, !"synquacer_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 646, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 547, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 550, i32 39}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 553, i32 39}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 557, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @synquacer_i2c_probe.__UNIQUE_ID_ddebug311, !21, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 561, i32 4}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @synquacer_i2c_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @synquacer_i2c_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 570, i32 3}
!34 = !{ptr @synquacer_i2c_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @synquacer_i2c_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 586, i32 3}
!38 = !{ptr @synquacer_i2c_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @synquacer_i2c_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 609, i32 3}
!42 = !{ptr @synquacer_i2c_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @synquacer_i2c_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 615, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @synquacer_i2c_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @synquacer_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 367, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug299, !50, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 370, i32 3}
!55 = !{ptr @synquacer_i2c_isr._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @synquacer_i2c_isr._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 376, i32 3}
!59 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug300, !58, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 384, i32 4}
!62 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug301, !61, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 405, i32 4}
!65 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug302, !64, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 425, i32 3}
!68 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug303, !67, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 434, i32 4}
!71 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug304, !70, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 446, i32 4}
!74 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug305, !73, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 466, i32 4}
!77 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug306, !76, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 470, i32 3}
!80 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug307, !79, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!81 = !{ptr @synquacer_i2c_isr.__UNIQUE_ID_ddebug308, !82, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 478, i32 4}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 485, i32 3}
!85 = !{ptr @synquacer_i2c_isr._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @synquacer_i2c_isr._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 265, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug288, !88, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!91 = !{ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug289, !92, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 270, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 274, i32 3}
!95 = !{ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug290, !94, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 279, i32 3}
!98 = !{ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug291, !97, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 284, i32 4}
!101 = !{ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug292, !100, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 287, i32 3}
!104 = !{ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug293, !103, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!105 = !{ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug294, !106, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 299, i32 2}
!107 = !{ptr @synquacer_i2c_master_start.__UNIQUE_ID_ddebug295, !108, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 303, i32 3}
!109 = !{ptr @synquacer_i2c_ops, !110, !"synquacer_i2c_ops", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 528, i32 33}
!111 = !{ptr @synquacer_i2c_algo, !112, !"synquacer_i2c_algo", i1 false, i1 false}
!112 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 523, i32 35}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 504, i32 2}
!115 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @synquacer_i2c_xfer.__UNIQUE_ID_ddebug309, !114, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 511, i32 3}
!119 = !{ptr @synquacer_i2c_xfer.__UNIQUE_ID_ddebug310, !118, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 320, i32 3}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @synquacer_i2c_doxfer._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @synquacer_i2c_doxfer._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 334, i32 3}
!127 = !{ptr @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug296, !126, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 341, i32 3}
!130 = !{ptr @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug297, !129, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 347, i32 3}
!133 = !{ptr @synquacer_i2c_doxfer.__UNIQUE_ID_ddebug298, !132, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!134 = !{ptr @init_completion.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../include/linux/completion.h", i32 87, i32 2}
!136 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @synquacer_i2c_dt_ids, !138, !"synquacer_i2c_dt_ids", i1 false, i1 false}
!138 = !{!"../drivers/i2c/busses/i2c-synquacer.c", i32 632, i32 34}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 2148963657, i64 2148963662, i64 2148963675, i64 2148963719, i64 2148963753, i64 2148963774}
!149 = !{i64 6878433}
!150 = !{i64 2155615222}
!151 = !{i64 2155615478}
!152 = !{i64 2155577578}
!153 = !{i64 6878038}
!154 = !{i64 2155626654}
!155 = !{i64 2155627301}
!156 = !{i64 2155632204}
!157 = !{i64 2155635180}
!158 = !{i64 2155635997}
!159 = !{i64 2155577877}
!160 = !{i64 2155578239}
!161 = !{i64 2155579855}
!162 = !{i64 2155580212}
!163 = !{i64 2155581657}
!164 = !{i64 2155581984}
!165 = !{i64 2155582775}
!166 = !{i64 2155583062}
!167 = !{i64 2155584341}
!168 = !{i64 2155586911}
!169 = !{i64 2155587167}
!170 = !{i64 2155594427}
!171 = !{i64 2155599578}
!172 = !{i64 2155600369}
!173 = !{i64 2155600625}
!174 = !{i64 2155583349}
!175 = !{i64 2155583636}
!176 = !{i64 2155605578}
