; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-altera.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-altera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.altr_i2c_dev = type { ptr, ptr, i32, i32, %struct.completion, ptr, %struct.i2c_adapter, ptr, i32, ptr, i32, i32, i32, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_altera__296_494_altr_i2c_driver_init6 = internal global ptr @altr_i2c_driver_init, section ".initcall6.init", align 4
@altr_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altr_i2c_probe, ptr @altr_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altr_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_altr_i2c_driver_exit = internal global ptr @altr_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [53 x i8] c"i2c_altera.description=Altera Soft IP I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [60 x i8] c"i2c_altera.author=Thor Thayer <thor.thayer@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [46 x i8] c"i2c_altera.file=drivers/i2c/busses/i2c-altera\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [26 x i8] c"i2c_altera.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"altera-i2c\00", [21 x i8] zeroinitializer }, align 32
@altr_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,softip-i2c-v1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 402, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missing clock\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"altr_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-altera.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry_ptr = internal global ptr @altr_i2c_probe._entry, section ".printk_index", align 4
@altr_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&idev->isr_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fifo-size\00", [22 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FIFO size set to default of %d\0A\00", [32 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry_ptr.10 = internal global ptr @altr_i2c_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Default to 100kHz\0A\00", [45 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry_ptr.14 = internal global ptr @altr_i2c_probe._entry.12, section ".printk_index", align 4
@altr_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid clock-frequency %d\0A\00", [36 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry_ptr.17 = internal global ptr @altr_i2c_probe._entry.15, section ".printk_index", align 4
@altr_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to claim IRQ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry_ptr.20 = internal global ptr @altr_i2c_probe._entry.18, section ".printk_index", align 4
@altr_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry_ptr.23 = internal global ptr @altr_i2c_probe._entry.21, section ".printk_index", align 4
@altr_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @altr_i2c_xfer, ptr null, ptr null, ptr null, ptr @altr_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 463, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Altera SoftIP I2C Probe Complete\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@altr_i2c_probe._entry_ptr.27 = internal global ptr @altr_i2c_probe._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@altr_i2c_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 244, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unexpected interrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"altr_i2c_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@altr_i2c_isr._entry_ptr = internal global ptr @altr_i2c_isr._entry, section ".printk_index", align 4
@altr_i2c_isr.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.30, ptr @.str.3, ptr @.str.33, i8 0, i8 64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_altera\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Could not get ACK\0A\00", [45 x i8] zeroinitializer }, align 32
@altr_i2c_isr._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX FIFO Overflow\0A\00", [46 x i8] zeroinitializer }, align 32
@altr_i2c_isr._entry_ptr.36 = internal global ptr @altr_i2c_isr._entry.34, section ".printk_index", align 4
@altr_i2c_isr._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.3, i32 282, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unexpected interrupt: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@altr_i2c_isr._entry_ptr.39 = internal global ptr @altr_i2c_isr._entry.37, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@altr_i2c_isr._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"message timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@altr_i2c_isr._entry_ptr.42 = internal global ptr @altr_i2c_isr._entry.40, section ".printk_index", align 4
@altr_i2c_isr.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.30, ptr @.str.3, ptr @.str.43, i8 0, i8 74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Message Complete\0A\00", [46 x i8] zeroinitializer }, align 32
@altr_i2c_init.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"altr_i2c_init\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rate=%uHz per_clk=%uMHz -> ratio=1:%u\0A\00", [57 x i8] zeroinitializer }, align 32
@altr_i2c_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Core Status not IDLE...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"altr_i2c_xfer_msg\00", [46 x i8] zeroinitializer }, align 32
@altr_i2c_xfer_msg._entry_ptr = internal global ptr @altr_i2c_xfer_msg._entry, section ".printk_index", align 4
@altr_i2c_xfer_msg.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Transaction timed out.\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"altr_i2c_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 485, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 489, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"altr_i2c_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 479, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 402, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 408, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 410, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 413, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 418, i32 44 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 421, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 426, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 435, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 441, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"altr_i2c_algo\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 378, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 463, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 87, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 244, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 256, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 266, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 282, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 293, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 297, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 158, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 346, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-altera.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 350, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_altr_i2c_driver_exit, ptr @__initcall__kmod_i2c_altera__296_494_altr_i2c_driver_init6, ptr @altr_i2c_driver_exit, ptr @altr_i2c_isr._entry, ptr @altr_i2c_isr._entry.34, ptr @altr_i2c_isr._entry.37, ptr @altr_i2c_isr._entry.40, ptr @altr_i2c_isr._entry_ptr, ptr @altr_i2c_isr._entry_ptr.36, ptr @altr_i2c_isr._entry_ptr.39, ptr @altr_i2c_isr._entry_ptr.42, ptr @altr_i2c_probe._entry, ptr @altr_i2c_probe._entry.12, ptr @altr_i2c_probe._entry.15, ptr @altr_i2c_probe._entry.18, ptr @altr_i2c_probe._entry.21, ptr @altr_i2c_probe._entry.24, ptr @altr_i2c_probe._entry.8, ptr @altr_i2c_probe._entry_ptr, ptr @altr_i2c_probe._entry_ptr.10, ptr @altr_i2c_probe._entry_ptr.14, ptr @altr_i2c_probe._entry_ptr.17, ptr @altr_i2c_probe._entry_ptr.20, ptr @altr_i2c_probe._entry_ptr.23, ptr @altr_i2c_probe._entry_ptr.27, ptr @altr_i2c_xfer_msg._entry, ptr @altr_i2c_xfer_msg._entry_ptr, ptr @altr_i2c_driver, ptr @.str, ptr @altr_i2c_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @altr_i2c_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @altr_i2c_algo, ptr @.str.25, ptr @.str.26, ptr @init_completion.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_isr._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_isr._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_isr._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_i2c_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @altr_i2c_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altr_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @altr_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1560, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %i2c_clk = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %i2c_clk, align 8
  %cmp.i158 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %3 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_clk, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %dev21 = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev21, align 8
  %msg_complete = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #7
  %isr_mutex = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %isr_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @altr_i2c_probe.__key) #7
  %8 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev21, align 8
  %fifo_size = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 10
  %call.i159 = tail call i32 @device_property_read_u32_array(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %fifo_size, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool27.not = icmp eq i32 %call.i159, 0
  br i1 %tobool27.not, label %if.end19.if.end34_crit_edge, label %do.end31

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end31:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 4) #10
  %10 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %fifo_size, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end19.if.end34_crit_edge
  %11 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev21, align 8
  %bus_clk_rate = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 8
  %call.i160 = tail call i32 @device_property_read_u32_array(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef %bus_clk_rate, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool37.not = icmp eq i32 %call.i160, 0
  br i1 %tobool37.not, label %if.end44, label %if.end44.thread

if.end44.thread:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  %13 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100000, ptr %bus_clk_rate, align 4
  br label %if.end53

if.end44:                                         ; preds = %if.end34
  %14 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %bus_clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %.pr)
  %cmp46 = icmp ugt i32 %.pr, 400000
  br i1 %cmp46, label %do.end50, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %.pr) #10
  br label %cleanup

if.end53:                                         ; preds = %if.end44.if.end53_crit_edge, %if.end44.thread
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %call55 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call8, ptr noundef nonnull @altr_i2c_isr_quick, ptr noundef nonnull @altr_i2c_isr, i32 noundef 8192, ptr noundef %16, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call8) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  %17 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_clk, align 8
  %call.i161 = tail call i32 @clk_prepare(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end62.do.end69_crit_edge

if.end62.do.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.end.i:                                         ; preds = %if.end62
  %call1.i = tail call i32 @clk_enable(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end71, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %18) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then3.i, %if.end62.do.end69_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i161, %if.end62.do.end69_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end71:                                         ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef %isr_mutex, i32 noundef 0) #7
  tail call fastcc void @altr_i2c_init(ptr noundef nonnull %call.i)
  tail call void @mutex_unlock(ptr noundef %isr_mutex) #7
  %adapter = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 6
  %driver_data.i.i = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 6, i32 9, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name75 = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 6, i32 12
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %call77 = tail call i32 @strlcpy(ptr noundef %name75, ptr noundef %21, i32 noundef 48) #7
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @altr_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 6, i32 9, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %of_node86 = getelementptr inbounds %struct.altr_i2c_dev, ptr %call.i, i32 0, i32 6, i32 9, i32 27
  %27 = ptrtoint ptr %of_node86 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %of_node86, align 8
  %driver_data.i.i162 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i162 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i162, align 4
  %call88 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.end95, label %if.then90

if.then90:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_clk, align 8
  tail call void @clk_disable(ptr noundef %30) #7
  tail call void @clk_unprepare(ptr noundef %30) #7
  br label %cleanup

do.end95:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.then90, %do.end69, %do.end60, %do.end50, %do.end, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %5, %do.end ], [ -22, %do.end50 ], [ %call55, %do.end60 ], [ %retval.0.i.ph, %do.end69 ], [ %call88, %if.then90 ], [ 0, %do.end95 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_clk = getelementptr inbounds %struct.altr_i2c_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_clk, align 8
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %adapter = getelementptr inbounds %struct.altr_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @i2c_del_adapter(ptr noundef %adapter) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_i2c_isr_quick(i32 noundef %irq, ptr nocapture noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_dev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !107
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %isr_mask = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 11
  %4 = ptrtoint ptr %isr_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isr_mask, align 8
  %and = and i32 %5, %3
  %isr_status = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 12
  %6 = ptrtoint ptr %isr_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %isr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_i2c_isr(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_status = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 12
  %0 = ptrtoint ptr %isr_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isr_status, align 4
  %isr_mutex = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %isr_mutex, i32 noundef 0) #7
  %msg = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 1
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.29) #10
  %6 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_dev, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %9 = or i32 %8, 520093696
  %10 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_dev, align 8
  %add.ptr3.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #7, !srcloc !111
  br label %out

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not = icmp eq i16 %14, 0
  %and3 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then7, !prof !112

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @altr_i2c_int_clear(ptr noundef %_dev, i32 noundef 8)
  %msg_err = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 3
  %15 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -11, ptr %msg_err, align 4
  br label %if.then84

if.else:                                          ; preds = %if.end
  %and8 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else34, label %do.body17, !prof !112

do.body17:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @altr_i2c_isr.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@altr_i2c_isr, %do.end32)) #7
          to label %if.then28 [label %do.end32], !srcloc !113

if.then28:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %dev29 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 5
  %16 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev29, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @altr_i2c_isr.__UNIQUE_ID_ddebug293, ptr noundef %17, ptr noundef nonnull @.str.33) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body17
  %msg_err33 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 3
  %18 = ptrtoint ptr %msg_err33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -6, ptr %msg_err33, align 4
  tail call fastcc void @altr_i2c_int_clear(ptr noundef %_dev, i32 noundef 4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 65536) #7, !srcloc !111
  br label %if.then84

if.else34:                                        ; preds = %if.else
  %and37 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %if.else50, label %if.then45, !prof !115

if.then45:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @altr_i2c_empty_rx_fifo(ptr noundef %_dev)
  tail call fastcc void @altr_i2c_int_clear(ptr noundef %_dev, i32 noundef 2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 65536) #7, !srcloc !111
  %dev49 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 5
  %23 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.35) #10
  br label %if.then84

if.else50:                                        ; preds = %if.else34
  %and54 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %or.cond195 = select i1 %cmp.not, i1 true, i1 %tobool55.not
  br i1 %or.cond195, label %if.else60, label %if.then56

if.then56:                                        ; preds = %if.else50
  %25 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_dev, align 8
  %add.ptr.i204 = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #7, !srcloc !107
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %msg_len.i = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 2
  %29 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_len.i, align 8
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp321.i = icmp sgt i32 %31, 0
  br i1 %cmp321.i, label %while.body.lr.ph.i, label %if.then56.altr_i2c_empty_rx_fifo.exit_crit_edge

if.then56.altr_i2c_empty_rx_fifo.exit_crit_edge:  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %altr_i2c_empty_rx_fifo.exit

while.body.lr.ph.i:                               ; preds = %if.then56
  %buf.i = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %altr_i2c_transfer.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %bytes_to_transfer.022.i = phi i32 [ %31, %while.body.lr.ph.i ], [ %dec.i, %altr_i2c_transfer.exit.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %bytes_to_transfer.022.i, -1
  %32 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_dev, align 8
  %add.ptr7.i = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !107
  %35 = lshr i32 %34, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %conv.i = trunc i32 %35 to i8
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf.i, align 8
  %incdec.ptr.i = getelementptr i8, ptr %37, i32 1
  store ptr %incdec.ptr.i, ptr %buf.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i, ptr %37, align 1
  %39 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_len.i, align 8
  %dec12.i = add i32 %40, -1
  store i32 %dec12.i, ptr %msg_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i)
  %cmp2.not.i.i = icmp eq i32 %dec12.i, 0
  br i1 %cmp2.not.i.i, label %while.body.i.altr_i2c_transfer.exit.i_crit_edge, label %do.body.i.i

while.body.i.altr_i2c_transfer.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altr_i2c_transfer.exit.i

do.body.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec12.i)
  %cmp.i.i = icmp eq i32 %dec12.i, 1
  %spec.select.i.i = select i1 %cmp.i.i, i32 65536, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %spec.select.i.i) #7, !srcloc !111
  br label %altr_i2c_transfer.exit.i

altr_i2c_transfer.exit.i:                         ; preds = %do.body.i.i, %while.body.i.altr_i2c_transfer.exit.i_crit_edge
  %cmp3.i = icmp ugt i32 %bytes_to_transfer.022.i, 1
  br i1 %cmp3.i, label %altr_i2c_transfer.exit.i.while.body.i_crit_edge, label %altr_i2c_transfer.exit.i.altr_i2c_empty_rx_fifo.exit_crit_edge

altr_i2c_transfer.exit.i.altr_i2c_empty_rx_fifo.exit_crit_edge: ; preds = %altr_i2c_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altr_i2c_empty_rx_fifo.exit

altr_i2c_transfer.exit.i.while.body.i_crit_edge:  ; preds = %altr_i2c_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

altr_i2c_empty_rx_fifo.exit:                      ; preds = %altr_i2c_transfer.exit.i.altr_i2c_empty_rx_fifo.exit_crit_edge, %if.then56.altr_i2c_empty_rx_fifo.exit_crit_edge
  %43 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_dev, align 8
  %add.ptr.i205 = getelementptr i8, ptr %44, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %46 = or i32 %45, 33554432
  %47 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_dev, align 8
  %add.ptr3.i207 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i207, i32 %46) #7, !srcloc !111
  %49 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool57.not = icmp eq i32 %50, 0
  br i1 %tobool57.not, label %altr_i2c_empty_rx_fifo.exit.if.then84_crit_edge, label %altr_i2c_empty_rx_fifo.exit.out_crit_edge

altr_i2c_empty_rx_fifo.exit.out_crit_edge:        ; preds = %altr_i2c_empty_rx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

altr_i2c_empty_rx_fifo.exit.if.then84_crit_edge:  ; preds = %altr_i2c_empty_rx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84

if.else60:                                        ; preds = %if.else50
  %cmp.not.not = xor i1 %cmp.not, true
  %and63 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond196 = select i1 %cmp.not.not, i1 true, i1 %tobool64.not
  br i1 %or.cond196, label %do.end76, label %if.then65

if.then65:                                        ; preds = %if.else60
  %51 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %_dev, align 8
  %add.ptr.i208 = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %54 = or i32 %53, 16777216
  %55 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_dev, align 8
  %add.ptr3.i210 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i210, i32 %54) #7, !srcloc !111
  %msg_len66 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 2
  %57 = ptrtoint ptr %msg_len66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_len66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp67.not = icmp eq i32 %58, 0
  br i1 %cmp67.not, label %if.then65.if.then84_crit_edge, label %if.then69

if.then65.if.then84_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84

if.then69:                                        ; preds = %if.then65
  %fifo_size.i = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 10
  %59 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fifo_size.i, align 4
  %61 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_dev, align 8
  %add.ptr.i211 = getelementptr i8, ptr %62, i32 24
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #7, !srcloc !107
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %sub.i = sub i32 %60, %64
  %65 = ptrtoint ptr %msg_len66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_len66, align 8
  %67 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp51.i = icmp sgt i32 %67, 0
  br i1 %cmp51.i, label %while.body.lr.ph.i214, label %if.then69.out_crit_edge

if.then69.out_crit_edge:                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body.lr.ph.i214:                            ; preds = %if.then69
  %buf.i213 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 9
  br label %while.body.i218

while.body.i218:                                  ; preds = %altr_i2c_transfer.exit.i223.while.body.i218_crit_edge, %while.body.lr.ph.i214
  %68 = phi i32 [ %66, %while.body.lr.ph.i214 ], [ %dec7.i, %altr_i2c_transfer.exit.i223.while.body.i218_crit_edge ]
  %bytes_to_transfer.02.i = phi i32 [ %67, %while.body.lr.ph.i214 ], [ %dec.i215, %altr_i2c_transfer.exit.i223.while.body.i218_crit_edge ]
  %dec.i215 = add nsw i32 %bytes_to_transfer.02.i, -1
  %69 = ptrtoint ptr %buf.i213 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf.i213, align 8
  %incdec.ptr.i216 = getelementptr i8, ptr %70, i32 1
  store ptr %incdec.ptr.i216, ptr %buf.i213, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp2.not.i.i217 = icmp eq i32 %68, 0
  br i1 %cmp2.not.i.i217, label %while.body.i218.altr_i2c_transfer.exit.i223_crit_edge, label %do.body.i.i222

while.body.i218.altr_i2c_transfer.exit.i223_crit_edge: ; preds = %while.body.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %altr_i2c_transfer.exit.i223

do.body.i.i222:                                   ; preds = %while.body.i218
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv.i219 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i.i220 = icmp eq i32 %68, 1
  %or.i.i = or i32 %conv.i219, 256
  %spec.select.i.i221 = select i1 %cmp.i.i220, i32 %or.i.i, i32 %conv.i219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %73 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i221) #7
  %74 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #7, !srcloc !111
  br label %altr_i2c_transfer.exit.i223

altr_i2c_transfer.exit.i223:                      ; preds = %do.body.i.i222, %while.body.i218.altr_i2c_transfer.exit.i223_crit_edge
  %76 = ptrtoint ptr %msg_len66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_len66, align 8
  %dec7.i = add i32 %77, -1
  store i32 %dec7.i, ptr %msg_len66, align 8
  %cmp5.i = icmp ugt i32 %bytes_to_transfer.02.i, 1
  br i1 %cmp5.i, label %altr_i2c_transfer.exit.i223.while.body.i218_crit_edge, label %altr_i2c_transfer.exit.i223.out_crit_edge

altr_i2c_transfer.exit.i223.out_crit_edge:        ; preds = %altr_i2c_transfer.exit.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

altr_i2c_transfer.exit.i223.while.body.i218_crit_edge: ; preds = %altr_i2c_transfer.exit.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i218

do.end76:                                         ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  %dev77 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 5
  %78 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev77, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.38, i32 noundef %1) #10
  %80 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %_dev, align 8
  %add.ptr.i224 = getelementptr i8, ptr %81, i32 16
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i224) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %83 = or i32 %82, 520093696
  %84 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %_dev, align 8
  %add.ptr3.i226 = getelementptr i8, ptr %85, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i226, i32 %83) #7, !srcloc !111
  br label %out

if.then84:                                        ; preds = %if.then65.if.then84_crit_edge, %altr_i2c_empty_rx_fifo.exit.if.then84_crit_edge, %if.then45, %do.end32, %if.then7
  %call85 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call85, 100000000
  %86 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_dev, align 8
  %add.ptr237 = getelementptr i8, ptr %87, i32 20
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr237) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %89 = and i32 %88, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool91.not239 = icmp eq i32 %89, 0
  br i1 %tobool91.not239, label %if.then84.if.end128_crit_edge, label %if.then84.land.lhs.true95_crit_edge

if.then84.land.lhs.true95_crit_edge:              ; preds = %if.then84
  br label %land.lhs.true95

if.then84.if.end128_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

land.lhs.true95:                                  ; preds = %cond.false.land.lhs.true95_crit_edge, %if.then84.land.lhs.true95_crit_edge
  %call96 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call96, i64 %add.i)
  %cmp3.i227 = icmp sgt i64 %call96, %add.i
  br i1 %cmp3.i227, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #7
  %91 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_dev, align 8
  %add.ptr = getelementptr i8, ptr %92, i32 20
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %94 = and i32 %93, 16777216
  %tobool91.not = icmp eq i32 %94, 0
  br i1 %tobool91.not, label %cond.false.if.end128_crit_edge, label %cond.false.land.lhs.true95_crit_edge

cond.false.land.lhs.true95_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true95

cond.false.if.end128_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

for.end:                                          ; preds = %land.lhs.true95
  %95 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %_dev, align 8
  %add.ptr104 = getelementptr i8, ptr %96, i32 20
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %98 = and i32 %97, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool119.not = icmp eq i32 %98, 0
  br i1 %tobool119.not, label %for.end.if.end128_crit_edge, label %do.end126

for.end.if.end128_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

do.end126:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev127 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 5
  %99 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev127, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.41) #10
  br label %if.end128

if.end128:                                        ; preds = %do.end126, %for.end.if.end128_crit_edge, %cond.false.if.end128_crit_edge, %if.then84.if.end128_crit_edge
  %101 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %_dev, align 8
  %add.ptr.i229 = getelementptr i8, ptr %102, i32 12
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %104 = and i32 %103, -520093697
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %106 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 11
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %105, ptr %106, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %106, align 8
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #7
  %111 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %_dev, align 8
  %add.ptr5.i = getelementptr i8, ptr %112, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %110) #7, !srcloc !111
  %113 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %_dev, align 8
  %add.ptr.i231 = getelementptr i8, ptr %114, i32 16
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %116 = or i32 %115, 520093696
  %117 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %_dev, align 8
  %add.ptr3.i233 = getelementptr i8, ptr %118, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i233, i32 %116) #7, !srcloc !111
  %msg_complete = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 4
  tail call void @complete(ptr noundef %msg_complete) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @altr_i2c_isr.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@altr_i2c_isr, %out)) #7
          to label %if.then143 [label %out], !srcloc !113

if.then143:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %dev144 = getelementptr inbounds %struct.altr_i2c_dev, ptr %_dev, i32 0, i32 5
  %119 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev144, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @altr_i2c_isr.__UNIQUE_ID_ddebug294, ptr noundef %120, ptr noundef nonnull @.str.43) #7
  br label %out

out:                                              ; preds = %if.then143, %if.end128, %do.end76, %altr_i2c_transfer.exit.i223.out_crit_edge, %if.then69.out_crit_edge, %altr_i2c_empty_rx_fifo.exit.out_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %isr_mutex) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altr_i2c_init(ptr nocapture noundef %idev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_clk = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 7
  %0 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %bus_clk_rate = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 8
  %2 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_clk_rate, align 4
  %div = udiv i32 %call, %3
  %4 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_clk, align 8
  %call2 = tail call i32 @clk_get_rate(ptr noundef %5) #7
  %div3 = udiv i32 %call2, 1000000
  %6 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %7)
  %cmp = icmp ult i32 %7, 100001
  %tmp.0 = select i1 %cmp, i32 0, i32 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %tmp.0) #7, !srcloc !111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @altr_i2c_init.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@altr_i2c_init, %do.end22)) #7
          to label %if.then18 [label %do.end22], !srcloc !113

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_clk_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @altr_i2c_init.__UNIQUE_ID_ddebug288, ptr noundef %11, ptr noundef nonnull @.str.45, i32 noundef %13, i32 noundef %div3, i32 noundef %div) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %entry
  %div558 = lshr i32 %div, 1
  %mul10 = shl i32 %div, 1
  %div11 = udiv i32 %mul10, 3
  %t_low.0 = select i1 %cmp, i32 %div558, i32 %div11
  %div9 = udiv i32 %div, 3
  %t_high.0 = select i1 %cmp, i32 %div558, i32 %div9
  %14 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %idev, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %17 = and i32 %16, -16777217
  %18 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %idev, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %17) #7, !srcloc !111
  %20 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idev, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %23 = or i32 %22, 16777216
  %24 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %idev, align 8
  %add.ptr4.i3.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3.i, i32 %23) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %t_high.0)
  %27 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %idev, align 8
  %add.ptr27 = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %26) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %t_low.0)
  %30 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %idev, align 8
  %add.ptr32 = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %29) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %32 = trunc i32 %div3 to i16
  %div37.lhs.trunc = mul nuw nsw i16 %32, 3
  %div3760 = udiv i16 %div37.lhs.trunc, 10
  %div37.zext = zext i16 %div3760 to i32
  %33 = tail call i32 @llvm.bswap.i32(i32 %div37.zext)
  %34 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %idev, align 8
  %add.ptr39 = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %33) #7, !srcloc !111
  %36 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %idev, align 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %39 = and i32 %38, -520093697
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 11
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %41, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %41, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %idev, align 8
  %add.ptr5.i = getelementptr i8, ptr %47, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %45) #7, !srcloc !111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altr_i2c_int_clear(ptr nocapture noundef readonly %idev, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !107
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %or = or i32 %3, %mask
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idev, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #7, !srcloc !111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altr_i2c_empty_rx_fifo(ptr nocapture noundef %idev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !107
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %msg_len = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 2
  %4 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_len, align 8
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp321 = icmp sgt i32 %6, 0
  br i1 %cmp321, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %buf = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %altr_i2c_transfer.exit.while.body_crit_edge, %while.body.lr.ph
  %bytes_to_transfer.022 = phi i32 [ %6, %while.body.lr.ph ], [ %dec, %altr_i2c_transfer.exit.while.body_crit_edge ]
  %dec = add nsw i32 %bytes_to_transfer.022, -1
  %7 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idev, align 8
  %add.ptr7 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !107
  %10 = lshr i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %conv = trunc i32 %10 to i8
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %buf, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %12, align 1
  %14 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_len, align 8
  %dec12 = add i32 %15, -1
  store i32 %dec12, ptr %msg_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12)
  %cmp2.not.i = icmp eq i32 %dec12, 0
  br i1 %cmp2.not.i, label %while.body.altr_i2c_transfer.exit_crit_edge, label %do.body.i

while.body.altr_i2c_transfer.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %altr_i2c_transfer.exit

do.body.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec12)
  %cmp.i = icmp eq i32 %dec12, 1
  %spec.select.i = select i1 %cmp.i, i32 65536, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %spec.select.i) #7, !srcloc !111
  br label %altr_i2c_transfer.exit

altr_i2c_transfer.exit:                           ; preds = %do.body.i, %while.body.altr_i2c_transfer.exit_crit_edge
  %cmp3 = icmp ugt i32 %bytes_to_transfer.022, 1
  br i1 %cmp3, label %altr_i2c_transfer.exit.while.body_crit_edge, label %altr_i2c_transfer.exit.while.end_crit_edge

altr_i2c_transfer.exit.while.end_crit_edge:       ; preds = %altr_i2c_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

altr_i2c_transfer.exit.while.body_crit_edge:      ; preds = %altr_i2c_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %altr_i2c_transfer.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp7 = icmp sgt i32 %num, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %msgs.addr.08 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %msgs, %entry.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @altr_i2c_xfer_msg(ptr noundef %1, ptr noundef %msgs.addr.08)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %msgs.addr.08, i32 1
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %entry.cleanup_crit_edge ], [ %num, %for.inc.cleanup_crit_edge ], [ %call1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altr_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @altr_i2c_xfer_msg(ptr noundef %idev, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg, align 4
  %conv.i = zext i16 %1 to i32
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %isr_mutex = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %isr_mutex, i32 noundef 0) #7
  %msg1 = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 1
  %4 = ptrtoint ptr %msg1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msg, ptr %msg1, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  %msg_len = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 2
  %7 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %msg_len, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %buf2 = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 9
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %buf2, align 8
  %msg_err = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 3
  %11 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_err, align 4
  %msg_complete = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 4
  %12 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg_complete, align 4
  %13 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idev, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %16 = or i32 %15, 16777216
  %17 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %idev, align 8
  %add.ptr4.i = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %16) #7, !srcloc !111
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %19 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %idev, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %22 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %idev, align 8
  %add.ptr8 = getelementptr i8, ptr %23, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %do.body12, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body12:                                        ; preds = %do.body
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %25 = and i16 %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %shl.i.masked = and i32 %shl.i, 254
  %26 = or i16 %25, 512
  %conv15 = zext i16 %26 to i32
  %or = or i32 %shl.i.masked, %conv15
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %idev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !111
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i, align 2
  %32 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not = icmp eq i16 %32, 0
  %33 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %idev, align 8
  %add.ptr.i95 = getelementptr i8, ptr %34, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body12
  %36 = or i32 %35, 503316480
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 11
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %38, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %38, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %43 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %idev, align 8
  %add.ptr5.i = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %42) #7, !srcloc !111
  %45 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp2.not.i = icmp eq i32 %46, 0
  br i1 %cmp2.not.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i = icmp eq i32 %46, 1
  %spec.select.i = select i1 %cmp.i, i32 65536, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %idev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %spec.select.i) #7, !srcloc !111
  br label %if.end

if.else:                                          ; preds = %do.body12
  %49 = or i32 %35, 486539264
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 11
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %51, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %51, align 8
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %56 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %idev, align 8
  %add.ptr5.i98 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i98, i32 %55) #7, !srcloc !111
  %fifo_size.i = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 10
  %58 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fifo_size.i, align 4
  %60 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %idev, align 8
  %add.ptr.i99 = getelementptr i8, ptr %61, i32 24
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #7, !srcloc !107
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %sub.i = sub i32 %59, %63
  %64 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_len, align 8
  %66 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp51.i = icmp sgt i32 %66, 0
  br i1 %cmp51.i, label %if.else.while.body.i_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

while.body.i:                                     ; preds = %altr_i2c_transfer.exit.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %67 = phi i32 [ %dec7.i, %altr_i2c_transfer.exit.i.while.body.i_crit_edge ], [ %65, %if.else.while.body.i_crit_edge ]
  %bytes_to_transfer.02.i = phi i32 [ %dec.i, %altr_i2c_transfer.exit.i.while.body.i_crit_edge ], [ %66, %if.else.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %bytes_to_transfer.02.i, -1
  %68 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf2, align 8
  %incdec.ptr.i = getelementptr i8, ptr %69, i32 1
  store ptr %incdec.ptr.i, ptr %buf2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp2.not.i.i = icmp eq i32 %67, 0
  br i1 %cmp2.not.i.i, label %while.body.i.altr_i2c_transfer.exit.i_crit_edge, label %do.body.i.i

while.body.i.altr_i2c_transfer.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altr_i2c_transfer.exit.i

do.body.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv.i101 = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i.i = icmp eq i32 %67, 1
  %or.i.i = or i32 %conv.i101, 256
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or.i.i, i32 %conv.i101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %72 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #7
  %73 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %idev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !111
  br label %altr_i2c_transfer.exit.i

altr_i2c_transfer.exit.i:                         ; preds = %do.body.i.i, %while.body.i.altr_i2c_transfer.exit.i_crit_edge
  %75 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_len, align 8
  %dec7.i = add i32 %76, -1
  store i32 %dec7.i, ptr %msg_len, align 8
  %cmp5.i = icmp ugt i32 %bytes_to_transfer.02.i, 1
  br i1 %cmp5.i, label %altr_i2c_transfer.exit.i.while.body.i_crit_edge, label %altr_i2c_transfer.exit.i.if.end_crit_edge

altr_i2c_transfer.exit.i.if.end_crit_edge:        ; preds = %altr_i2c_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

altr_i2c_transfer.exit.i.while.body.i_crit_edge:  ; preds = %altr_i2c_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end:                                           ; preds = %altr_i2c_transfer.exit.i.if.end_crit_edge, %if.else.if.end_crit_edge, %do.body.i, %if.then.if.end_crit_edge
  %imask.0 = phi i32 [ -31, %if.then.if.end_crit_edge ], [ -31, %do.body.i ], [ -30, %if.else.if.end_crit_edge ], [ -30, %altr_i2c_transfer.exit.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %isr_mutex) #7
  %call26 = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete, i32 noundef 25) #7
  tail call void @mutex_lock_nested(ptr noundef %isr_mutex, i32 noundef 0) #7
  %77 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %idev, align 8
  %add.ptr.i102 = getelementptr i8, ptr %78, i32 12
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #7, !srcloc !107
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %and.i104 = and i32 %80, %imask.0
  %81 = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 11
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and.i104, ptr %81, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %81, align 8
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  %86 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %idev, align 8
  %add.ptr5.i105 = getelementptr i8, ptr %87, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i105, i32 %85) #7, !srcloc !111
  %88 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %idev, align 8
  %add.ptr31 = getelementptr i8, ptr %89, i32 20
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %91 = and i32 %90, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool36.not = icmp eq i32 %91, 0
  br i1 %tobool36.not, label %if.end.if.end41_crit_edge, label %do.end40

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 5
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.46) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %if.end.if.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp42 = icmp eq i32 %call26, 0
  br i1 %cmp42, label %if.then44, label %if.end41.if.end58_crit_edge

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -110, ptr %msg_err, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @altr_i2c_xfer_msg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@altr_i2c_xfer_msg, %if.end58)) #7
          to label %if.then53 [label %if.end58], !srcloc !113

if.then53:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %dev54 = getelementptr inbounds %struct.altr_i2c_dev, ptr %idev, i32 0, i32 5
  %95 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev54, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @altr_i2c_xfer_msg.__UNIQUE_ID_ddebug295, ptr noundef %96, ptr noundef nonnull @.str.48) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.then44, %if.end41.if.end58_crit_edge
  %97 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %idev, align 8
  %add.ptr.i106 = getelementptr i8, ptr %98, i32 8
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %100 = and i32 %99, -16777217
  %101 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %idev, align 8
  %add.ptr4.i107 = getelementptr i8, ptr %102, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i107, i32 %100) #7, !srcloc !111
  tail call void @mutex_unlock(ptr noundef %isr_mutex) #7
  %103 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_err, align 4
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_i2c_altera__296_494_altr_i2c_driver_init6, !1, !"__initcall__kmod_i2c_altera__296_494_altr_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 494, i32 1}
!2 = !{ptr @__exitcall_altr_i2c_driver_exit, !1, !"__exitcall_altr_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 496, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 497, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 498, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 489, i32 11}
!12 = !{ptr @altr_i2c_driver, !13, !"altr_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 485, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 402, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @altr_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @altr_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @altr_i2c_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 408, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 410, i32 44}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 413, i32 3}
!29 = !{ptr @altr_i2c_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @altr_i2c_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 418, i32 44}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 421, i32 3}
!35 = !{ptr @altr_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @altr_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 426, i32 3}
!39 = !{ptr @altr_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @altr_i2c_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 435, i32 3}
!43 = !{ptr @altr_i2c_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @altr_i2c_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 441, i32 3}
!47 = !{ptr @altr_i2c_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @altr_i2c_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 463, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @altr_i2c_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @altr_i2c_probe._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 244, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @altr_i2c_isr._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @altr_i2c_isr._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 256, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @altr_i2c_isr.__UNIQUE_ID_ddebug293, !64, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 266, i32 3}
!69 = !{ptr @altr_i2c_isr._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @altr_i2c_isr._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 282, i32 3}
!73 = !{ptr @altr_i2c_isr._entry.37, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @altr_i2c_isr._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 293, i32 4}
!77 = !{ptr @altr_i2c_isr._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @altr_i2c_isr._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 297, i32 3}
!81 = !{ptr @altr_i2c_isr.__UNIQUE_ID_ddebug294, !80, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 158, i32 2}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @altr_i2c_init.__UNIQUE_ID_ddebug288, !83, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!86 = !{ptr @altr_i2c_algo, !87, !"altr_i2c_algo", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 378, i32 35}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 346, i32 3}
!90 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @altr_i2c_xfer_msg._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @altr_i2c_xfer_msg._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 350, i32 3}
!95 = !{ptr @altr_i2c_xfer_msg.__UNIQUE_ID_ddebug295, !94, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!96 = !{ptr @altr_i2c_of_match, !97, !"altr_i2c_of_match", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-altera.c", i32 479, i32 34}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 6868725}
!108 = !{i64 2155597327}
!109 = !{i64 2155583589}
!110 = !{i64 2155583818}
!111 = !{i64 6868307}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2148734104, i64 2148734109, i64 2148734122, i64 2148734166, i64 2148734200, i64 2148734221}
!114 = !{i64 2155586699}
!115 = !{!"branch_weights", i32 4001, i32 1}
!116 = !{i64 2155592826}
!117 = !{i64 2155594831}
!118 = !{i64 2155592157}
!119 = !{i64 2155595322}
!120 = !{i64 2155608557}
!121 = !{i64 2155609043}
!122 = !{i64 2155582660}
!123 = !{i64 2155582890}
!124 = !{i64 2155587344}
!125 = !{i64 2155584514}
!126 = !{i64 2155584847}
!127 = !{i64 2155585609}
!128 = !{i64 2155585940}
!129 = !{i64 2155590298}
!130 = !{i64 2155590703}
!131 = !{i64 2155591116}
!132 = !{i64 2155615218}
!133 = !{i64 2155615709}
!134 = !{i64 2155616041}
!135 = !{i64 2155617121}
