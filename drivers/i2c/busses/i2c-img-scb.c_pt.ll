; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-img-scb.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-img-scb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.img_i2c_timings = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.img_i2c = type { %struct.i2c_adapter, ptr, ptr, ptr, i32, i8, %struct.completion, %struct.spinlock, %struct.i2c_msg, i8, i32, i32, i32, i32, %struct.timer_list, i8, i8, i8, i32, i8, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_img_scb__297_1511_img_scb_i2c_driver_init6 = internal global ptr @img_scb_i2c_driver_init, section ".initcall6.init", align 4
@img_scb_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_i2c_probe, ptr @img_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_scb_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_scb_i2c_driver_exit = internal global ptr @img_scb_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [51 x i8] c"i2c_img_scb.author=James Hogan <jhogan@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [44 x i8] c"i2c_img_scb.description=IMG host I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [48 x i8] c"i2c_img_scb.file=drivers/i2c/busses/i2c-img-scb\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [27 x i8] c"i2c_img_scb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"img-i2c-scb\00", [20 x i8] zeroinitializer }, align 32
@img_scb_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,scb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_i2c_suspend, ptr @img_i2c_resume, ptr @img_i2c_suspend, ptr @img_i2c_resume, ptr @img_i2c_suspend, ptr @img_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_i2c_runtime_suspend, ptr @img_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@img_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get system clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"img_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-img-scb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_i2c_probe._entry_ptr = internal global ptr @img_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scb\00", [28 x i8] zeroinitializer }, align 32
@img_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't get core clock\0A\00", [42 x i8] zeroinitializer }, align 32
@img_i2c_probe._entry_ptr.10 = internal global ptr @img_i2c_probe._entry.8, section ".printk_index", align 4
@img_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't request irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@img_i2c_probe._entry_ptr.13 = internal global ptr @img_i2c_probe._entry.11, section ".printk_index", align 4
@img_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&i2c->check_timer)\00", [44 x i8] zeroinitializer }, align 32
@timings = internal constant { [2 x %struct.img_i2c_timings], [56 x i8] } { [2 x %struct.img_i2c_timings] [%struct.img_i2c_timings { ptr @.str.42, i32 100000, i32 4000, i32 4700, i32 4700, i32 8700, i32 4700, i32 4700, i32 4000 }, %struct.img_i2c_timings { ptr @.str.43, i32 400000, i32 600, i32 1300, i32 600, i32 1200, i32 1300, i32 600, i32 600 }], [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@img_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @img_i2c_xfer, ptr null, ptr null, ptr null, ptr @img_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IMG SCB I2C\00", [20 x i8] zeroinitializer }, align 32
@img_i2c_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@img_i2c_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 955, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fatal: clock low timeout occurred %s addr 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"img_i2c_isr\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@img_i2c_isr._entry_ptr = internal global ptr @img_i2c_isr._entry, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reading\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"writing\00", [24 x i8] zeroinitializer }, align 32
@img_i2c_atomic.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_img_scb\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"img_i2c_atomic\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"abort condition detected\0A\00", [38 x i8] zeroinitializer }, align 32
@img_i2c_atomic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 811, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad atomic command %d\0A\00", [41 x i8] zeroinitializer }, align 32
@img_i2c_atomic._entry_ptr = internal global ptr @img_i2c_atomic._entry, section ".printk_index", align 4
@img_i2c_atomic_op.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"img_i2c_atomic_op\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atomic cmd=%s (%d) data=%#x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@img_i2c_atomic_cmd_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr null, ptr null, ptr @.str.37, ptr @.str.38], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAUSE\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GEN_DATA\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GEN_START\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GEN_STOP\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GEN_ACK\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GEN_NACK\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RET_DATA\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RET_ACK\00", [24 x i8] zeroinitializer }, align 32
@img_i2c_auto.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.39, ptr @.str.4, ptr @.str.26, i8 0, i8 -41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"img_i2c_auto\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@img_i2c_stop_seq = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\03\00", [30 x i8] zeroinitializer }, align 32
@img_i2c_sequence.continue_bits = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 131072, i32 8192, i32 16384, i32 0, i32 0, i32 0, i32 0, i32 131072, i32 98304], [56 x i8] zeroinitializer }, align 32
@img_i2c_check_timer.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"img_i2c_check_timer\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"abort condition detected by check timer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"standard\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fast\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"refusing to service transaction in suspended state\0A\00", [44 x i8] zeroinitializer }, align 32
@img_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 1128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c transfer timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"img_i2c_xfer\00", [19 x i8] zeroinitializer }, align 32
@img_i2c_xfer._entry_ptr = internal global ptr @img_i2c_xfer._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@img_i2c_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 1445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable sys clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"img_i2c_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@img_i2c_runtime_resume._entry_ptr = internal global ptr @img_i2c_runtime_resume._entry, section ".printk_index", align 4
@img_i2c_runtime_resume._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 1451, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable scb clock\0A\00", [36 x i8] zeroinitializer }, align 32
@img_i2c_runtime_resume._entry_ptr.52 = internal global ptr @img_i2c_runtime_resume._entry.50, section ".printk_index", align 4
@img_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 1170, ptr @.str.55, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown hardware revision (%d.%d.%d.%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"img_i2c_init\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@img_i2c_init._entry_ptr = internal global ptr @img_i2c_init._entry, section ".printk_index", align 4
@img_i2c_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.4, i32 1191, ptr @.str.58, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"requested bitrate (%u) is higher than the max bitrate supported (%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@img_i2c_init._entry_ptr.59 = internal global ptr @img_i2c_init._entry.56, section ".printk_index", align 4
@img_i2c_reset_seq = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"\02\01\FF\09\02\03\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"img_scb_i2c_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1502, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1504, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"img_scb_i2c_match\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1496, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"img_i2c_pm\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1489, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1348, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1350, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1354, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1356, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1363, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1368, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [8 x i8] c"timings\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 303, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1371, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"img_i2c_algo\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1148, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1381, i32 51 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1384, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 952, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 747, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 810, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 489, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 467, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant [25 x i8] c"img_i2c_atomic_cmd_names\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 354, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 355, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 356, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 357, i32 20 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 358, i32 19 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 359, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 360, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 361, i32 19 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 362, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 861, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"img_i2c_stop_seq\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 338, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant [14 x i8] c"continue_bits\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 656, i32 28 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 843, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 306, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 318, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1033, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1128, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 87, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1445, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1451, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1167, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1188, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [18 x i8] c"img_i2c_reset_seq\00", align 1
@___asan_gen_.282 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-img-scb.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 331, i32 11 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_img_scb_i2c_driver_exit, ptr @__initcall__kmod_i2c_img_scb__297_1511_img_scb_i2c_driver_init6, ptr @img_i2c_atomic._entry, ptr @img_i2c_atomic._entry_ptr, ptr @img_i2c_init._entry, ptr @img_i2c_init._entry.56, ptr @img_i2c_init._entry_ptr, ptr @img_i2c_init._entry_ptr.59, ptr @img_i2c_isr._entry, ptr @img_i2c_isr._entry_ptr, ptr @img_i2c_probe._entry, ptr @img_i2c_probe._entry.11, ptr @img_i2c_probe._entry.8, ptr @img_i2c_probe._entry_ptr, ptr @img_i2c_probe._entry_ptr.10, ptr @img_i2c_probe._entry_ptr.13, ptr @img_i2c_runtime_resume._entry, ptr @img_i2c_runtime_resume._entry.50, ptr @img_i2c_runtime_resume._entry_ptr, ptr @img_i2c_runtime_resume._entry_ptr.52, ptr @img_i2c_xfer._entry, ptr @img_i2c_xfer._entry_ptr, ptr @img_scb_i2c_driver_exit, ptr @img_scb_i2c_driver, ptr @.str, ptr @img_scb_i2c_match, ptr @img_i2c_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @img_i2c_probe.__key, ptr @.str.14, ptr @timings, ptr @.str.15, ptr @img_i2c_algo, ptr @.str.16, ptr @img_i2c_probe.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @img_i2c_atomic_cmd_names, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @img_i2c_stop_seq, ptr @img_i2c_sequence.continue_bits, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @init_completion.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @img_i2c_reset_seq], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_scb_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_scb_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timings to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_atomic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_atomic_cmd_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_stop_seq to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_sequence.continue_bits to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_runtime_resume._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_i2c_reset_seq to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_scb_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_scb_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_scb_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_scb_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1584, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %sys_clk = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %sys_clk, align 8
  %cmp.i160 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %6 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys_clk, align 8
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %scb_clk = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %scb_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call22, ptr %scb_clk, align 4
  %cmp.i161 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  %10 = ptrtoint ptr %scb_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scb_clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %call.i162 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call9, ptr noundef nonnull @img_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %14, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool35.not = icmp eq i32 %call.i162, 0
  br i1 %tobool35.not, label %do.body42, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call9) #11
  br label %cleanup

do.body42:                                        ; preds = %if.end32
  %check_timer = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 14
  tail call void @init_timer_key(ptr noundef %check_timer, ptr noundef nonnull @img_i2c_check_timer, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @img_i2c_probe.__key) #8
  %bitrate = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100000, ptr %bitrate, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool46.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool46.not, label %if.then47, label %do.body42.if.end49_crit_edge

do.body42.if.end49_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %18 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bitrate, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %do.body42.if.end49_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %parent, align 8
  %of_node55 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %21 = ptrtoint ptr %of_node55 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %of_node55, align 8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @img_i2c_algo, ptr %algo, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %retries, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 11
  %27 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %nr, align 4
  %name61 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %28 = call ptr @memcpy(ptr %name61, ptr @.str.16, i32 12)
  %mode1.i = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 11
  %29 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %mode1.i, align 4
  %int_enable.i = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 12
  %30 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %int_enable.i, align 8
  %line_status.i = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 13
  %31 = ptrtoint ptr %line_status.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %line_status.i, align 4
  %lock = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @img_i2c_probe.__key.17, i16 noundef signext 3) #8
  %msg_complete = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.img_i2c, ptr %call.i, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #8
  %driver_data.i.i163 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i163 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i163, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %34 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end49.if.end78_crit_edge, label %if.then72

if.end49.if.end78_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then72:                                        ; preds = %if.end49
  %call74 = call i32 @img_i2c_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then72.if.end78_crit_edge, label %if.then72.cleanup_crit_edge

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then72.if.end78_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end78:                                         ; preds = %if.then72.if.end78_crit_edge, %if.end49.if.end78_crit_edge
  %call79 = call fastcc i32 @img_i2c_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.rpm_disable_crit_edge

if.end78.rpm_disable_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_disable

if.end82:                                         ; preds = %if.end78
  %call84 = call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end82.rpm_disable_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end82.rpm_disable_crit_edge:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_disable

rpm_disable:                                      ; preds = %if.end82.rpm_disable_crit_edge, %if.end78.rpm_disable_crit_edge
  %ret.0 = phi i32 [ %call79, %if.end78.rpm_disable_crit_edge ], [ %call84, %if.end82.rpm_disable_crit_edge ]
  %35 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i165 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i165)
  %tobool.not.i166 = icmp ult i16 %bf.load.i165, 8192
  br i1 %tobool.not.i166, label %rpm_disable.if.end93_crit_edge, label %if.then90

rpm_disable.if.end93_crit_edge:                   ; preds = %rpm_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then90:                                        ; preds = %rpm_disable
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %driver_data.i.i163 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i163, align 4
  %scb_clk.i = getelementptr inbounds %struct.img_i2c, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %scb_clk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %scb_clk.i, align 4
  call void @clk_disable(ptr noundef %39) #8
  call void @clk_unprepare(ptr noundef %39) #8
  %sys_clk.i = getelementptr inbounds %struct.img_i2c, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sys_clk.i, align 8
  call void @clk_disable(ptr noundef %41) #8
  call void @clk_unprepare(ptr noundef %41) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %rpm_disable.if.end93_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end82.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %do.end39, %do.end28, %do.end, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %8, %do.end ], [ %12, %do.end28 ], [ %call.i162, %do.end39 ], [ %ret.0, %if.end93 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call74, %if.then72.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2c_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %scb_clk.i = getelementptr inbounds %struct.img_i2c, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %scb_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %sys_clk.i = getelementptr inbounds %struct.img_i2c, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys_clk.i, align 8
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2c_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i122 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %2) #8, !srcloc !155
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !152
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %and = and i32 %9, 516096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %10 = shl nuw nsw i32 %and, 11
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr.i125 = getelementptr i8, ptr %12, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %10) #8, !srcloc !155
  %need_wr_rd_fence.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 5
  %13 = ptrtoint ptr %need_wr_rd_fence.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %need_wr_rd_fence.i, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #8, !srcloc !155
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %line_status3 = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 13
  %19 = ptrtoint ptr %line_status3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %line_status3, align 4
  %and4 = and i32 %20, 16777215
  %or = or i32 %and4, %9
  store i32 %or, ptr %line_status3, align 4
  %21 = and i32 %3, 68100
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %if.then67.thread160, label %if.end15

if.then67.thread160:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %dev_id, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %msg = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 8
  %flags = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags, align 2
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool12.not = icmp eq i16 %27, 0
  %cond = select i1 %tobool12.not, ptr @.str.23, ptr @.str.22
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %msg, align 8
  %conv14 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %24, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, i32 noundef %conv14) #11
  %mode1.i.i163 = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 11
  %30 = ptrtoint ptr %mode1.i.i163 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mode1.i.i163, align 4
  %int_enable.i.i164 = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 12
  %31 = ptrtoint ptr %int_enable.i.i164 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %int_enable.i.i164, align 8
  %32 = ptrtoint ptr %line_status3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %line_status3, align 4
  br label %if.then.i138

if.end15:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 11
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %if.end15.out_crit_edge [
    i32 2, label %if.then17
    i32 3, label %if.then22
    i32 4, label %if.then28
    i32 6, label %land.lhs.true34
    i32 1, label %if.then45
  ]

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call fastcc i32 @img_i2c_atomic(ptr noundef %dev_id, i32 noundef %3)
  br label %out

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call fastcc i32 @img_i2c_auto(ptr noundef %dev_id, i32 noundef %3, i32 noundef %9)
  br label %out

if.then28:                                        ; preds = %if.end15
  %and.i = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i126 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i126, label %if.then28.if.end.i_crit_edge, label %if.then.i127

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i127:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %at_slave_event.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 17
  %36 = ptrtoint ptr %at_slave_event.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %at_slave_event.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i127, %if.then28.if.end.i_crit_edge
  %and1.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %at_t_done.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 16
  %37 = ptrtoint ptr %at_t_done.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %at_t_done.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %at_slave_event5.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 17
  %38 = ptrtoint ptr %at_slave_event5.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %at_slave_event5.i, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool6.not.i = icmp eq i8 %39, 0
  br i1 %tobool6.not.i, label %if.end4.i.out_crit_edge, label %lor.lhs.false.i

if.end4.i.out_crit_edge:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %at_t_done7.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 16
  %40 = ptrtoint ptr %at_t_done7.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %at_t_done7.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool8.not.i = icmp eq i8 %41, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.out_crit_edge, label %if.end10.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10.i:                                       ; preds = %lor.lhs.false.i
  %at_cur_cmd.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 18
  %42 = ptrtoint ptr %at_cur_cmd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %at_cur_cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %43)
  %cmp12.i = icmp ult i32 %43, 10
  br i1 %cmp12.i, label %if.then13.i, label %if.end10.i.if.end22.i_crit_edge

if.end10.i.if.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.end10.i
  %44 = lshr i32 241, %43
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool15.not.not.i = icmp eq i32 %45, 0
  br i1 %tobool15.not.not.i, label %if.then16.i, label %if.then13.i.if.end22.i_crit_edge

if.then13.i.if.end22.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then16.i:                                      ; preds = %if.then13.i
  %arrayidx.i = getelementptr [10 x i32], ptr @img_i2c_sequence.continue_bits, i32 0, i32 %43
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %47, 262144
  %and17.i = and i32 %or.i, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.out_crit_edge, label %if.then16.i.if.end22.i_crit_edge

if.then16.i.if.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then16.i.out_crit_edge:                        ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end22.i:                                       ; preds = %if.then16.i.if.end22.i_crit_edge, %if.then13.i.if.end22.i_crit_edge, %if.end10.i.if.end22.i_crit_edge
  %seq.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 20
  %48 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %seq.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv.i = zext i8 %51 to i32
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %51, label %if.end22.i.if.end31.i_crit_edge [
    i8 0, label %if.then24.i
    i8 1, label %if.then28.i
  ]

if.end22.i.if.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i129 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i129, i32 0) #8, !srcloc !155
  br label %out

if.then28.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr i8, ptr %49, i32 1
  %55 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %incdec.ptr.i, ptr %seq.i, align 4
  %56 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr.i, align 1
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %if.end22.i.if.end31.i_crit_edge
  %next_data.0.i = phi i8 [ %57, %if.then28.i ], [ 0, %if.end22.i.if.end31.i_crit_edge ]
  %58 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %seq.i, align 4
  %incdec.ptr33.i = getelementptr i8, ptr %59, i32 1
  store ptr %incdec.ptr33.i, ptr %seq.i, align 4
  tail call fastcc void @img_i2c_atomic_op(ptr noundef %dev_id, i32 noundef %conv.i, i8 noundef zeroext %next_data.0.i) #8
  br label %out

land.lhs.true34:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %and35 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %and38 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond120 = select i1 %tobool36.not, i1 true, i1 %tobool39.not
  %spec.select = select i1 %or.cond120, i32 0, i32 -2147483648
  br label %out

if.then45:                                        ; preds = %if.end15
  %and.i130 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %if.then45.out_crit_edge, label %if.then.i132

if.then45.out_crit_edge:                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i132:                                     ; preds = %if.then45
  %raw_timeout.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 21
  %60 = ptrtoint ptr %raw_timeout.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %raw_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i = icmp eq i32 %61, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i133

if.then1.i:                                       ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #10
  %at_cur_cmd.i.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 18
  %62 = ptrtoint ptr %at_cur_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %at_cur_cmd.i.i, align 4
  %at_cur_data.i.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 19
  %64 = ptrtoint ptr %at_cur_data.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %at_cur_data.i.i, align 8
  tail call fastcc void @img_i2c_atomic_op(ptr noundef %dev_id, i32 noundef %63, i8 noundef zeroext %65) #8
  %66 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %mode, align 4
  %int_enable.i.i.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 12
  %67 = ptrtoint ptr %int_enable.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 98352, ptr %int_enable.i.i.i, align 8
  %68 = ptrtoint ptr %line_status3 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %line_status3, align 4
  br label %out

if.end.i133:                                      ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %61, -1
  %69 = ptrtoint ptr %raw_timeout.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %dec.i, ptr %raw_timeout.i, align 8
  br label %out

out:                                              ; preds = %if.end.i133, %if.then1.i, %if.then45.out_crit_edge, %land.lhs.true34, %if.end31.i, %if.then24.i, %if.then16.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.end4.i.out_crit_edge, %if.then22, %if.then17, %if.end15.out_crit_edge
  %hret.0 = phi i32 [ %call18, %if.then17 ], [ %call23, %if.then22 ], [ 0, %if.end31.i ], [ -2147483648, %if.then24.i ], [ 0, %lor.lhs.false.i.out_crit_edge ], [ 0, %if.end4.i.out_crit_edge ], [ 0, %if.then16.i.out_crit_edge ], [ 0, %if.then45.out_crit_edge ], [ 0, %if.then1.i ], [ 0, %if.end.i133 ], [ %spec.select, %land.lhs.true34 ], [ 0, %if.end15.out_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and53 = shl i32 %3, 8
  %70 = and i32 %and53, 1966080
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 8
  %add.ptr.i135 = getelementptr i8, ptr %72, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %70) #8, !srcloc !155
  %and54 = and i32 %hret.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %out.if.end64_crit_edge, label %if.then56

out.if.end64_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then56:                                        ; preds = %out
  %last_msg = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 9
  %73 = ptrtoint ptr %last_msg to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %last_msg, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool57.not = icmp eq i8 %74, 0
  br i1 %tobool57.not, label %if.then56.if.then67.thread_crit_edge, label %lor.lhs.false

if.then56.if.then67.thread_crit_edge:             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67.thread

lor.lhs.false:                                    ; preds = %if.then56
  %75 = ptrtoint ptr %line_status3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %line_status3, align 4
  %and59 = and i32 %76, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else62, label %lor.lhs.false.if.then67.thread_crit_edge

lor.lhs.false.if.then67.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67.thread

if.else62:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 6, ptr %mode, align 4
  %int_enable.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 12
  %78 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 65584, ptr %int_enable.i, align 8
  %79 = ptrtoint ptr %line_status3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %line_status3, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %out.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %hret.0)
  %tobool66.not = icmp sgt i32 %hret.0, -1
  br i1 %tobool66.not, label %if.end64.if.end73_crit_edge, label %if.then67

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then67.thread:                                 ; preds = %lor.lhs.false.if.then67.thread_crit_edge, %if.then56.if.then67.thread_crit_edge
  %mode1.i.i154 = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 11
  %80 = ptrtoint ptr %mode1.i.i154 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %mode1.i.i154, align 4
  %int_enable.i.i155 = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 12
  %81 = ptrtoint ptr %int_enable.i.i155 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %int_enable.i.i155, align 8
  %82 = ptrtoint ptr %line_status3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %line_status3, align 4
  br label %img_i2c_complete_transaction.exit

if.then67:                                        ; preds = %if.end64
  %and68 = and i32 %hret.0, 65535
  %mode1.i.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 11
  %83 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %mode1.i.i, align 4
  %int_enable.i.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 12
  %84 = ptrtoint ptr %int_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %int_enable.i.i, align 8
  %85 = ptrtoint ptr %line_status3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %line_status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool.not.i137 = icmp eq i32 %and68, 0
  br i1 %tobool.not.i137, label %if.then67.img_i2c_complete_transaction.exit_crit_edge, label %if.then67.if.then.i138_crit_edge

if.then67.if.then.i138_crit_edge:                 ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i138

if.then67.img_i2c_complete_transaction.exit_crit_edge: ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_complete_transaction.exit

if.then.i138:                                     ; preds = %if.then67.if.then.i138_crit_edge, %if.then67.thread160
  %int_enable.i.i169 = phi ptr [ %int_enable.i.i164, %if.then67.thread160 ], [ %int_enable.i.i, %if.then67.if.then.i138_crit_edge ]
  %mode1.i.i168 = phi ptr [ %mode1.i.i163, %if.then67.thread160 ], [ %mode1.i.i, %if.then67.if.then.i138_crit_edge ]
  %and68167 = phi i32 [ 5, %if.then67.thread160 ], [ %and68, %if.then67.if.then.i138_crit_edge ]
  %hret.2151166 = phi i32 [ -1073741819, %if.then67.thread160 ], [ %hret.0, %if.then67.if.then.i138_crit_edge ]
  %sub = sub nsw i32 0, %and68167
  %msg_status.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 10
  %86 = ptrtoint ptr %msg_status.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub, ptr %msg_status.i, align 8
  %t_halt1.i.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 15
  %87 = ptrtoint ptr %t_halt1.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %t_halt1.i.i, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp.i.i = icmp eq i8 %88, 0
  br i1 %cmp.i.i, label %if.then.i138.img_i2c_complete_transaction.exit_crit_edge, label %if.end.i.i

if.then.i138.img_i2c_complete_transaction.exit_crit_edge: ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_complete_transaction.exit

if.end.i.i:                                       ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %t_halt1.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %t_halt1.i.i, align 8
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %91, i32 76
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %93 = and i32 %92, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 8
  %add.ptr.i19.i.i = getelementptr i8, ptr %95, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %93) #8, !srcloc !155
  br label %img_i2c_complete_transaction.exit

img_i2c_complete_transaction.exit:                ; preds = %if.end.i.i, %if.then.i138.img_i2c_complete_transaction.exit_crit_edge, %if.then67.img_i2c_complete_transaction.exit_crit_edge, %if.then67.thread
  %int_enable.i.i159 = phi ptr [ %int_enable.i.i155, %if.then67.thread ], [ %int_enable.i.i, %if.then67.img_i2c_complete_transaction.exit_crit_edge ], [ %int_enable.i.i169, %if.then.i138.img_i2c_complete_transaction.exit_crit_edge ], [ %int_enable.i.i169, %if.end.i.i ]
  %mode1.i.i158 = phi ptr [ %mode1.i.i154, %if.then67.thread ], [ %mode1.i.i, %if.then67.img_i2c_complete_transaction.exit_crit_edge ], [ %mode1.i.i168, %if.then.i138.img_i2c_complete_transaction.exit_crit_edge ], [ %mode1.i.i168, %if.end.i.i ]
  %hret.2151157 = phi i32 [ -2147483648, %if.then67.thread ], [ %hret.0, %if.then67.img_i2c_complete_transaction.exit_crit_edge ], [ %hret.2151166, %if.then.i138.img_i2c_complete_transaction.exit_crit_edge ], [ %hret.2151166, %if.end.i.i ]
  %msg_complete.i = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 6
  tail call void @complete(ptr noundef %msg_complete.i) #8
  %and69 = and i32 %hret.2151157, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %img_i2c_complete_transaction.exit.if.end73_crit_edge, label %if.then71

img_i2c_complete_transaction.exit.if.end73_crit_edge: ; preds = %img_i2c_complete_transaction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then71:                                        ; preds = %img_i2c_complete_transaction.exit
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %mode1.i.i158 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 5, ptr %mode1.i.i158, align 4
  %97 = ptrtoint ptr %int_enable.i.i159 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %int_enable.i.i159, align 8
  %98 = ptrtoint ptr %line_status3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %line_status3, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %img_i2c_complete_transaction.exit.if.end73_crit_edge, %if.end64.if.end73_crit_edge
  %int_enable = getelementptr inbounds %struct.img_i2c, ptr %dev_id, i32 0, i32 12
  %99 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %int_enable, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #8
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 8
  %add.ptr.i144 = getelementptr i8, ptr %103, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %101) #8, !srcloc !155
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_i2c_check_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -76
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr i8, ptr %t, i32 -152
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %3 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %do.body7

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_i2c_check_timer.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@img_i2c_check_timer, %do.end16)) #8
          to label %if.then14 [label %do.end16], !srcloc !157

if.then14:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr i8, ptr %t, i32 -1176
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_i2c_check_timer.__UNIQUE_ID_ddebug291, ptr noundef %5, ptr noundef nonnull @.str.41) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then14, %do.body7
  %int_enable = getelementptr i8, ptr %t, i32 -8
  %6 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_enable, align 8
  %or = or i32 %7, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !155
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %entry.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sys_clk = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %scb_clk = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %scb_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scb_clk, align 4
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.end.i22:                                       ; preds = %if.end
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i22.cleanup_crit_edge, label %if.then3.i23

if.end.i22.cleanup_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i23, %if.end.do.end7_crit_edge
  %retval.0.i24.ph = phi i32 [ %call1.i20, %if.then3.i23 ], [ %call.i18, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #11
  %6 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys_clk, align 8
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.i22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i24.ph, %do.end7 ], [ 0, %if.end.i22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @img_i2c_init(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !159
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !160
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 128
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !152
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %and = and i32 %6, 16776704
  call void @__sanitizer_cov_trace_const_cmp4(i32 131584, i32 %and)
  %cmp2 = icmp ult i32 %and, 131584
  br i1 %cmp2, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %shr = lshr i32 %6, 24
  %shr8 = lshr i32 %6, 16
  %and9 = and i32 %shr8, 255
  %shr10 = lshr i32 %6, 8
  %and11 = and i32 %shr10, 255
  %and12 = and i32 %6, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.53, i32 noundef %shr, i32 noundef %and9, i32 noundef %and11, i32 noundef %and12) #11
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call.i274 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i274, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %call.i275 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %need_wr_rd_fence = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 5
  %14 = ptrtoint ptr %need_wr_rd_fence to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %need_wr_rd_fence, align 8
  %bitrate = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 4
  %15 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bitrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %16)
  %cmp22.not = icmp ugt i32 %16, 100000
  br i1 %cmp22.not, label %for.inc, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %16)
  %cmp22.not.1 = icmp ugt i32 %16, 400000
  br i1 %cmp22.not.1, label %for.inc.do.end32_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end20.for.end_crit_edge
  %i.0312.lcssa = phi i32 [ 0, %if.end20.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.img_i2c_timings], ptr @timings, i32 0, i32 %i.0312.lcssa
  %timing.sroa.7169.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %17 = ptrtoint ptr %timing.sroa.7169.0.arrayidx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %timing.sroa.7169.0.copyload170 = load i32, ptr %timing.sroa.7169.0.arrayidx24.sroa_idx, align 4
  %timing.sroa.8.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %18 = ptrtoint ptr %timing.sroa.8.0.arrayidx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %timing.sroa.8.0.copyload172 = load i32, ptr %timing.sroa.8.0.arrayidx24.sroa_idx, align 4
  %timing.sroa.9176.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 24
  %19 = ptrtoint ptr %timing.sroa.9176.0.arrayidx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %timing.sroa.9176.0.copyload177 = load i32, ptr %timing.sroa.9176.0.arrayidx24.sroa_idx, align 4
  %timing.sroa.10.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 28
  %20 = ptrtoint ptr %timing.sroa.10.0.arrayidx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %timing.sroa.10.0.copyload179 = load i32, ptr %timing.sroa.10.0.arrayidx24.sroa_idx, align 4
  %timing.sroa.11.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 32
  %21 = ptrtoint ptr %timing.sroa.11.0.arrayidx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %timing.sroa.11.0.copyload181 = load i32, ptr %timing.sroa.11.0.arrayidx24.sroa_idx, align 4
  %22 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %bitrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %.pr)
  %cmp28 = icmp ugt i32 %.pr, 400000
  br i1 %cmp28, label %for.end.do.end32_crit_edge, label %for.end.if.end39_crit_edge

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

for.end.do.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

do.end32:                                         ; preds = %for.end.do.end32_crit_edge, %for.inc.do.end32_crit_edge
  %23 = phi i32 [ %.pr, %for.end.do.end32_crit_edge ], [ %16, %for.inc.do.end32_crit_edge ]
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.57, i32 noundef %23, i32 noundef 400000) #11
  %26 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 400000, ptr %bitrate, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end32, %for.end.if.end39_crit_edge
  %timing.sroa.7169.1 = phi i32 [ 1300, %do.end32 ], [ %timing.sroa.7169.0.copyload170, %for.end.if.end39_crit_edge ]
  %timing.sroa.8.1 = phi i32 [ 600, %do.end32 ], [ %timing.sroa.8.0.copyload172, %for.end.if.end39_crit_edge ]
  %timing.sroa.9176.1 = phi i32 [ 1300, %do.end32 ], [ %timing.sroa.9176.0.copyload177, %for.end.if.end39_crit_edge ]
  %timing.sroa.10.1 = phi i32 [ 600, %do.end32 ], [ %timing.sroa.10.0.copyload179, %for.end.if.end39_crit_edge ]
  %timing.sroa.11.1 = phi i32 [ 600, %do.end32 ], [ %timing.sroa.11.0.copyload181, %for.end.if.end39_crit_edge ]
  %27 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bitrate, align 4
  %div = udiv i32 %28, 1000
  %scb_clk = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 2
  %29 = ptrtoint ptr %scb_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %scb_clk, align 4
  %call41 = tail call i32 @clk_get_rate(ptr noundef %30) #8
  %div42 = udiv i32 %call41, 1000
  %mul = shl nuw nsw i32 %div42, 6
  %mul43 = shl i32 %div, 12
  %div44 = udiv i32 %mul, %mul43
  %31 = tail call i32 @llvm.umax.i32(i32 %div44, i32 1)
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 8)
  %div52 = udiv i32 %div42, %32
  %div54 = udiv i32 %mul43, %div52
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %div52)
  %cmp55 = icmp ult i32 %div52, 20000
  br i1 %cmp55, label %if.end39.if.end73_crit_edge, label %if.else

if.end39.if.end73_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %div52)
  %cmp57 = icmp ult i32 %div52, 40000
  br i1 %cmp57, label %if.else.if.end73_crit_edge, label %if.else59

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.else59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %div60 = udiv i32 %div52, 1000
  %mul61 = mul nuw nsw i32 %div60, 25
  %mul61.frozen = freeze i32 %mul61
  %div62 = udiv i32 64000, %mul61.frozen
  %33 = mul i32 %div62, %mul61.frozen
  %rem.decomposed = sub i32 64000, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp ne i32 %rem.decomposed, 0
  %inc66 = zext i1 %tobool.not to i32
  %spec.select = add nuw i32 %div54, %inc66
  %and71 = shl nuw nsw i32 %div62, 16
  %shl = and i32 %and71, 8323072
  br label %if.end73

if.end73:                                         ; preds = %if.else59, %if.else.if.end73_crit_edge, %if.end39.if.end73_crit_edge
  %inc.1 = phi i32 [ %spec.select, %if.else59 ], [ %div54, %if.end39.if.end73_crit_edge ], [ %div54, %if.else.if.end73_crit_edge ]
  %filt.0 = phi i32 [ %shl, %if.else59 ], [ -2147483648, %if.end39.if.end73_crit_edge ], [ 1073741824, %if.else.if.end73_crit_edge ]
  %and74 = shl i32 %inc.1, 8
  %shl75 = and i32 %and74, 32512
  %sub = add nsw i32 %32, -1
  %or = or i32 %filt.0, %sub
  %or76 = or i32 %or, %shl75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or76) #8
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr.i277 = getelementptr i8, ptr %36, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 %34) #8, !srcloc !155
  %mul77 = mul i32 %inc.1, %div52
  %div78 = udiv i32 256000000, %mul77
  %mul79 = mul i32 %div78, %div
  %mul79.frozen = freeze i32 %mul79
  %div80 = udiv i32 1000000, %mul79.frozen
  %37 = mul i32 %div80, %mul79.frozen
  %rem82.decomposed = sub i32 1000000, %37
  %div84271 = lshr i32 %mul79, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem82.decomposed, i32 %div84271)
  %cmp85.not = icmp uge i32 %rem82.decomposed, %div84271
  %inc87 = zext i1 %cmp85.not to i32
  %spec.select273 = add nuw nsw i32 %div80, %inc87
  %div89272 = lshr i32 %spec.select273, 1
  %sub90 = sub nsw i32 %spec.select273, %div89272
  %add = add nsw i32 %div78, -1
  %sub92 = add i32 %add, %timing.sroa.7169.1
  %div93 = udiv i32 %sub92, %div78
  call void @__sanitizer_cov_trace_cmp4(i32 %sub90, i32 %div93)
  %cmp94 = icmp ult i32 %sub90, %div93
  %sub96 = sub i32 %spec.select273, %div93
  %tckh.0 = select i1 %cmp94, i32 %sub96, i32 %div89272
  %38 = tail call i32 @llvm.umax.i32(i32 %sub90, i32 %div93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tckh.0)
  %cmp98.not = icmp eq i32 %tckh.0, 0
  %dec = add i32 %tckh.0, -1
  %tckh.1 = select i1 %cmp98.not, i32 0, i32 %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp101.not = icmp eq i32 %38, 0
  %dec103 = add i32 %38, -1
  %tckl.1 = select i1 %cmp101.not, i32 0, i32 %dec103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %tckh.1) #8
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 8
  %add.ptr.i279 = getelementptr i8, ptr %41, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279, i32 %39) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %tckl.1) #8
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr.i281 = getelementptr i8, ptr %44, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %42) #8, !srcloc !155
  %sub107 = add i32 %add, %timing.sroa.8.1
  %div108 = udiv i32 %sub107, %div78
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div108)
  %cmp109 = icmp ugt i32 %div108, 1
  %sub111 = add i32 %div108, -1
  %data.0 = select i1 %cmp109, i32 %sub111, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %data.0) #8
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %add.ptr.i283 = getelementptr i8, ptr %47, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i283, i32 %45) #8, !srcloc !155
  call void @__sanitizer_cov_trace_cmp4(i32 %div78, i32 %timing.sroa.10.1)
  %cmp115.not = icmp ugt i32 %div78, %timing.sroa.10.1
  br i1 %cmp115.not, label %if.end73.if.end118_crit_edge, label %if.then116

if.end73.if.end118_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then116:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %div114 = udiv i32 %timing.sroa.10.1, %div78
  %dec117 = add i32 %div114, -1
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end73.if.end118_crit_edge
  %data.1 = phi i32 [ %dec117, %if.then116 ], [ 0, %if.end73.if.end118_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %data.1) #8
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 8
  %add.ptr.i285 = getelementptr i8, ptr %50, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285, i32 %48) #8, !srcloc !155
  call void @__sanitizer_cov_trace_cmp4(i32 %div78, i32 %timing.sroa.11.1)
  %cmp120.not = icmp ugt i32 %div78, %timing.sroa.11.1
  br i1 %cmp120.not, label %if.end118.if.end123_crit_edge, label %if.then121

if.end118.if.end123_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %div119 = udiv i32 %timing.sroa.11.1, %div78
  %dec122 = add i32 %div119, -1
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end118.if.end123_crit_edge
  %data.2 = phi i32 [ %dec122, %if.then121 ], [ 0, %if.end118.if.end123_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %data.2) #8
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 8
  %add.ptr.i287 = getelementptr i8, ptr %53, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i287, i32 %51) #8, !srcloc !155
  %add124 = add i32 %data.0, 2
  %add125 = add i32 %add124, %data.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %add125) #8
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 8
  %add.ptr.i289 = getelementptr i8, ptr %56, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289, i32 %54) #8, !srcloc !155
  call void @__sanitizer_cov_trace_cmp4(i32 %div78, i32 %timing.sroa.9176.1)
  %cmp127.not = icmp ugt i32 %div78, %timing.sroa.9176.1
  br i1 %cmp127.not, label %if.end123.if.end130_crit_edge, label %if.then128

if.end123.if.end130_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %div126 = udiv i32 %timing.sroa.9176.1, %div78
  %dec129 = add i32 %div126, -1
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end123.if.end130_crit_edge
  %data.3 = phi i32 [ %dec129, %if.then128 ], [ 0, %if.end123.if.end130_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %data.3) #8
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 8
  %add.ptr.i291 = getelementptr i8, ptr %59, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291, i32 %57) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 8
  %add.ptr.i293 = getelementptr i8, ptr %61, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293, i32 0) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 8
  %add.ptr.i295 = getelementptr i8, ptr %63, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i295, i32 -65536) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 8
  %add.ptr.i297 = getelementptr i8, ptr %65, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297, i32 0) #8, !srcloc !155
  %t_halt.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 15
  %66 = ptrtoint ptr %t_halt.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %t_halt.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %70, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 -16711680) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 8
  %add.ptr.i299 = getelementptr i8, ptr %72, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 0) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 8
  %add.ptr.i301 = getelementptr i8, ptr %74, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301, i32 -1) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 8
  %add.ptr.i303 = getelementptr i8, ptr %76, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i303, i32 -1) #8, !srcloc !155
  %int_enable = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 12
  %77 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %int_enable, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 8
  %add.ptr.i305 = getelementptr i8, ptr %81, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i305, i32 %79) #8, !srcloc !155
  %lock.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %msg_complete.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 6
  %82 = ptrtoint ptr %msg_complete.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %msg_complete.i, align 4
  %mode1.i.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 11
  %83 = ptrtoint ptr %mode1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %mode1.i.i.i, align 4
  %84 = ptrtoint ptr %int_enable to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 98352, ptr %int_enable, align 8
  %line_status.i.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 13
  %85 = ptrtoint ptr %line_status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %line_status.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %87, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 813695232) #8, !srcloc !155
  %seq.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 20
  %88 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @img_i2c_reset_seq, ptr %seq.i.i, align 4
  %at_slave_event.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 17
  %89 = ptrtoint ptr %at_slave_event.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %at_slave_event.i.i, align 2
  %at_t_done.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 16
  %90 = ptrtoint ptr %at_t_done.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %at_t_done.i.i, align 1
  %at_cur_cmd.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 18
  %91 = ptrtoint ptr %at_cur_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %at_cur_cmd.i.i, align 4
  %92 = load i8, ptr @img_i2c_reset_seq, align 1
  %conv.i.i.i = zext i8 %92 to i32
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %92, label %if.end130.if.end31.i.i.i_crit_edge [
    i8 0, label %if.then24.i.i.i
    i8 1, label %if.then28.i.i.i
  ]

if.end130.if.end31.i.i.i_crit_edge:               ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %95, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #8, !srcloc !155
  br label %img_i2c_reset_bus.exit

if.then28.i.i.i:                                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr getelementptr inbounds ([7 x i8], ptr @img_i2c_reset_seq, i32 0, i32 1), ptr %seq.i.i, align 4
  %97 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @img_i2c_reset_seq, i32 0, i32 1), align 1
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.then28.i.i.i, %if.end130.if.end31.i.i.i_crit_edge
  %next_data.0.i.i.i = phi i8 [ %97, %if.then28.i.i.i ], [ 0, %if.end130.if.end31.i.i.i_crit_edge ]
  %98 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seq.i.i, align 4
  %incdec.ptr33.i.i.i = getelementptr i8, ptr %99, i32 1
  store ptr %incdec.ptr33.i.i.i, ptr %seq.i.i, align 4
  tail call fastcc void @img_i2c_atomic_op(ptr noundef %i2c, i32 noundef %conv.i.i.i, i8 noundef zeroext %next_data.0.i.i.i) #8
  br label %img_i2c_reset_bus.exit

img_i2c_reset_bus.exit:                           ; preds = %if.end31.i.i.i, %if.then24.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %call8.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  %..i = select i1 %cmp9.i, i32 -110, i32 0
  %100 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %parent, align 8
  %call.i306 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i307 = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 12, i32 22
  %102 = ptrtoint ptr %last_busy.i307 to i32
  call void @__asan_store8_noabort(i32 %102)
  store volatile i64 %call.i306, ptr %last_busy.i307, align 8
  %103 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %parent, align 8
  %call.i308 = tail call i32 @__pm_runtime_suspend(ptr noundef %104, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %img_i2c_reset_bus.exit, %do.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %..i, %img_i2c_reset_bus.exit ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %scb_clk = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scb_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %sys_clk = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @img_i2c_atomic(ptr noundef %i2c, i32 noundef %int_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %int_status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %at_slave_event = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 17
  %0 = ptrtoint ptr %at_slave_event to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %at_slave_event, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %int_status, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %at_t_done = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 16
  %1 = ptrtoint ptr %at_t_done to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %at_t_done, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %at_slave_event5 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 17
  %2 = ptrtoint ptr %at_slave_event5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %at_slave_event5, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %at_t_done7 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 16
  %4 = ptrtoint ptr %at_t_done7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %at_t_done7, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %line_status11 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 13
  %6 = ptrtoint ptr %line_status11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line_status11, align 4
  %and12 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end21, label %do.body

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_i2c_atomic.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@img_i2c_atomic, %land.lhs.true113.sink.split)) #8
          to label %if.then19 [label %land.lhs.true113.sink.split], !srcloc !157

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_i2c_atomic.__UNIQUE_ID_ddebug290, ptr noundef %9, ptr noundef nonnull @.str.26) #8
  br label %land.lhs.true113.sink.split

if.end21:                                         ; preds = %if.end10
  %at_cur_cmd = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 18
  %10 = ptrtoint ptr %at_cur_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %at_cur_cmd, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %11, label %do.end102 [
    i32 2, label %sw.bb
    i32 1, label %next_atomic_cmd
    i32 9, label %sw.bb29
    i32 8, label %sw.bb67
    i32 4, label %sw.bb90
    i32 5, label %if.end21.land.lhs.true113_crit_edge
    i32 3, label %sw.bb99
  ]

if.end21.land.lhs.true113_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true113

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %msg = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %msg, align 4
  %conv.i = trunc i16 %14 to i8
  %shl.i = shl i8 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i, align 2
  %17 = trunc i16 %16 to i8
  %18 = and i8 %17, 1
  %or.i = or i8 %18, %shl.i
  br label %if.end119

sw.bb29:                                          ; preds = %if.end21
  %and31 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %sw.bb29.if.then40_crit_edge

sw.bb29.if.then40_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

lor.lhs.false33:                                  ; preds = %sw.bb29
  %and35 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false33.cleanup_crit_edge, label %land.lhs.true

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false33
  %flags = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %21 = and i16 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool39.not = icmp eq i16 %21, 0
  br i1 %tobool39.not, label %land.lhs.true.land.lhs.true113.sink.split_crit_edge, label %land.lhs.true.if.then40_crit_edge

land.lhs.true.if.then40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

land.lhs.true.land.lhs.true113.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true113.sink.split

if.then40:                                        ; preds = %land.lhs.true.if.then40_crit_edge, %sw.bb29.if.then40_crit_edge
  %len = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp = icmp eq i16 %23, 0
  br i1 %cmp, label %if.then40.land.lhs.true113_crit_edge, label %if.else

if.then40.land.lhs.true113_crit_edge:             ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true113

if.else:                                          ; preds = %if.then40
  %flags46 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %flags46 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags46, align 2
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool49.not = icmp eq i16 %26, 0
  br i1 %tobool49.not, label %if.else51, label %if.else.if.end119_crit_edge

if.else.if.end119_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.else51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %buf = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 3
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %dec = add i16 %23, -1
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %dec, ptr %len, align 4
  %incdec.ptr = getelementptr i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %buf, align 8
  br label %if.end119

sw.bb67:                                          ; preds = %if.end21
  %and69 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %sw.bb67.cleanup_crit_edge, label %if.then71

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then71:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %7, 24
  %conv74 = trunc i32 %shr to i8
  %buf76 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %buf76 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf76, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv74, ptr %33, align 1
  %len78 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %len78 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len78, align 4
  %dec79 = add i16 %36, -1
  store i16 %dec79, ptr %len78, align 4
  %37 = load ptr, ptr %buf76, align 8
  %incdec.ptr82 = getelementptr i8, ptr %37, i32 1
  store ptr %incdec.ptr82, ptr %buf76, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec79)
  %tobool85.not = icmp eq i16 %dec79, 0
  %. = select i1 %tobool85.not, i32 5, i32 4
  br label %if.end119

sw.bb90:                                          ; preds = %if.end21
  %and92 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %sw.bb90.land.lhs.true113.sink.split_crit_edge, label %sw.bb90.if.end119_crit_edge

sw.bb90.if.end119_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

sw.bb90.land.lhs.true113.sink.split_crit_edge:    ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true113.sink.split

sw.bb99:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !155
  br label %cleanup

do.end102:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %parent105 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %parent105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent105, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.27, i32 noundef %11) #11
  br label %land.lhs.true113.sink.split

next_atomic_cmd:                                  ; preds = %if.end21
  %and25 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %next_atomic_cmd.cleanup_crit_edge, label %next_atomic_cmd.if.end119_crit_edge

next_atomic_cmd.if.end119_crit_edge:              ; preds = %next_atomic_cmd
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

next_atomic_cmd.cleanup_crit_edge:                ; preds = %next_atomic_cmd
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true113.sink.split:                      ; preds = %do.end102, %sw.bb90.land.lhs.true113.sink.split_crit_edge, %land.lhs.true.land.lhs.true113.sink.split_crit_edge, %if.then19, %do.body
  %msg_status64 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 10
  %42 = ptrtoint ptr %msg_status64 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -5, ptr %msg_status64, align 8
  br label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true113.sink.split, %if.then40.land.lhs.true113_crit_edge, %if.end21.land.lhs.true113_crit_edge
  %msg_status114 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 10
  %43 = ptrtoint ptr %msg_status114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_status114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool115.not = icmp eq i32 %44, 0
  br i1 %tobool115.not, label %land.lhs.true116, label %land.lhs.true113.if.end119_crit_edge

land.lhs.true113.if.end119_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true116:                                 ; preds = %land.lhs.true113
  %last_msg = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 9
  %45 = ptrtoint ptr %last_msg to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %last_msg, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool117.not = icmp eq i8 %46, 0
  br i1 %tobool117.not, label %land.lhs.true116.cleanup_crit_edge, label %land.lhs.true116.if.end119_crit_edge

land.lhs.true116.if.end119_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true116.cleanup_crit_edge:               ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end119:                                        ; preds = %land.lhs.true116.if.end119_crit_edge, %land.lhs.true113.if.end119_crit_edge, %next_atomic_cmd.if.end119_crit_edge, %sw.bb90.if.end119_crit_edge, %if.then71, %if.else51, %if.else.if.end119_crit_edge, %sw.bb
  %next_data.0720 = phi i8 [ 0, %land.lhs.true116.if.end119_crit_edge ], [ 0, %land.lhs.true113.if.end119_crit_edge ], [ 0, %sw.bb90.if.end119_crit_edge ], [ 0, %if.then71 ], [ 0, %if.else.if.end119_crit_edge ], [ %or.i, %sw.bb ], [ %30, %if.else51 ], [ 0, %next_atomic_cmd.if.end119_crit_edge ]
  %next_cmd.0919 = phi i32 [ 3, %land.lhs.true116.if.end119_crit_edge ], [ 3, %land.lhs.true113.if.end119_crit_edge ], [ 8, %sw.bb90.if.end119_crit_edge ], [ %., %if.then71 ], [ 8, %if.else.if.end119_crit_edge ], [ 1, %sw.bb ], [ 1, %if.else51 ], [ 9, %next_atomic_cmd.if.end119_crit_edge ]
  tail call fastcc void @img_i2c_atomic_op(ptr noundef %i2c, i32 noundef %next_cmd.0919, i8 noundef zeroext %next_data.0720)
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %land.lhs.true116.cleanup_crit_edge, %next_atomic_cmd.cleanup_crit_edge, %sw.bb99, %sw.bb67.cleanup_crit_edge, %lor.lhs.false33.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -2147483648, %sw.bb99 ], [ -2147483648, %land.lhs.true116.cleanup_crit_edge ], [ 0, %if.end119 ], [ 0, %next_atomic_cmd.cleanup_crit_edge ], [ 0, %sw.bb67.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %lor.lhs.false33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @img_i2c_auto(ptr noundef %i2c, i32 noundef %int_status, i32 noundef %line_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %int_status, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %line_status, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_i2c_auto.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@img_i2c_auto, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !157

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_i2c_auto.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.26) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %flags = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool11.not = icmp eq i16 %4, 0
  %and12 = and i32 %int_status, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = or i1 %tobool13.not, %tobool11.not
  br i1 %or.cond, label %do.end.if.end15_crit_edge, label %if.then14

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @img_i2c_read_fifo(ptr noundef %i2c)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end.if.end15_crit_edge
  %msg_status = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 10
  %5 = ptrtoint ptr %msg_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -5, ptr %msg_status, align 8
  %mode1.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 11
  %6 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %mode1.i.i, align 4
  %int_enable.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 12
  %7 = ptrtoint ptr %int_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 98352, ptr %int_enable.i.i, align 8
  %line_status.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 13
  %8 = ptrtoint ptr %line_status.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %line_status.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %base.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 813695232) #8, !srcloc !155
  %seq.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 20
  %11 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @img_i2c_stop_seq, ptr %seq.i, align 4
  %at_slave_event.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 17
  %12 = ptrtoint ptr %at_slave_event.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %at_slave_event.i, align 2
  %at_t_done.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 16
  %13 = ptrtoint ptr %at_t_done.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %at_t_done.i, align 1
  %at_cur_cmd.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 18
  %14 = ptrtoint ptr %at_cur_cmd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %at_cur_cmd.i, align 4
  %15 = load i8, ptr @img_i2c_stop_seq, align 1
  %conv.i.i = zext i8 %15 to i32
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %15, label %if.end15.if.end31.i.i_crit_edge [
    i8 0, label %if.then24.i.i
    i8 1, label %if.then28.i.i
  ]

if.end15.if.end31.i.i_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

if.then24.i.i:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #8, !srcloc !155
  br label %return

if.then28.i.i:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr getelementptr inbounds ([2 x i8], ptr @img_i2c_stop_seq, i32 0, i32 1), ptr %seq.i, align 4
  %20 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @img_i2c_stop_seq, i32 0, i32 1), align 1
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i.i, %if.end15.if.end31.i.i_crit_edge
  %next_data.0.i.i = phi i8 [ %20, %if.then28.i.i ], [ 0, %if.end15.if.end31.i.i_crit_edge ]
  %21 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %seq.i, align 4
  %incdec.ptr33.i.i = getelementptr i8, ptr %22, i32 1
  store ptr %incdec.ptr33.i.i, ptr %seq.i, align 4
  tail call fastcc void @img_i2c_atomic_op(ptr noundef %i2c, i32 noundef %conv.i.i, i8 noundef zeroext %next_data.0.i.i) #8
  br label %return

if.end16:                                         ; preds = %if.end
  %last_msg = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 9
  %23 = ptrtoint ptr %last_msg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %last_msg, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp ne i8 %24, 0
  %and19 = and i32 %line_status, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond105 = or i1 %tobool20.not, %tobool17.not
  br i1 %or.cond105, label %if.end16.if.end27_crit_edge, label %if.then21

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then21:                                        ; preds = %if.end16
  %t_halt1.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 15
  %25 = ptrtoint ptr %t_halt1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %t_halt1.i, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i = icmp eq i8 %26, 1
  br i1 %cmp.i, label %if.then21.img_i2c_transaction_halt.exit_crit_edge, label %if.end.i

if.then21.img_i2c_transaction_halt.exit_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_transaction_halt.exit

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %t_halt1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %t_halt1.i, align 8
  %base.i.i107 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i107 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i107, align 8
  %add.ptr.i.i108 = getelementptr i8, ptr %29, i32 76
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i108) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %31 = or i32 %30, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %base.i.i107 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i107, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %33, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %31) #8, !srcloc !155
  br label %img_i2c_transaction_halt.exit

img_i2c_transaction_halt.exit:                    ; preds = %if.end.i, %if.then21.img_i2c_transaction_halt.exit_crit_edge
  %int_enable = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 12
  %34 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %int_enable, align 8
  %and26 = and i32 %35, -65537
  store i32 %and26, ptr %int_enable, align 8
  br label %if.end27

if.end27:                                         ; preds = %img_i2c_transaction_halt.exit, %if.end16.if.end27_crit_edge
  %check_timer = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %36, 1
  %call29 = tail call i32 @mod_timer(ptr noundef %check_timer, i32 noundef %add) #8
  %and30 = and i32 %int_status, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %flags42 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %flags42 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags42, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool45.not = icmp eq i16 %39, 0
  br i1 %tobool31.not, label %if.end40, label %if.then32

if.then32:                                        ; preds = %if.end27
  br i1 %tobool45.not, label %if.then32.return_crit_edge, label %if.then38

if.then32.return_crit_edge:                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @img_i2c_read_fifo(ptr noundef %i2c)
  br label %return

if.end40:                                         ; preds = %if.end27
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end40
  %and47 = and i32 %int_status, 132608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then46.if.end70_crit_edge, label %if.then49

if.then46.if.end70_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then49:                                        ; preds = %if.then46
  tail call fastcc void @img_i2c_read_fifo(ptr noundef %i2c)
  %len = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp = icmp eq i16 %41, 0
  br i1 %cmp, label %if.then49.return_crit_edge, label %if.then49.if.end70_crit_edge

if.then49.if.end70_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then49.return_crit_edge:                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else:                                          ; preds = %if.end40
  %and56 = and i32 %int_status, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else.if.end70_crit_edge, label %if.then58

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then58:                                        ; preds = %if.else
  %and59 = and i32 %int_status, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then58.if.end68_crit_edge, label %land.lhs.true61

if.then58.if.end68_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true61:                                  ; preds = %if.then58
  %len63 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 2
  %42 = ptrtoint ptr %len63 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len63, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp65 = icmp eq i16 %43, 0
  br i1 %cmp65, label %land.lhs.true61.return_crit_edge, label %land.lhs.true61.if.end68_crit_edge

land.lhs.true61.if.end68_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true61.return_crit_edge:                 ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end68:                                         ; preds = %land.lhs.true61.if.end68_crit_edge, %if.then58.if.end68_crit_edge
  tail call fastcc void @img_i2c_write_fifo(ptr noundef %i2c)
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.else.if.end70_crit_edge, %if.then49.if.end70_crit_edge, %if.then46.if.end70_crit_edge
  %and71 = and i32 %int_status, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.return_crit_edge, label %if.then73

if.end70.return_crit_edge:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then73:                                        ; preds = %if.end70
  %t_halt1.i109 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 15
  %44 = ptrtoint ptr %t_halt1.i109 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %t_halt1.i109, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i110 = icmp eq i8 %45, 0
  br i1 %cmp.i110, label %if.then73.img_i2c_transaction_halt.exit115_crit_edge, label %if.end.i114

if.then73.img_i2c_transaction_halt.exit115_crit_edge: ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_transaction_halt.exit115

if.end.i114:                                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %t_halt1.i109 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %t_halt1.i109, align 8
  %base.i.i111 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %47 = ptrtoint ptr %base.i.i111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i111, align 8
  %add.ptr.i.i112 = getelementptr i8, ptr %48, i32 76
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i112) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %50 = and i32 %49, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %base.i.i111 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i111, align 8
  %add.ptr.i19.i113 = getelementptr i8, ptr %52, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i113, i32 %50) #8, !srcloc !155
  br label %img_i2c_transaction_halt.exit115

img_i2c_transaction_halt.exit115:                 ; preds = %if.end.i114, %if.then73.img_i2c_transaction_halt.exit115_crit_edge
  %53 = ptrtoint ptr %last_msg to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %last_msg, align 4, !range !156
  %55 = ptrtoint ptr %t_halt1.i109 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %t_halt1.i109, align 8, !range !156
  %57 = xor i8 %54, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp.i117 = icmp eq i8 %56, %57
  br i1 %cmp.i117, label %img_i2c_transaction_halt.exit115.return_crit_edge, label %if.end.i122

img_i2c_transaction_halt.exit115.return_crit_edge: ; preds = %img_i2c_transaction_halt.exit115
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i122:                                      ; preds = %img_i2c_transaction_halt.exit115
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool75.not = icmp eq i8 %54, 0
  %58 = ptrtoint ptr %t_halt1.i109 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %t_halt1.i109, align 8
  %base.i.i118 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %59 = ptrtoint ptr %base.i.i118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i118, align 8
  %add.ptr.i.i119 = getelementptr i8, ptr %60, i32 76
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i119) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %62 = and i32 %61, -131073
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %masksel.i = select i1 %tobool75.not, i32 512, i32 0
  %val.0.i120 = or i32 %63, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %64 = tail call i32 @llvm.bswap.i32(i32 %val.0.i120) #8
  %65 = ptrtoint ptr %base.i.i118 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i118, align 8
  %add.ptr.i19.i121 = getelementptr i8, ptr %66, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i121, i32 %64) #8, !srcloc !155
  br label %return

return:                                           ; preds = %if.end.i122, %img_i2c_transaction_halt.exit115.return_crit_edge, %if.end70.return_crit_edge, %land.lhs.true61.return_crit_edge, %if.then49.return_crit_edge, %if.then38, %if.then32.return_crit_edge, %if.end31.i.i, %if.then24.i.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -2147483643, %entry.return_crit_edge ], [ -2147483648, %if.then38 ], [ -2147483648, %if.then32.return_crit_edge ], [ 536870912, %if.then49.return_crit_edge ], [ 536870912, %land.lhs.true61.return_crit_edge ], [ 0, %if.end70.return_crit_edge ], [ 0, %if.then24.i.i ], [ 0, %if.end31.i.i ], [ 0, %img_i2c_transaction_halt.exit115.return_crit_edge ], [ 0, %if.end.i122 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_i2c_atomic_op(ptr nocapture noundef %i2c, i32 noundef %cmd, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %at_cur_cmd = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 18
  %0 = ptrtoint ptr %at_cur_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cmd, ptr %at_cur_cmd, align 4
  %at_cur_data = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 19
  %1 = ptrtoint ptr %at_cur_data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %data, ptr %at_cur_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 11
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.then, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  %base.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %7 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %data)
  %tobool4.not = icmp sgt i8 %data, -1
  %or.cond = and i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mode, align 4
  %int_enable.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 12
  %9 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262144, ptr %int_enable.i, align 8
  %line_status.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 13
  %10 = ptrtoint ptr %line_status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %line_status.i, align 4
  %raw_timeout.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 21
  %11 = ptrtoint ptr %raw_timeout.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %raw_timeout.i, align 8
  %12 = ptrtoint ptr %at_cur_cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %at_cur_cmd, align 4
  %and.i = shl i32 %13, 4
  %shl.i = and i32 %and.i, 496
  %14 = ptrtoint ptr %at_cur_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %at_cur_data, align 8
  %conv.i = zext i8 %15 to i32
  %shl1.i = shl nuw i32 %conv.i, 24
  %or.i = or i32 %shl1.i, %shl.i
  %or2.i = or i32 %or.i, 3594
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #8
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #8, !srcloc !155
  br label %return

do.body:                                          ; preds = %if.then.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_i2c_atomic_op.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@img_i2c_atomic_op, %do.end)) #8
          to label %if.then12 [label %do.end], !srcloc !157

if.then12:                                        ; preds = %do.body
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %cmd)
  %cmp.i = icmp ugt i32 %cmd, 9
  br i1 %cmp.i, label %if.then12.img_i2c_atomic_op_name.exit_crit_edge, label %if.end.i, !prof !161

if.then12.img_i2c_atomic_op_name.exit_crit_edge:  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_atomic_op_name.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [10 x ptr], ptr @img_i2c_atomic_cmd_names, i32 0, i32 %cmd
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  br label %img_i2c_atomic_op_name.exit

img_i2c_atomic_op_name.exit:                      ; preds = %if.end.i, %if.then12.img_i2c_atomic_op_name.exit_crit_edge
  %retval.0.i46 = phi ptr [ %22, %if.end.i ], [ @.str.30, %if.then12.img_i2c_atomic_op_name.exit_crit_edge ]
  %conv14 = zext i8 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_i2c_atomic_op.__UNIQUE_ID_ddebug289, ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i46, i32 noundef %cmd, i32 noundef %conv14) #8
  br label %do.end

do.end:                                           ; preds = %img_i2c_atomic_op_name.exit, %do.body
  %23 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %24 = icmp eq i32 %23, 8
  %at_t_done = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 16
  %frombool20 = zext i1 %24 to i8
  %25 = ptrtoint ptr %at_t_done to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool20, ptr %at_t_done, align 1
  %at_slave_event = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 17
  %26 = ptrtoint ptr %at_slave_event to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %at_slave_event, align 2
  %line_status21 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 13
  %27 = ptrtoint ptr %line_status21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %line_status21, align 4
  %and22 = shl i32 %cmd, 4
  %shl = and i32 %and22, 496
  %conv24 = zext i8 %data to i32
  %shl25 = shl nuw i32 %conv24, 24
  %or23 = or i32 %shl25, %shl
  %or26 = or i32 %or23, 2560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %or26) #8
  %base.i47 = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %29 = ptrtoint ptr %base.i47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i47, align 8
  %add.ptr.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #8, !srcloc !155
  br label %return

return:                                           ; preds = %do.end, %cleanup
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_i2c_read_fifo(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not22 = icmp eq i16 %1, 0
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %need_wr_rd_fence.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 5
  %base.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %buf = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %need_wr_rd_fence.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_wr_rd_fence.i, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %while.body.img_i2c_wr_rd_fence.exit_crit_edge, label %if.then.i

while.body.img_i2c_wr_rd_fence.exit_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_wr_rd_fence.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #8, !srcloc !155
  br label %img_i2c_wr_rd_fence.exit

img_i2c_wr_rd_fence.exit:                         ; preds = %if.then.i, %while.body.img_i2c_wr_rd_fence.exit_crit_edge
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %cleanup, label %img_i2c_wr_rd_fence.exit.while.end_crit_edge

img_i2c_wr_rd_fence.exit.while.end_crit_edge:     ; preds = %img_i2c_wr_rd_fence.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup:                                          ; preds = %img_i2c_wr_rd_fence.exit
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #8, !srcloc !152
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %conv = trunc i32 %15 to i8
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %17, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %20, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 -16777216) #8, !srcloc !155
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len, align 4
  %dec = add i16 %22, -1
  store i16 %dec, ptr %len, align 4
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %buf, align 8
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %img_i2c_wr_rd_fence.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_i2c_write_fifo(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not27 = icmp eq i16 %1, 0
  br i1 %tobool.not27, label %entry.if.then10_crit_edge, label %while.body.lr.ph

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

while.body.lr.ph:                                 ; preds = %entry
  %need_wr_rd_fence.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 5
  %base.i.i = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 1
  %buf = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 8, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %need_wr_rd_fence.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_wr_rd_fence.i, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %while.body.img_i2c_wr_rd_fence.exit_crit_edge, label %if.then.i

while.body.img_i2c_wr_rd_fence.exit_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_wr_rd_fence.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #8, !srcloc !155
  br label %img_i2c_wr_rd_fence.exit

img_i2c_wr_rd_fence.exit:                         ; preds = %if.then.i, %while.body.img_i2c_wr_rd_fence.exit_crit_edge
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %11 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %cleanup, label %while.end

cleanup:                                          ; preds = %img_i2c_wr_rd_fence.exit
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv = zext i8 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %16 = shl nuw i32 %conv, 24
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %16) #8, !srcloc !155
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len, align 4
  %dec = add i16 %20, -1
  store i16 %dec, ptr %len, align 4
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %buf, align 8
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %cleanup.if.then10_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.if.then10_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

while.end:                                        ; preds = %img_i2c_wr_rd_fence.exit
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %23)
  %.pr = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool9.not = icmp eq i16 %.pr, 0
  br i1 %tobool9.not, label %while.end.if.then10_crit_edge, label %while.end.if.end12_crit_edge

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

while.end.if.then10_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %while.end.if.then10_crit_edge, %cleanup.if.then10_crit_edge, %entry.if.then10_crit_edge
  %int_enable = getelementptr inbounds %struct.img_i2c, ptr %i2c, i32 0, i32 12
  %24 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %int_enable, align 8
  %and11 = and i32 %25, -4097
  store i32 %and11, ptr %int_enable, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %while.end.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %3, label %for.cond.preheader [
    i32 7, label %do.end
    i32 5, label %entry.cleanup111_crit_edge
  ]

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup111

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp21213 = icmp sgt i32 %num, 0
  br i1 %cmp21213, label %for.cond.preheader.for.body_crit_edge, label %for.end.thread

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1033, i32 noundef 9, ptr noundef nonnull @.str.44) #8
  br label %cleanup111

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0215 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %atomic.0.off0214 = phi i1 [ %atomic.1.off0, %for.inc.for.body_crit_edge ], [ false, %for.cond.preheader.for.body_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0215, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool22.not = icmp eq i16 %6, 0
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0215, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  br i1 %tobool22.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool24.not = icmp eq i16 %9, 0
  br i1 %tobool24.not, label %land.lhs.true.if.then35_crit_edge, label %land.lhs.true.cleanup111_crit_edge

land.lhs.true.cleanup111_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup111

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false:                                    ; preds = %for.body
  %10 = and i16 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool34.not = icmp eq i16 %10, 0
  br i1 %tobool34.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %lor.lhs.false.for.inc_crit_edge
  %atomic.1.off0 = phi i1 [ true, %if.then35 ], [ %atomic.0.off0214, %lor.lhs.false.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.end.if.then.i_crit_edge, label %for.cond42.preheader

for.end.if.then.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.end.thread:                                   ; preds = %for.cond.preheader
  %parent223 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %parent223 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent223, align 8
  %call.i224 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %cmp.i225 = icmp slt i32 %call.i224, 0
  br i1 %cmp.i225, label %for.end.thread.if.then.i_crit_edge, label %for.end.thread.for.end102_crit_edge

for.end.thread.for.end102_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end102

for.end.thread.if.then.i_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.cond42.preheader:                             ; preds = %for.end
  br i1 %cmp21213, label %for.body45.lr.ph, label %for.cond42.preheader.for.end102_crit_edge

for.cond42.preheader.for.end102_crit_edge:        ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end102

for.body45.lr.ph:                                 ; preds = %for.cond42.preheader
  %lock = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 7
  %msg59 = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 8
  %msg_status = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 10
  %sub = add nsw i32 %num, -1
  %last_msg = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 9
  %msg_complete = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 6
  %base.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 1
  %t_halt1.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 15
  %int_enable.i.i170 = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 12
  %line_status.i.i171 = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 13
  %len.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 8, i32 2
  %check_timer.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 14
  %at_cur_cmd.i.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 18
  %at_cur_data.i.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 19
  %parent.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %at_t_done.i.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 16
  %at_slave_event.i.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 17
  br label %for.body45

if.then.i:                                        ; preds = %for.end.thread.if.then.i_crit_edge, %for.end.if.then.i_crit_edge
  %call.i228 = phi i32 [ %call.i224, %for.end.thread.if.then.i_crit_edge ], [ %call.i, %for.end.if.then.i_crit_edge ]
  %15 = phi ptr [ %14, %for.end.thread.if.then.i_crit_edge ], [ %12, %for.end.if.then.i_crit_edge ]
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !159
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup111_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup111_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup111

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !160
  br label %cleanup111

for.body45:                                       ; preds = %if.end94.for.body45_crit_edge, %for.body45.lr.ph
  %i.1219 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc101, %if.end94.for.body45_crit_edge ]
  %arrayidx46 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1219
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %17 = call ptr @memcpy(ptr %msg59, ptr %arrayidx46, i32 12)
  %18 = ptrtoint ptr %msg_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %msg_status, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1219, i32 %sub)
  %cmp60 = icmp eq i32 %i.1219, %sub
  %frombool = zext i1 %cmp60 to i8
  %19 = ptrtoint ptr %last_msg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %last_msg, align 4
  %20 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %msg_complete, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %add.ptr.i165 = getelementptr i8, ptr %24, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 -1) #8, !srcloc !155
  br i1 %atomic.1.off0, label %if.then63, label %if.else

if.then63:                                        ; preds = %for.body45
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %mode, align 4
  %26 = ptrtoint ptr %int_enable.i.i170 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 98352, ptr %int_enable.i.i170, align 8
  %27 = ptrtoint ptr %line_status.i.i171 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %line_status.i.i171, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 813695232) #8, !srcloc !155
  %30 = ptrtoint ptr %at_cur_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %at_cur_cmd.i.i, align 4
  %31 = ptrtoint ptr %at_cur_data.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %at_cur_data.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_i2c_atomic_op.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@img_i2c_xfer, %img_i2c_atomic_start.exit)) #8
          to label %if.then12.i.i [label %img_i2c_atomic_start.exit], !srcloc !157

if.then12.i.i:                                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_i2c_atomic_op.__UNIQUE_ID_ddebug289, ptr noundef %33, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef 0) #8
  br label %img_i2c_atomic_start.exit

img_i2c_atomic_start.exit:                        ; preds = %if.then12.i.i, %if.then63
  %34 = ptrtoint ptr %at_t_done.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %at_t_done.i.i, align 1
  %35 = ptrtoint ptr %at_slave_event.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %at_slave_event.i.i, align 2
  %36 = ptrtoint ptr %line_status.i.i171 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %line_status.i.i171, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 537526272) #8, !srcloc !155
  br label %if.end79

if.else:                                          ; preds = %for.body45
  %39 = ptrtoint ptr %last_msg to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %last_msg, align 4, !range !156
  %41 = ptrtoint ptr %t_halt1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %t_halt1.i, align 8, !range !156
  %43 = xor i8 %40, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %43)
  %cmp.i166 = icmp eq i8 %42, %43
  br i1 %cmp.i166, label %if.else.img_i2c_transaction_halt.exit_crit_edge, label %if.end.i

if.else.img_i2c_transaction_halt.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_transaction_halt.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool65.not = icmp eq i8 %40, 0
  %44 = ptrtoint ptr %t_halt1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %t_halt1.i, align 8
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i168 = getelementptr i8, ptr %46, i32 76
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i168) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %48 = and i32 %47, -131073
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %masksel.i = select i1 %tobool65.not, i32 512, i32 0
  %val.0.i = or i32 %49, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %52, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %50) #8, !srcloc !155
  br label %img_i2c_transaction_halt.exit

img_i2c_transaction_halt.exit:                    ; preds = %if.end.i, %if.else.img_i2c_transaction_halt.exit_crit_edge
  %flags68 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1219, i32 1
  %53 = ptrtoint ptr %flags68 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %flags68, align 2
  %55 = and i16 %54, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool71.not = icmp eq i16 %55, 0
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %mode, align 4
  %57 = ptrtoint ptr %int_enable.i.i170 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 658996, ptr %int_enable.i.i170, align 8
  %58 = ptrtoint ptr %line_status.i.i171 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %line_status.i.i171, align 4
  %59 = ptrtoint ptr %last_msg to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %last_msg, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i180 = icmp eq i8 %60, 0
  br i1 %tobool71.not, label %if.else73, label %if.then72

if.then72:                                        ; preds = %img_i2c_transaction_halt.exit
  br i1 %tobool.not.i180, label %if.then.i172, label %if.then72.img_i2c_read.exit_crit_edge

if.then72.img_i2c_read.exit_crit_edge:            ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_read.exit

if.then.i172:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %int_enable.i.i170 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 724532, ptr %int_enable.i.i170, align 8
  br label %img_i2c_read.exit

img_i2c_read.exit:                                ; preds = %if.then.i172, %if.then72.img_i2c_read.exit_crit_edge
  %62 = ptrtoint ptr %int_enable.i.i170 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %int_enable.i.i170, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i174 = getelementptr i8, ptr %66, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i174, i32 %64) #8, !srcloc !155
  %67 = ptrtoint ptr %msg59 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %msg59, align 8
  %conv.i = zext i16 %68 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %69 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %69) #8, !srcloc !155
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %len.i, align 4
  %conv3.i = zext i16 %73 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %74 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #8
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %76, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %74) #8, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %77, 1
  %call4.i = tail call i32 @mod_timer(ptr noundef %check_timer.i, i32 noundef %add.i) #8
  br label %if.end74

if.else73:                                        ; preds = %img_i2c_transaction_halt.exit
  br i1 %tobool.not.i180, label %if.then.i181, label %if.else73.img_i2c_write.exit_crit_edge

if.else73.img_i2c_write.exit_crit_edge:           ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_write.exit

if.then.i181:                                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %int_enable.i.i170 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 724532, ptr %int_enable.i.i170, align 8
  br label %img_i2c_write.exit

img_i2c_write.exit:                               ; preds = %if.then.i181, %if.else73.img_i2c_write.exit_crit_edge
  %79 = ptrtoint ptr %msg59 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %msg59, align 8
  %conv.i183 = zext i16 %80 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %81 = tail call i32 @llvm.bswap.i32(i32 %conv.i183) #8
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i185 = getelementptr i8, ptr %83, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i185, i32 %81) #8, !srcloc !155
  %84 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %len.i, align 4
  %conv2.i = zext i16 %85 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %86 = tail call i32 @llvm.bswap.i32(i32 %conv2.i) #8
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %88, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %86) #8, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %add.i188 = add i32 %89, 1
  %call3.i = tail call i32 @mod_timer(ptr noundef %check_timer.i, i32 noundef %add.i188) #8
  tail call fastcc void @img_i2c_write_fifo(ptr noundef %1) #8
  %90 = ptrtoint ptr %int_enable.i.i170 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %int_enable.i.i170, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  %93 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %94, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %92) #8, !srcloc !155
  br label %if.end74

if.end74:                                         ; preds = %img_i2c_write.exit, %img_i2c_read.exit
  %95 = ptrtoint ptr %t_halt1.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %t_halt1.i, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp.i191 = icmp eq i8 %96, 0
  br i1 %cmp.i191, label %if.end74.img_i2c_transaction_halt.exit196_crit_edge, label %if.end.i195

if.end74.img_i2c_transaction_halt.exit196_crit_edge: ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %img_i2c_transaction_halt.exit196

if.end.i195:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %t_halt1.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %t_halt1.i, align 8
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i193 = getelementptr i8, ptr %99, i32 76
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i193) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %101 = and i32 %100, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 8
  %add.ptr.i19.i194 = getelementptr i8, ptr %103, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i194, i32 %101) #8, !srcloc !155
  br label %img_i2c_transaction_halt.exit196

img_i2c_transaction_halt.exit196:                 ; preds = %if.end.i195, %if.end74.img_i2c_transaction_halt.exit196_crit_edge
  %104 = ptrtoint ptr %last_msg to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %last_msg, align 4, !range !156
  %106 = ptrtoint ptr %t_halt1.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %t_halt1.i, align 8, !range !156
  %108 = xor i8 %105, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %108)
  %cmp.i198 = icmp eq i8 %107, %108
  br i1 %cmp.i198, label %img_i2c_transaction_halt.exit196.if.end79_crit_edge, label %if.end.i204

img_i2c_transaction_halt.exit196.if.end79_crit_edge: ; preds = %img_i2c_transaction_halt.exit196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end.i204:                                      ; preds = %img_i2c_transaction_halt.exit196
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool76.not = icmp eq i8 %105, 0
  %109 = ptrtoint ptr %t_halt1.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %t_halt1.i, align 8
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i200 = getelementptr i8, ptr %111, i32 76
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i200) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %113 = and i32 %112, -131073
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  %masksel.i201 = select i1 %tobool76.not, i32 512, i32 0
  %val.0.i202 = or i32 %114, %masksel.i201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %115 = tail call i32 @llvm.bswap.i32(i32 %val.0.i202) #8
  %116 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i, align 8
  %add.ptr.i19.i203 = getelementptr i8, ptr %117, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i203, i32 %115) #8, !srcloc !155
  br label %if.end79

if.end79:                                         ; preds = %if.end.i204, %img_i2c_transaction_halt.exit196.if.end79_crit_edge, %img_i2c_atomic_start.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call54) #8
  %call83 = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete, i32 noundef 100) #8
  %call84 = tail call i32 @del_timer_sync(ptr noundef %check_timer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp85 = icmp eq i32 %call83, 0
  br i1 %cmp85, label %do.end90, label %if.end94

do.end90:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.45) #11
  %120 = ptrtoint ptr %msg_status to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -110, ptr %msg_status, align 8
  br label %for.end102

if.end94:                                         ; preds = %if.end79
  %121 = ptrtoint ptr %msg_status to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %msg_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool96.not = icmp ne i32 %122, 0
  %inc101 = add nuw nsw i32 %i.1219, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc101, i32 %num)
  %exitcond221.not = icmp eq i32 %inc101, %num
  %or.cond = select i1 %tobool96.not, i1 true, i1 %exitcond221.not
  br i1 %or.cond, label %if.end94.for.end102_crit_edge, label %if.end94.for.body45_crit_edge

if.end94.for.body45_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45

if.end94.for.end102_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end102

for.end102:                                       ; preds = %if.end94.for.end102_crit_edge, %do.end90, %for.cond42.preheader.for.end102_crit_edge, %for.end.thread.for.end102_crit_edge
  %parent227231 = phi ptr [ %parent, %for.cond42.preheader.for.end102_crit_edge ], [ %parent, %do.end90 ], [ %parent223, %for.end.thread.for.end102_crit_edge ], [ %parent, %if.end94.for.end102_crit_edge ]
  %123 = ptrtoint ptr %parent227231 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %parent227231, align 8
  %call.i206 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 12, i32 22
  %125 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store volatile i64 %call.i206, ptr %last_busy.i, align 8
  %126 = ptrtoint ptr %parent227231 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %parent227231, align 8
  %call.i207 = tail call i32 @__pm_runtime_suspend(ptr noundef %127, i32 noundef 13) #8
  %msg_status108 = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 10
  %128 = ptrtoint ptr %msg_status108 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %msg_status108, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool109.not = icmp eq i32 %129, 0
  %num. = select i1 %tobool109.not, i32 %num, i32 %129
  br label %cleanup111

cleanup111:                                       ; preds = %for.end102, %do.end11.i.i.i.i.i, %if.then.i.cleanup111_crit_edge, %land.lhs.true.cleanup111_crit_edge, %do.end, %entry.cleanup111_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %num., %for.end102 ], [ -5, %entry.cleanup111_crit_edge ], [ %call.i228, %if.then.i.cleanup111_crit_edge ], [ %call.i228, %do.end11.i.i.i.i.i ], [ -5, %land.lhs.true.cleanup111_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @img_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mode1.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %mode1.i, align 4
  %int_enable.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %int_enable.i, align 8
  %line_status.i = getelementptr inbounds %struct.img_i2c, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %line_status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %line_status.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @img_i2c_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !44, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !131, !133, !134, !135, !136, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__initcall__kmod_i2c_img_scb__297_1511_img_scb_i2c_driver_init6, !1, !"__initcall__kmod_i2c_img_scb__297_1511_img_scb_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1511, i32 1}
!2 = !{ptr @__exitcall_img_scb_i2c_driver_exit, !1, !"__exitcall_img_scb_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1513, i32 1}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1514, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1515, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1504, i32 12}
!12 = !{ptr @img_scb_i2c_driver, !13, !"img_scb_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1502, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1348, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1350, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @img_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @img_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1354, i32 42}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1356, i32 3}
!28 = !{ptr @img_i2c_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @img_i2c_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1363, i32 3}
!32 = !{ptr @img_i2c_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @img_i2c_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @img_i2c_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1368, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1371, i32 34}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1381, i32 51}
!41 = !{ptr @img_i2c_probe.__key.17, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1384, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 952, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @img_i2c_isr._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @img_i2c_isr._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 747, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @img_i2c_atomic.__UNIQUE_ID_ddebug290, !53, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 810, i32 3}
!59 = !{ptr @img_i2c_atomic._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @img_i2c_atomic._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 489, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @img_i2c_atomic_op.__UNIQUE_ID_ddebug289, !62, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 467, i32 10}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 355, i32 16}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 356, i32 19}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 357, i32 20}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 358, i32 19}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 359, i32 18}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 360, i32 19}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 361, i32 19}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 362, i32 18}
!83 = !{ptr @img_i2c_atomic_cmd_names, !84, !"img_i2c_atomic_cmd_names", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 354, i32 27}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 861, i32 3}
!87 = !{ptr @img_i2c_auto.__UNIQUE_ID_ddebug292, !86, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!88 = !{ptr @img_i2c_stop_seq, !89, !"img_i2c_stop_seq", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 338, i32 11}
!90 = !{ptr @img_i2c_sequence.continue_bits, !91, !"continue_bits", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 656, i32 28}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 843, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @img_i2c_check_timer.__UNIQUE_ID_ddebug291, !93, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 306, i32 11}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 318, i32 11}
!100 = !{ptr @timings, !101, !"timings", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 303, i32 31}
!102 = !{ptr @img_i2c_algo, !103, !"img_i2c_algo", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1148, i32 35}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1033, i32 3}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1128, i32 4}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @img_i2c_xfer._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @img_i2c_xfer._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"img_i2c_int_enable_by_mode", i1 false, i1 false}
!112 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 342, i32 21}
!113 = !{ptr @init_completion.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../include/linux/completion.h", i32 87, i32 2}
!115 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1445, i32 3}
!118 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @img_i2c_runtime_resume._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @img_i2c_runtime_resume._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1451, i32 3}
!123 = !{ptr @img_i2c_runtime_resume._entry.50, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @img_i2c_runtime_resume._entry_ptr.52, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1167, i32 3}
!127 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @img_i2c_init._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @img_i2c_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1188, i32 3}
!133 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @img_i2c_init._entry.56, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @img_i2c_init._entry_ptr.59, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @img_i2c_reset_seq, !137, !"img_i2c_reset_seq", i1 false, i1 false}
!137 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 331, i32 11}
!138 = !{ptr @img_scb_i2c_match, !139, !"img_scb_i2c_match", i1 false, i1 false}
!139 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1496, i32 34}
!140 = !{ptr @img_i2c_pm, !141, !"img_i2c_pm", i1 false, i1 false}
!141 = !{!"../drivers/i2c/busses/i2c-img-scb.c", i32 1489, i32 32}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"auto-init"}
!152 = !{i64 6895123}
!153 = !{i64 2155664839}
!154 = !{i64 2155664167}
!155 = !{i64 6894705}
!156 = !{i8 0, i8 2}
!157 = !{i64 2148761933, i64 2148761938, i64 2148761951, i64 2148761995, i64 2148762029, i64 2148762050}
!158 = !{i64 2148202076}
!159 = !{i64 686899, i64 686924, i64 686946, i64 686962, i64 686974, i64 686994, i64 687018, i64 687034, i64 687046}
!160 = !{i64 2148202264}
!161 = !{!"branch_weights", i32 1, i32 2000}
