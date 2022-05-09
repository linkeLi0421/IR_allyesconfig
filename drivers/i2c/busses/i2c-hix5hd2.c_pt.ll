; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-hix5hd2.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-hix5hd2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hix5hd2_i2c_priv = type { %struct.i2c_adapter, ptr, %struct.completion, i32, i32, i32, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_hix5hd2__295_522_hix5hd2_i2c_driver_init6 = internal global ptr @hix5hd2_i2c_driver_init, section ".initcall6.init", align 4
@hix5hd2_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hix5hd2_i2c_probe, ptr @hix5hd2_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hix5hd2_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hix5hd2_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hix5hd2_i2c_driver_exit = internal global ptr @hix5hd2_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [47 x i8] c"i2c_hix5hd2.description=Hix5hd2 I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [54 x i8] c"i2c_hix5hd2.author=Wei Yan <sledge.yanwei@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [48 x i8] c"i2c_hix5hd2.file=drivers/i2c/busses/i2c-hix5hd2\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [24 x i8] c"i2c_hix5hd2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [39 x i8] c"i2c_hix5hd2.alias=platform:hix5hd2-i2c\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hix5hd2-i2c\00", [20 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hix5hd2-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hix5hd2_i2c_runtime_suspend, ptr @hix5hd2_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"use max freq %d instead\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hix5hd2_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-hix5hd2.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_probe._entry_ptr = internal global ptr @hix5hd2_i2c_probe._entry, section ".printk_index", align 4
@hix5hd2_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 421, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_probe._entry_ptr.10 = internal global ptr @hix5hd2_i2c_probe._entry.7, section ".printk_index", align 4
@hix5hd2_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @hix5hd2_i2c_xfer, ptr null, ptr null, ptr null, ptr @hix5hd2_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 444, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot request HS-I2C IRQ %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_probe._entry_ptr.14 = internal global ptr @hix5hd2_i2c_probe._entry.12, section ".printk_index", align 4
@hix5hd2_i2c_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 337, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s timeout=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hix5hd2_i2c_xfer_msg\00", [43 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_xfer_msg._entry_ptr = internal global ptr @hix5hd2_i2c_xfer_msg._entry, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_drv_setrate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 34, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_hix5hd2\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hix5hd2_i2c_drv_setrate\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: sysclock=%d, rate=%d, scl=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_irq.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hix5hd2_i2c_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ARB bus loss\0A\00", [18 x i8] zeroinitializer }, align 32
@hix5hd2_i2c_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.4, ptr @.str.25, i8 0, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No ACK from device\0A\00", [44 x i8] zeroinitializer }, align 32
@hix5hd2_rw_preprocess.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hix5hd2_rw_preprocess\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: error: priv->state = %d, msg_len = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@hix5hd2_rw_over.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hix5hd2_rw_over\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: rw and send stop over\0A\00", [37 x i8] zeroinitializer }, align 32
@hix5hd2_rw_over.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.4, ptr @.str.30, i8 0, i8 45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: have not data to send\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4294967295]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"hix5hd2_i2c_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 512, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 516, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"hix5hd2_i2c_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 506, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"hix5hd2_i2c_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 500, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 398, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 404, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 421, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"hix5hd2_i2c_algorithm\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 382, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 436, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 444, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 335, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 87, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 138, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 256, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 262, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 236, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 179, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-hix5hd2.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 181, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_hix5hd2_i2c_driver_exit, ptr @__initcall__kmod_i2c_hix5hd2__295_522_hix5hd2_i2c_driver_init6, ptr @hix5hd2_i2c_driver_exit, ptr @hix5hd2_i2c_probe._entry, ptr @hix5hd2_i2c_probe._entry.12, ptr @hix5hd2_i2c_probe._entry.7, ptr @hix5hd2_i2c_probe._entry_ptr, ptr @hix5hd2_i2c_probe._entry_ptr.10, ptr @hix5hd2_i2c_probe._entry_ptr.14, ptr @hix5hd2_i2c_xfer_msg._entry, ptr @hix5hd2_i2c_xfer_msg._entry_ptr, ptr @hix5hd2_i2c_driver, ptr @.str, ptr @hix5hd2_i2c_match, ptr @hix5hd2_i2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @hix5hd2_i2c_algorithm, ptr @hix5hd2_i2c_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_i2c_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hix5hd2_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hix5hd2_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @hix5hd2_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #8
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %freq, align 4, !annotation !86
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1504, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %freq, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %freq5 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %freq5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 100000, ptr %freq5, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %5)
  %cmp = icmp ugt i32 %5, 400000
  %freq7 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 11
  br i1 %cmp, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %freq7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 400000, ptr %freq7, align 4
  %dev8 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev8, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef 400000) #11
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %freq7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %freq7, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6, %if.then4
  %call13 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call25 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25, ptr %clk, align 4
  %cmp.i138 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %call.i139 = call i32 @clk_prepare(ptr noundef %call25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.clk_prepare_enable.exit_crit_edge

if.end35.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end35
  %call1.i = call i32 @clk_enable(ptr noundef %call25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call25) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end35.clk_prepare_enable.exit_crit_edge
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call38 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #8
  %dev40 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %dev40, align 8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hix5hd2_i2c_algorithm, ptr %algo, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %retries, align 8
  %of_node46 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %20 = ptrtoint ptr %of_node46 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %of_node46, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i140 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i140 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i140, align 4
  %lock = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @hix5hd2_i2c_probe.__key, i16 noundef signext 3) #8
  %msg_complete = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %call.i, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #8
  call fastcc void @hix5hd2_i2c_init(ptr noundef nonnull %call.i)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i141 = icmp eq ptr %27, null
  br i1 %tobool.not.i141, label %if.end.i142, label %clk_prepare_enable.exit.dev_name.exit_crit_edge

clk_prepare_enable.exit.dev_name.exit_crit_edge:  ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i142:                                      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i142, %clk_prepare_enable.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i142 ], [ %27, %clk_prepare_enable.exit.dev_name.exit_crit_edge ]
  %call.i143 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call20, ptr noundef nonnull @hix5hd2_i2c_irq, ptr noundef null, i32 noundef 16384, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %cmp60.not = icmp eq i32 %call.i143, 0
  br i1 %cmp60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call20) #11
  br label %err_clk

if.end66:                                         ; preds = %dev_name.exit
  %30 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev40, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %31, i32 noundef 1000) #8
  %32 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev40, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %33, i1 noundef zeroext true) #8
  %34 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev40, align 8
  %call.i144 = call i32 @__pm_runtime_set_status(ptr noundef %35, i32 noundef 0) #8
  %36 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev40, align 8
  call void @pm_runtime_enable(ptr noundef %37) #8
  %call73 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %err_runtime, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_runtime:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev40, align 8
  call void @__pm_runtime_disable(ptr noundef %39, i1 noundef zeroext true) #8
  %40 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev40, align 8
  %call.i145 = call i32 @__pm_runtime_set_status(ptr noundef %41, i32 noundef 2) #8
  br label %err_clk

err_clk:                                          ; preds = %err_runtime, %do.end64
  %ret.0 = phi i32 [ %call.i143, %do.end64 ], [ %call73, %err_runtime ]
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %43) #8
  call void @clk_unprepare(ptr noundef %43) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end66.cleanup_crit_edge, %do.end31, %if.end19.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then16 ], [ %15, %do.end31 ], [ %ret.0, %err_clk ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call73, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 2) #8
  %clk = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_i2c_init(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !87
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !88
  %5 = and i32 %4, 2147483647
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !87
  %freq.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 11
  %8 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq.i, align 4
  %clk.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 7
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  %call3.i = tail call i32 @clk_get_rate(ptr noundef %11) #8
  %mul.i = shl i32 %9, 1
  %div.i = udiv i32 %call3.i, %mul.i
  %div428.i = lshr i32 %div.i, 1
  %sub.i = add nsw i32 %div428.i, -1
  %12 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %12) #8, !srcloc !87
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %12) #8, !srcloc !87
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %4) #8, !srcloc !87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_i2c_drv_setrate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_i2c_init, %hix5hd2_i2c_drv_setrate.exit)) #8
          to label %if.then.i [label %hix5hd2_i2c_drv_setrate.exit], !srcloc !89

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 8
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_i2c_drv_setrate.__UNIQUE_ID_ddebug289, ptr noundef %20, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %call3.i, i32 noundef %9, i32 noundef %sub.i) #8
  br label %hix5hd2_i2c_drv_setrate.exit

hix5hd2_i2c_drv_setrate.exit:                     ; preds = %if.then.i, %entry
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2130706432) #8, !srcloc !87
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2063532032) #8, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_i2c_irq(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %regs.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !88
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %2) #8, !srcloc !87
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_i2c_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_i2c_irq, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !89

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_i2c_irq.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %err = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 10
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -11, ptr %err, align 8
  %state = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 12
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %state, align 8
  br label %stop

if.else:                                          ; preds = %entry
  %and7 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end32, label %do.body10

do.body10:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_i2c_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_i2c_irq, %do.end28)) #8
          to label %if.then24 [label %do.end28], !srcloc !89

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 8
  %10 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_i2c_irq.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.25) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body10
  %err29 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 10
  %12 = ptrtoint ptr %err29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -6, ptr %err29, align 8
  %state30 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 12
  %13 = ptrtoint ptr %state30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %state30, align 8
  br label %stop

if.end32:                                         ; preds = %if.else
  %and33 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.stop_crit_edge, label %if.then35

if.end32.stop_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop

if.then35:                                        ; preds = %if.end32
  %msg_len = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 4
  %14 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  %state.i97 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 12
  %16 = ptrtoint ptr %state.i97 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i97, align 8
  br i1 %cmp.not, label %if.else48, label %if.then36

if.then36:                                        ; preds = %if.then35
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.body.i [
    i32 0, label %if.then.i
    i32 1, label %if.then4.i
  ]

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %state.i97 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state.i97, align 8
  br label %if.end42

if.then4.i:                                       ; preds = %if.then36
  %msg.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 1
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg.i, align 8
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i, label %if.then4.i.if.end.i_crit_edge, label %if.then5.i

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr.i95 = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #8, !srcloc !88
  %28 = lshr i32 %27, 24
  %conv6.i = trunc i32 %28 to i8
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msg.i, align 8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf.i, align 4
  %msg_idx.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 3
  %33 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_idx.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %msg_idx.i, align 4
  %arrayidx.i = getelementptr i8, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv6.i, ptr %arrayidx.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then4.i.if.end.i_crit_edge
  %36 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_len, align 8
  %dec.i = add i32 %37, -1
  store i32 %dec.i, ptr %msg_len, align 8
  br label %if.end42

do.body.i:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_rw_preprocess.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_i2c_irq, %if.then39)) #8
          to label %if.then15.i [label %if.then39], !srcloc !89

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 8
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %40 = ptrtoint ptr %state.i97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i97, align 8
  %42 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_rw_preprocess.__UNIQUE_ID_ddebug292, ptr noundef %39, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %41, i32 noundef %43) #8
  br label %if.then39

if.then39:                                        ; preds = %if.then15.i, %do.body.i
  %err40 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 10
  %44 = ptrtoint ptr %err40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -11, ptr %err40, align 8
  %45 = ptrtoint ptr %state.i97 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %state.i97, align 8
  br label %stop

if.end42:                                         ; preds = %if.end.i, %if.then.i
  %msg = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 1
  %46 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags, align 2
  %50 = and i16 %49, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool44.not = icmp eq i16 %50, 0
  br i1 %tobool44.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hix5hd2_read_handle(ptr noundef %dev_id)
  br label %stop

if.else46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hix5hd2_write_handle(ptr noundef %dev_id)
  br label %stop

if.else48:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %do.body.i98, label %do.body5.i

do.body.i98:                                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_rw_over.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_i2c_irq, %hix5hd2_rw_over.exit)) #8
          to label %if.then4.i100 [label %hix5hd2_rw_over.exit], !srcloc !89

if.then4.i100:                                    ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i99 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 8
  %51 = ptrtoint ptr %dev.i99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i99, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_rw_over.__UNIQUE_ID_ddebug290, ptr noundef %52, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #8
  br label %hix5hd2_rw_over.exit

do.body5.i:                                       ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_rw_over.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_i2c_irq, %hix5hd2_rw_over.exit)) #8
          to label %if.then19.i [label %hix5hd2_rw_over.exit], !srcloc !89

if.then19.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev20.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 8
  %53 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev20.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_rw_over.__UNIQUE_ID_ddebug291, ptr noundef %54, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #8
  br label %hix5hd2_rw_over.exit

hix5hd2_rw_over.exit:                             ; preds = %if.then19.i, %do.body5.i, %if.then4.i100, %do.body.i98
  %55 = ptrtoint ptr %state.i97 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %state.i97, align 8
  %err.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 10
  %56 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %err.i, align 8
  br label %stop

stop:                                             ; preds = %hix5hd2_rw_over.exit, %if.else46, %if.then45, %if.then39, %if.end32.stop_crit_edge, %do.end28, %do.end
  %state51 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 12
  %57 = ptrtoint ptr %state51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state51, align 8
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %58, label %stop.if.end63_crit_edge [
    i32 3, label %land.lhs.true
    i32 -1, label %stop.if.then61_crit_edge
  ]

stop.if.then61_crit_edge:                         ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

stop.if.end63_crit_edge:                          ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true:                                    ; preds = %stop
  %msg54 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 1
  %60 = ptrtoint ptr %msg54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msg54, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len, align 4
  %conv55 = zext i16 %63 to i32
  %msg_idx = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 3
  %64 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv55)
  %cmp56 = icmp eq i32 %65, %conv55
  br i1 %cmp56, label %land.lhs.true.if.then61_crit_edge, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true.if.then61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

if.then61:                                        ; preds = %land.lhs.true.if.then61_crit_edge, %stop.if.then61_crit_edge
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #8, !srcloc !87
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 8
  %add.ptr.i103 = getelementptr i8, ptr %69, i32 12
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #8, !srcloc !88
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i104 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i104, i32 %70) #8, !srcloc !87
  %msg_complete = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %dev_id, i32 0, i32 2
  tail call void @complete(ptr noundef %msg_complete) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true.if.end63_crit_edge, %stop.if.end63_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp21 = icmp sgt i32 %num, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %num, -1
  %msg.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 1
  %msg_idx.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 3
  %msg_len.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 4
  %stop2.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 5
  %err.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 10
  %state.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 12
  %msg_complete.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 2
  %lock.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 9
  %regs.i.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 6
  %timeout4.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  %clk.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %msgs.addr.022 = phi ptr [ %msgs, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024, i32 %sub)
  %cmp2 = icmp eq i32 %i.024, %sub
  %conv = zext i1 %cmp2 to i32
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msgs.addr.022, ptr %msg.i, align 8
  %5 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %msg_idx.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.addr.022, i32 0, i32 2
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %msg_len.i, align 8
  %9 = ptrtoint ptr %stop2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %stop2.i, align 4
  %10 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %err.i, align 8
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state.i, align 8
  %12 = ptrtoint ptr %msg_complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg_complete.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %13 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2130706432) #8, !srcloc !87
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -2063532032) #8, !srcloc !87
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  %conv.i.i.i = zext i16 %20 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags.i.i.i, align 2
  %23 = and i16 %22, 1
  %24 = zext i16 %23 to i32
  %shl.i.masked.i.i = and i32 %shl.i.i.i, 254
  %conv6.i.i = or i32 %shl.i.masked.i.i, %24
  %25 = shl nuw i32 %conv6.i.i, 24
  %26 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #8, !srcloc !87
  %28 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 167772160) #8, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #8
  %30 = ptrtoint ptr %timeout4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeout4.i, align 4
  %call.i18 = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete.i, i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp.i = icmp eq i32 %call.i18, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %state.i, align 8
  %33 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -110, ptr %err.i, align 8
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.addr.022, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags.i, align 2
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i = icmp eq i16 %38, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.18, ptr @.str.17
  %39 = ptrtoint ptr %timeout4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %timeout4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond.i, i32 noundef %40) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp13.i = icmp eq i32 %42, 3
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end.i
  br i1 %cmp2, label %if.then16.i, label %land.lhs.true.i.hix5hd2_i2c_xfer_msg.exit_crit_edge

land.lhs.true.i.hix5hd2_i2c_xfer_msg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_i2c_xfer_msg.exit

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -10, %43
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.then16.i
  %44 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i47.i = getelementptr i8, ptr %45, i32 12
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47.i) #8, !srcloc !88
  %47 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 %46) #8, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool.not.i.i = icmp sgt i32 %46, -1
  br i1 %tobool.not.i.i, label %do.body.i.i.hix5hd2_i2c_xfer_msg.exit_crit_edge, label %if.end.i.i

do.body.i.i.hix5hd2_i2c_xfer_msg.exit_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_i2c_xfer_msg.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %49
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.if.then21.i_crit_edge

if.end.i.i.if.then21.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp19.i = icmp slt i32 %42, 0
  br i1 %cmp19.i, label %if.end18.i.if.then21.i_crit_edge, label %if.end18.i.hix5hd2_i2c_xfer_msg.exit_crit_edge

if.end18.i.hix5hd2_i2c_xfer_msg.exit_crit_edge:   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_i2c_xfer_msg.exit

if.end18.i.if.then21.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end18.i.if.then21.i_crit_edge, %if.end.i.i.if.then21.i_crit_edge
  %50 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %51) #8
  tail call void @clk_unprepare(ptr noundef %51) #8
  tail call void @msleep(i32 noundef 20) #8
  %52 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i.i, align 4
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then21.i.hix5hd2_i2c_reset.exit.i_crit_edge

if.then21.i.hix5hd2_i2c_reset.exit.i_crit_edge:   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_i2c_reset.exit.i

if.end.i.i.i:                                     ; preds = %if.then21.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.hix5hd2_i2c_reset.exit.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.hix5hd2_i2c_reset.exit.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_i2c_reset.exit.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %53) #8
  br label %hix5hd2_i2c_reset.exit.i

hix5hd2_i2c_reset.exit.i:                         ; preds = %if.then3.i.i.i, %if.end.i.i.i.hix5hd2_i2c_reset.exit.i_crit_edge, %if.then21.i.hix5hd2_i2c_reset.exit.i_crit_edge
  tail call fastcc void @hix5hd2_i2c_init(ptr noundef %1) #8
  br label %hix5hd2_i2c_xfer_msg.exit

hix5hd2_i2c_xfer_msg.exit:                        ; preds = %hix5hd2_i2c_reset.exit.i, %if.end18.i.hix5hd2_i2c_xfer_msg.exit_crit_edge, %do.body.i.i.hix5hd2_i2c_xfer_msg.exit_crit_edge, %land.lhs.true.i.hix5hd2_i2c_xfer_msg.exit_crit_edge
  %54 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp4 = icmp slt i32 %55, 0
  br i1 %cmp4, label %hix5hd2_i2c_xfer_msg.exit.out_crit_edge, label %for.inc

hix5hd2_i2c_xfer_msg.exit.out_crit_edge:          ; preds = %hix5hd2_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc:                                          ; preds = %hix5hd2_i2c_xfer_msg.exit
  %inc = add nuw nsw i32 %i.024, 1
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %msgs.addr.022, i32 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %hix5hd2_i2c_xfer_msg.exit.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %num, %entry.out_crit_edge ], [ %num, %for.inc.out_crit_edge ], [ %55, %hix5hd2_i2c_xfer_msg.exit.out_crit_edge ]
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %call.i19 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 12, i32 22
  %58 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store volatile i64 %call.i19, ptr %last_busy.i, align 8
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %call.i20 = tail call i32 @__pm_runtime_suspend(ptr noundef %60, i32 noundef 13) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hix5hd2_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251527177
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_read_handle(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_len = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_len, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %1, label %if.then3 [
    i32 1, label %if.then
    i32 0, label %if.else6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regs = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 6
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 335544320) #8, !srcloc !87
  br label %if.end7

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regs4 = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 6
  %5 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs4, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 67108864) #8, !srcloc !87
  br label %if.end7

if.else6:                                         ; preds = %entry
  %stop.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %state.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %state.i.i, align 8
  %regs.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 6
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !87
  br label %if.end7

if.else.i:                                        ; preds = %if.else6
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 2
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body5.i.i

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_rw_over.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_read_handle, %hix5hd2_rw_over.exit.i)) #8
          to label %if.then4.i.i [label %hix5hd2_rw_over.exit.i], !srcloc !89

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 8
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_rw_over.__UNIQUE_ID_ddebug290, ptr noundef %15, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #8
  br label %hix5hd2_rw_over.exit.i

do.body5.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_rw_over.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_read_handle, %hix5hd2_rw_over.exit.i)) #8
          to label %if.then19.i.i [label %hix5hd2_rw_over.exit.i], !srcloc !89

if.then19.i.i:                                    ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev20.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 8
  %16 = ptrtoint ptr %dev20.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev20.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_rw_over.__UNIQUE_ID_ddebug291, ptr noundef %17, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #8
  br label %hix5hd2_rw_over.exit.i

hix5hd2_rw_over.exit.i:                           ; preds = %if.then19.i.i, %do.body5.i.i, %if.then4.i.i, %do.body.i.i
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %state.i.i, align 8
  %err.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 10
  %19 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %err.i.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %hix5hd2_rw_over.exit.i, %if.then.i, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_write_handle(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_len = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %msg = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %msg_idx = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_idx, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %msg_idx, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %10 = shl nuw i32 %conv, 24
  %regs = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 6
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #8, !srcloc !87
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr2 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 33554432) #8, !srcloc !87
  br label %if.end

if.else:                                          ; preds = %entry
  %stop.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 5
  %15 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %state.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %state.i.i, align 8
  %regs.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !87
  br label %if.end

if.else.i:                                        ; preds = %if.else
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 2
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body5.i.i

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_rw_over.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_write_handle, %hix5hd2_rw_over.exit.i)) #8
          to label %if.then4.i.i [label %hix5hd2_rw_over.exit.i], !srcloc !89

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 8
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_rw_over.__UNIQUE_ID_ddebug290, ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #8
  br label %hix5hd2_rw_over.exit.i

do.body5.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hix5hd2_rw_over.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hix5hd2_write_handle, %hix5hd2_rw_over.exit.i)) #8
          to label %if.then19.i.i [label %hix5hd2_rw_over.exit.i], !srcloc !89

if.then19.i.i:                                    ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev20.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 8
  %24 = ptrtoint ptr %dev20.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev20.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hix5hd2_rw_over.__UNIQUE_ID_ddebug291, ptr noundef %25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #8
  br label %hix5hd2_rw_over.exit.i

hix5hd2_rw_over.exit.i:                           ; preds = %if.then19.i.i, %do.body5.i.i, %if.then4.i.i, %do.body.i.i
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %state.i.i, align 8
  %err.i.i = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %priv, i32 0, i32 10
  %27 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %err.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %hix5hd2_rw_over.exit.i, %if.then.i, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_i2c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_i2c_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.hix5hd2_i2c_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  tail call fastcc void @hix5hd2_i2c_init(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_i2c_hix5hd2__295_522_hix5hd2_i2c_driver_init6, !1, !"__initcall__kmod_i2c_hix5hd2__295_522_hix5hd2_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 522, i32 1}
!2 = !{ptr @__exitcall_hix5hd2_i2c_driver_exit, !1, !"__exitcall_hix5hd2_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 524, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 525, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 526, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias300, !11, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 527, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 516, i32 11}
!14 = !{ptr @hix5hd2_i2c_driver, !15, !"hix5hd2_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 512, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 398, i32 31}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 404, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hix5hd2_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @hix5hd2_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 421, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hix5hd2_i2c_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hix5hd2_i2c_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @hix5hd2_i2c_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 436, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 444, i32 3}
!36 = !{ptr @hix5hd2_i2c_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hix5hd2_i2c_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @hix5hd2_i2c_algorithm, !39, !"hix5hd2_i2c_algorithm", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 382, i32 35}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 335, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hix5hd2_i2c_xfer_msg._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @hix5hd2_i2c_xfer_msg._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 138, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hix5hd2_i2c_drv_setrate.__UNIQUE_ID_ddebug289, !51, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 256, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hix5hd2_i2c_irq.__UNIQUE_ID_ddebug293, !56, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 262, i32 3}
!61 = !{ptr @hix5hd2_i2c_irq.__UNIQUE_ID_ddebug294, !60, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 236, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hix5hd2_rw_preprocess.__UNIQUE_ID_ddebug292, !63, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 179, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hix5hd2_rw_over.__UNIQUE_ID_ddebug290, !67, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 181, i32 3}
!72 = !{ptr @hix5hd2_rw_over.__UNIQUE_ID_ddebug291, !71, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!73 = !{ptr @hix5hd2_i2c_match, !74, !"hix5hd2_i2c_match", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 506, i32 34}
!75 = !{ptr @hix5hd2_i2c_pm_ops, !76, !"hix5hd2_i2c_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-hix5hd2.c", i32 500, i32 32}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i64 6873255}
!88 = !{i64 6873673}
!89 = !{i64 2148732673, i64 2148732678, i64 2148732691, i64 2148732735, i64 2148732769, i64 2148732790}
