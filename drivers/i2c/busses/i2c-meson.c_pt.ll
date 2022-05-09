; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-meson.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-meson.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.meson_i2c_data = type { i8 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.meson_i2c = type { %struct.i2c_adapter, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.completion, [2 x i32], i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_meson__318_523_meson_i2c_driver_init6 = internal global ptr @meson_i2c_driver_init, section ".initcall6.init", align 4
@meson_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_i2c_probe, ptr @meson_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_i2c_driver_exit = internal global ptr @meson_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [51 x i8] c"i2c_meson.description=Amlogic Meson I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [57 x i8] c"i2c_meson.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [44 x i8] c"i2c_meson.file=drivers/i2c/busses/i2c-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [25 x i8] c"i2c_meson.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meson-i2c\00", [22 x i8] zeroinitializer }, align 32
@meson_i2c_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson6-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2c_meson6_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2c_gxbb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2c_axg_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@meson_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@meson_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get device clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson_i2c_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/i2c/busses/i2c-meson.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_i2c_probe._entry_ptr = internal global ptr @meson_i2c_probe._entry, section ".printk_index", align 4
@meson_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't request IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@meson_i2c_probe._entry_ptr.9 = internal global ptr @meson_i2c_probe._entry.7, section ".printk_index", align 4
@meson_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't prepare clock\0A\00", [43 x i8] zeroinitializer }, align 32
@meson_i2c_probe._entry_ptr.12 = internal global ptr @meson_i2c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Meson I2C adapter\00", [46 x i8] zeroinitializer }, align 32
@meson_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @meson_i2c_xfer, ptr @meson_i2c_xfer_atomic, ptr null, ptr null, ptr @meson_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@meson_i2c_irq.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_meson\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson_i2c_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"irq: state %d, pos %d, count %d, ctrl %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@meson_i2c_transfer_complete.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"meson_i2c_transfer_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"error bit set\0A\00", [17 x i8] zeroinitializer }, align 32
@meson_i2c_get_data.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_i2c_get_data\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: data %08x %08x len %d\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_i2c_put_data.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.22, ptr @.str.4, ptr @.str.21, i8 0, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_i2c_put_data\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_i2c_set_clk_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"requested bus frequency too low\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_i2c_set_clk_div\00", [42 x i8] zeroinitializer }, align 32
@meson_i2c_set_clk_div._entry_ptr = internal global ptr @meson_i2c_set_clk_div._entry, section ".printk_index", align 4
@meson_i2c_set_clk_div.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: clk %lu, freq %u, div %u\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_meson6_data = internal constant { %struct.meson_i2c_data, [31 x i8] } { %struct.meson_i2c_data { i8 4 }, [31 x i8] zeroinitializer }, align 32
@i2c_gxbb_data = internal constant { %struct.meson_i2c_data, [31 x i8] } { %struct.meson_i2c_data { i8 4 }, [31 x i8] zeroinitializer }, align 32
@i2c_axg_data = internal constant { %struct.meson_i2c_data, [31 x i8] } { %struct.meson_i2c_data { i8 3 }, [31 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"meson_i2c_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 514, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 518, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"meson_i2c_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 505, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 422, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 430, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 444, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 450, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 454, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"meson_i2c_algorithm\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 400, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 87, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 263, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 237, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 173, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 197, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 148, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 161, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"i2c_meson6_data\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 493, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"i2c_gxbb_data\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 497, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"i2c_axg_data\00", align 1
@___asan_gen_.126 = private constant [34 x i8] c"../drivers/i2c/busses/i2c-meson.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 501, i32 36 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_meson_i2c_driver_exit, ptr @__initcall__kmod_i2c_meson__318_523_meson_i2c_driver_init6, ptr @meson_i2c_driver_exit, ptr @meson_i2c_probe._entry, ptr @meson_i2c_probe._entry.10, ptr @meson_i2c_probe._entry.7, ptr @meson_i2c_probe._entry_ptr, ptr @meson_i2c_probe._entry_ptr.12, ptr @meson_i2c_probe._entry_ptr.9, ptr @meson_i2c_set_clk_div._entry, ptr @meson_i2c_set_clk_div._entry_ptr, ptr @meson_i2c_driver, ptr @.str, ptr @meson_i2c_match, ptr @meson_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @meson_i2c_algorithm, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @i2c_meson6_data, ptr @i2c_gxbb_data, ptr @i2c_axg_data], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_i2c_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_i2c_set_clk_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_meson6_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gxbb_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_axg_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %timings = alloca %struct.i2c_timings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %timings) #8
  %2 = call ptr @memset(ptr %timings, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1512, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @i2c_parse_fw_timings(ptr noundef %dev, ptr noundef nonnull %timings, i1 noundef zeroext true) #8
  %dev4 = getelementptr inbounds %struct.meson_i2c, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev4, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.meson_i2c, ptr %call.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @meson_i2c_probe.__key, i16 noundef signext 3) #8
  %done = getelementptr inbounds %struct.meson_i2c, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.meson_i2c, ptr %call.i, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #8
  %call7 = call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %data = getelementptr inbounds %struct.meson_i2c, ptr %call.i, i32 0, i32 14
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %data, align 4
  %call9 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.meson_i2c, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.meson_i2c, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %regs, align 4
  %cmp.i113 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call27 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %call.i114 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call27, ptr noundef nonnull @meson_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp32 = icmp slt i32 %call.i114, 0
  br i1 %cmp32, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 8
  %call.i115 = call i32 @clk_prepare(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.clk_prepare_enable.exit_crit_edge

if.end38.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end38
  %call1.i = call i32 @clk_enable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end47_crit_edge, label %if.then3.i

if.end.i.if.end47_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %14) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end38.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i115, %if.end38.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp41 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp41, label %do.end45, label %clk_prepare_enable.exit.if.end47_crit_edge

clk_prepare_enable.exit.if.end47_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end45:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end47:                                         ; preds = %clk_prepare_enable.exit.if.end47_crit_edge, %if.end.i.if.end47_crit_edge
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call48 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef 48) #8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @meson_i2c_algorithm, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %parent, align 8
  %of_node56 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %18 = ptrtoint ptr %of_node56 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %of_node56, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %algo_data, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %23 = and i32 %22, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !84
  %call59 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %27) #8
  call void @clk_unprepare(ptr noundef %27) #8
  br label %cleanup

if.end63:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %31 = and i32 %30, -4128769
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %33, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %31) #8, !srcloc !84
  %34 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timings, align 4
  call fastcc void @meson_i2c_set_clk_div(ptr noundef nonnull %call.i, i32 noundef %35)
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then61, %do.end45, %do.end36, %if.end26.cleanup_crit_edge, %if.then23, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end15 ], [ %12, %if.then23 ], [ %call.i114, %do.end36 ], [ %retval.0.i, %do.end45 ], [ %call59, %if.then61 ], [ 0, %if.end63 ], [ -12, %entry.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timings) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %clk = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 3
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
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_i2c_irq(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %tokens.i = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 12
  %0 = ptrtoint ptr %tokens.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tokens.i, align 8
  %arrayidx2.i = getelementptr %struct.meson_i2c, ptr %dev_id, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %arrayidx2.i, align 4
  %num_tokens.i = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 13
  %2 = ptrtoint ptr %num_tokens.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_tokens.i, align 8
  %regs.i = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !84
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !81
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_i2c_irq.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_i2c_irq, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %state = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 5
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 8
  %pos = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 8
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pos, align 4
  %count = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 7
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_i2c_irq.__UNIQUE_ID_ddebug312, ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %12) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state7 = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 5
  %21 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call fastcc void @meson_i2c_transfer_complete(ptr noundef %dev_id, i32 noundef %12)
  %23 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp12 = icmp eq i32 %24, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.meson_i2c, ptr %dev_id, i32 0, i32 11
  tail call void @complete(ptr noundef %done) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @meson_i2c_prepare_xfer(ptr noundef %dev_id)
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %28 = or i32 %27, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #8, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end14 ], [ 1, %if.then13 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_i2c_set_clk_div(ptr nocapture noundef readonly %i2c, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %add = add i32 %freq, -1
  %sub = add i32 %add, %call
  %div1 = udiv i32 %sub, %freq
  %data = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %add3 = add i32 %div1, -16
  %sub4 = add i32 %add3, %conv
  %div8 = udiv i32 %sub4, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %div8)
  %cmp = icmp ugt i32 %div8, 4095
  br i1 %cmp, label %do.end, label %entry.do.end52_crit_edge

entry.do.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23) #11
  br label %do.end52

do.end52:                                         ; preds = %do.end, %entry.do.end52_crit_edge
  %div.0 = phi i32 [ 4095, %do.end ], [ %div8, %entry.do.end52_crit_edge ]
  %and = shl nuw nsw i32 %div.0, 12
  %shl = and i32 %and, 4190208
  %regs.i = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %11 = and i32 %10, -15744769
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or.i = or i32 %12, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !84
  %16 = shl nuw nsw i32 %div.0, 18
  %and56 = and i32 %16, 805306368
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %20 = and i32 %19, -49
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %or.i90 = or i32 %21, %and56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i90) #8
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !84
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %28 = and i32 %27, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %28) #8, !srcloc !84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_i2c_set_clk_div.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_i2c_set_clk_div, %do.end68)) #8
          to label %if.then64 [label %do.end68], !srcloc !86

if.then64:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %dev65 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 1
  %31 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev65, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_i2c_set_clk_div.__UNIQUE_ID_ddebug298, ptr noundef %32, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %call, i32 noundef %freq, i32 noundef %div.0) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.end52
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_i2c_transfer_complete(ptr nocapture noundef %i2c, i32 noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ctrl, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_i2c_transfer_complete.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_i2c_transfer_complete, %do.end)) #8
          to label %if.then5 [label %do.end], !srcloc !86

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_i2c_transfer_complete.__UNIQUE_ID_ddebug311, ptr noundef %1, ptr noundef nonnull @.str.19) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %error = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 9
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -6, ptr %error, align 8
  %state = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 5
  br label %if.end20.sink.split

if.else:                                          ; preds = %entry
  %state6 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 5
  %3 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.else
  %count = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 7
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %msg = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msg, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %pos = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 8
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %12
  %regs.i = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 2
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !81
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !81
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_i2c_get_data.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_i2c_transfer_complete, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !86

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_i2c_get_data.__UNIQUE_ID_ddebug299, ptr noundef %22, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %16, i32 noundef %20, i32 noundef %6) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1553.i = icmp sgt i32 %6, 0
  br i1 %cmp1553.i, label %for.body.preheader.i, label %do.end.i.for.cond16.preheader.i_crit_edge

do.end.i.for.cond16.preheader.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond16.preheader.i

for.body.preheader.i:                             ; preds = %do.end.i
  %23 = tail call i32 @llvm.smin.i32(i32 %6, i32 4) #8
  %conv.i = trunc i32 %16 to i8
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 1
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %exitcond.not.i = icmp eq i32 %23, 1
  br i1 %exitcond.not.i, label %for.body.preheader.i.for.cond16.preheader.i_crit_edge, label %for.body.i.1

for.body.preheader.i.for.cond16.preheader.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %for.body.i.3, %for.body.i.2.for.cond16.preheader.i_crit_edge, %for.body.i.1.for.cond16.preheader.i_crit_edge, %for.body.preheader.i.for.cond16.preheader.i_crit_edge, %do.end.i.for.cond16.preheader.i_crit_edge
  %buf.addr.0.lcssa.i = phi ptr [ %add.ptr, %do.end.i.for.cond16.preheader.i_crit_edge ], [ %incdec.ptr.i, %for.body.preheader.i.for.cond16.preheader.i_crit_edge ], [ %incdec.ptr.i.1, %for.body.i.1.for.cond16.preheader.i_crit_edge ], [ %incdec.ptr.i.2, %for.body.i.2.for.cond16.preheader.i_crit_edge ], [ %incdec.ptr.i.3, %for.body.i.3 ]
  %25 = tail call i32 @llvm.smin.i32(i32 %6, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp2456.i = icmp sgt i32 %25, 4
  br i1 %cmp2456.i, label %for.cond16.preheader.i.for.body26.i_crit_edge, label %for.cond16.preheader.i.if.end10_crit_edge

for.cond16.preheader.i.if.end10_crit_edge:        ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.cond16.preheader.i.for.body26.i_crit_edge:    ; preds = %for.cond16.preheader.i
  br label %for.body26.i

for.body.i.1:                                     ; preds = %for.body.preheader.i
  %shr.i.1 = lshr i32 %16, 8
  %conv.i.1 = trunc i32 %shr.i.1 to i8
  %incdec.ptr.i.1 = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i.1, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %exitcond.not.i.1 = icmp eq i32 %23, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.cond16.preheader.i_crit_edge, label %for.body.i.2

for.body.i.1.for.cond16.preheader.i_crit_edge:    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond16.preheader.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %shr.i.2 = lshr i32 %16, 16
  %conv.i.2 = trunc i32 %shr.i.2 to i8
  %incdec.ptr.i.2 = getelementptr i8, ptr %incdec.ptr.i.1, i32 1
  %27 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i.2, ptr %incdec.ptr.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %exitcond.not.i.2 = icmp eq i32 %23, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.for.cond16.preheader.i_crit_edge, label %for.body.i.3

for.body.i.2.for.cond16.preheader.i_crit_edge:    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond16.preheader.i

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.3 = lshr i32 %16, 24
  %conv.i.3 = trunc i32 %shr.i.3 to i8
  %incdec.ptr.i.3 = getelementptr i8, ptr %incdec.ptr.i.2, i32 1
  %28 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i.3, ptr %incdec.ptr.i.2, align 1
  br label %for.cond16.preheader.i

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.cond16.preheader.i.for.body26.i_crit_edge
  %buf.addr.158.i = phi ptr [ %incdec.ptr31.i, %for.body26.i.for.body26.i_crit_edge ], [ %buf.addr.0.lcssa.i, %for.cond16.preheader.i.for.body26.i_crit_edge ]
  %i.157.i = phi i32 [ %inc33.i, %for.body26.i.for.body26.i_crit_edge ], [ 4, %for.cond16.preheader.i.for.body26.i_crit_edge ]
  %sub.i = shl i32 %i.157.i, 3
  %mul27.i = add nsw i32 %sub.i, -32
  %shr28.i = lshr i32 %20, %mul27.i
  %conv30.i = trunc i32 %shr28.i to i8
  %incdec.ptr31.i = getelementptr i8, ptr %buf.addr.158.i, i32 1
  %29 = ptrtoint ptr %buf.addr.158.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv30.i, ptr %buf.addr.158.i, align 1
  %inc33.i = add nuw nsw i32 %i.157.i, 1
  %exitcond59.not.i = icmp eq i32 %inc33.i, %25
  br i1 %exitcond59.not.i, label %for.body26.i.if.end10_crit_edge, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i

for.body26.i.if.end10_crit_edge:                  ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %for.body26.i.if.end10_crit_edge, %for.cond16.preheader.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.else.if.end10_crit_edge
  %count11 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 7
  %30 = ptrtoint ptr %count11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count11, align 8
  %pos12 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 8
  %32 = ptrtoint ptr %pos12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pos12, align 4
  %add = add i32 %33, %31
  store i32 %add, ptr %pos12, align 4
  %msg14 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 4
  %34 = ptrtoint ptr %msg14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg14, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len, align 4
  %conv = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp15.not = icmp slt i32 %add, %conv
  br i1 %cmp15.not, label %if.end10.if.end20_crit_edge, label %if.end10.if.end20.sink.split_crit_edge

if.end10.if.end20.sink.split_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.end10.if.end20.sink.split_crit_edge, %do.end
  %state6.sink = phi ptr [ %state, %do.end ], [ %state6, %if.end10.if.end20.sink.split_crit_edge ]
  %38 = ptrtoint ptr %state6.sink to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %state6.sink, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end10.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_i2c_prepare_xfer(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 4
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %len = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv2 = zext i16 %6 to i32
  %pos = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 8
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pos, align 4
  %sub = sub i32 %conv2, %8
  %9 = tail call i32 @llvm.smin.i32(i32 %sub, i32 8)
  %count = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 7
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %count, align 8
  %sub5 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp6117 = icmp sgt i32 %sub5, 0
  br i1 %cmp6117, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_tokens.i = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 13
  %arrayidx7.i = getelementptr %struct.meson_i2c, ptr %i2c, i32 0, i32 12, i32 1
  %tokens.i = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 12
  %11 = ptrtoint ptr %num_tokens.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %num_tokens.i.promoted = load i32, ptr %num_tokens.i, align 8
  br label %for.body

for.body:                                         ; preds = %meson_i2c_add_token.exit.for.body_crit_edge, %for.body.lr.ph
  %inc.i119 = phi i32 [ %num_tokens.i.promoted, %for.body.lr.ph ], [ %inc.i, %meson_i2c_add_token.exit.for.body_crit_edge ]
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %meson_i2c_add_token.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i119)
  %cmp.i = icmp slt i32 %inc.i119, 8
  %mul.i = shl i32 %inc.i119, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl i32 4, %mul.i
  %12 = ptrtoint ptr %tokens.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tokens.i, align 8
  %or.i = or i32 %13, %shl.i
  store i32 %or.i, ptr %tokens.i, align 8
  br label %meson_i2c_add_token.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i = and i32 %mul.i, 28
  %shl5.i = shl nuw nsw i32 4, %mul4.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %15, %shl5.i
  store i32 %or8.i, ptr %arrayidx7.i, align 4
  br label %meson_i2c_add_token.exit

meson_i2c_add_token.exit:                         ; preds = %if.else.i, %if.then.i
  %inc.i = add i32 %inc.i119, 1
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, %sub5
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %meson_i2c_add_token.exit.for.body_crit_edge

meson_i2c_add_token.exit.for.body_crit_edge:      ; preds = %meson_i2c_add_token.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %meson_i2c_add_token.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %num_tokens.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i, ptr %num_tokens.i, align 8
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %for.end.if.end20_crit_edge, label %if.then

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %for.end
  br i1 %tobool.not, label %if.then.if.then19_crit_edge, label %lor.lhs.false

if.then.if.then19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then
  %add = add i32 %9, %8
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  %conv16 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv16)
  %cmp17 = icmp slt i32 %add, %conv16
  br i1 %cmp17, label %lor.lhs.false.if.then19_crit_edge, label %if.else

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then.if.then19_crit_edge
  %num_tokens.i75 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 13
  %19 = ptrtoint ptr %num_tokens.i75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_tokens.i75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp.i76 = icmp slt i32 %20, 8
  %mul.i77 = shl i32 %20, 2
  br i1 %cmp.i76, label %if.then.i81, label %if.else.i86

if.then.i81:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i78 = shl i32 4, %mul.i77
  %tokens.i79 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 12
  %21 = ptrtoint ptr %tokens.i79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tokens.i79, align 8
  %or.i80 = or i32 %22, %shl.i78
  store i32 %or.i80, ptr %tokens.i79, align 8
  br label %meson_i2c_add_token.exit88

if.else.i86:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i82 = and i32 %mul.i77, 28
  %shl5.i83 = shl nuw nsw i32 4, %mul4.i82
  %arrayidx7.i84 = getelementptr %struct.meson_i2c, ptr %i2c, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %arrayidx7.i84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.i84, align 4
  %or8.i85 = or i32 %24, %shl5.i83
  store i32 %or8.i85, ptr %arrayidx7.i84, align 4
  br label %meson_i2c_add_token.exit88

meson_i2c_add_token.exit88:                       ; preds = %if.else.i86, %if.then.i81
  %inc.i87 = add i32 %20, 1
  %25 = ptrtoint ptr %num_tokens.i75 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i87, ptr %num_tokens.i75, align 8
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  %num_tokens.i89 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 13
  %26 = ptrtoint ptr %num_tokens.i89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tokens.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp.i90 = icmp slt i32 %27, 8
  %mul.i91 = shl i32 %27, 2
  br i1 %cmp.i90, label %if.then.i95, label %if.else.i100

if.then.i95:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i92 = shl i32 5, %mul.i91
  %tokens.i93 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 12
  %28 = ptrtoint ptr %tokens.i93 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tokens.i93, align 8
  %or.i94 = or i32 %29, %shl.i92
  store i32 %or.i94, ptr %tokens.i93, align 8
  br label %meson_i2c_add_token.exit102

if.else.i100:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i96 = and i32 %mul.i91, 28
  %shl5.i97 = shl nuw nsw i32 5, %mul4.i96
  %arrayidx7.i98 = getelementptr %struct.meson_i2c, ptr %i2c, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %arrayidx7.i98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.i98, align 4
  %or8.i99 = or i32 %31, %shl5.i97
  store i32 %or8.i99, ptr %arrayidx7.i98, align 4
  br label %meson_i2c_add_token.exit102

meson_i2c_add_token.exit102:                      ; preds = %if.else.i100, %if.then.i95
  %inc.i101 = add i32 %27, 1
  %32 = ptrtoint ptr %num_tokens.i89 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc.i101, ptr %num_tokens.i89, align 8
  br label %if.end26

if.end20:                                         ; preds = %meson_i2c_add_token.exit88, %for.end.if.end20_crit_edge
  br i1 %tobool.not, label %if.then22, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 %8
  tail call fastcc void @meson_i2c_put_data(ptr noundef %i2c, ptr noundef %add.ptr, i32 noundef %9)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end20.if.end26_crit_edge, %meson_i2c_add_token.exit102
  %last = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 6
  %35 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %last, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool27.not = icmp eq i8 %36, 0
  br i1 %tobool27.not, label %if.end26.do.body_crit_edge, label %land.lhs.true

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.end26
  %37 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pos, align 4
  %39 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count, align 8
  %add31 = add i32 %40, %38
  %41 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %msg, align 4
  %len33 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %len33 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len33, align 4
  %conv34 = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %conv34)
  %cmp35.not = icmp slt i32 %add31, %conv34
  br i1 %cmp35.not, label %land.lhs.true.do.body_crit_edge, label %if.then37

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then37:                                        ; preds = %land.lhs.true
  %num_tokens.i103 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 13
  %45 = ptrtoint ptr %num_tokens.i103 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_tokens.i103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %cmp.i104 = icmp slt i32 %46, 8
  %mul.i105 = shl i32 %46, 2
  br i1 %cmp.i104, label %if.then.i109, label %if.else.i114

if.then.i109:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i106 = shl i32 6, %mul.i105
  %tokens.i107 = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 12
  %47 = ptrtoint ptr %tokens.i107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tokens.i107, align 8
  %or.i108 = or i32 %48, %shl.i106
  store i32 %or.i108, ptr %tokens.i107, align 8
  br label %meson_i2c_add_token.exit116

if.else.i114:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i110 = and i32 %mul.i105, 28
  %shl5.i111 = shl nuw nsw i32 6, %mul4.i110
  %arrayidx7.i112 = getelementptr %struct.meson_i2c, ptr %i2c, i32 0, i32 12, i32 1
  %49 = ptrtoint ptr %arrayidx7.i112 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx7.i112, align 4
  %or8.i113 = or i32 %50, %shl5.i111
  store i32 %or8.i113, ptr %arrayidx7.i112, align 4
  br label %meson_i2c_add_token.exit116

meson_i2c_add_token.exit116:                      ; preds = %if.else.i114, %if.then.i109
  %inc.i115 = add i32 %46, 1
  %51 = ptrtoint ptr %num_tokens.i103 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc.i115, ptr %num_tokens.i103, align 8
  br label %do.body

do.body:                                          ; preds = %meson_i2c_add_token.exit116, %land.lhs.true.do.body_crit_edge, %if.end26.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %tokens = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 12
  %52 = ptrtoint ptr %tokens to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tokens, align 8
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %regs = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 2
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr39 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %54) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %arrayidx44 = getelementptr %struct.meson_i2c, ptr %i2c, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx44, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr46 = getelementptr i8, ptr %61, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %59) #8, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_i2c_put_data(ptr nocapture noundef readonly %i2c, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp153 = icmp sgt i32 %len, 0
  br i1 %cmp153, label %for.body.preheader, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

for.body.preheader:                               ; preds = %entry
  %0 = tail call i32 @llvm.smin.i32(i32 %len, i32 4)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %exitcond.not = icmp eq i32 %0, 1
  br i1 %exitcond.not, label %for.body.preheader.for.cond2.preheader.loopexit_crit_edge, label %for.body.1

for.body.preheader.for.cond2.preheader.loopexit_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.loopexit

for.cond2.preheader.loopexit:                     ; preds = %for.body.3, %for.body.2.for.cond2.preheader.loopexit_crit_edge, %for.body.1.for.cond2.preheader.loopexit_crit_edge, %for.body.preheader.for.cond2.preheader.loopexit_crit_edge
  %or.lcssa = phi i32 [ %conv, %for.body.preheader.for.cond2.preheader.loopexit_crit_edge ], [ %or.1, %for.body.1.for.cond2.preheader.loopexit_crit_edge ], [ %or.2, %for.body.2.for.cond2.preheader.loopexit_crit_edge ], [ %or.3, %for.body.3 ]
  %uglygep = getelementptr i8, ptr %buf, i32 %0
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.loopexit, %entry.for.cond2.preheader_crit_edge
  %wdata0.0.lcssa = phi i32 [ 0, %entry.for.cond2.preheader_crit_edge ], [ %or.lcssa, %for.cond2.preheader.loopexit ]
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.for.cond2.preheader_crit_edge ], [ %uglygep, %for.cond2.preheader.loopexit ]
  %3 = tail call i32 @llvm.smin.i32(i32 %len, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp1058 = icmp sgt i32 %3, 4
  br i1 %cmp1058, label %for.cond2.preheader.for.body12_crit_edge, label %for.cond2.preheader.do.body_crit_edge

for.cond2.preheader.do.body_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond2.preheader.for.body12_crit_edge:         ; preds = %for.cond2.preheader
  br label %for.body12

for.body.1:                                       ; preds = %for.body.preheader
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %conv.1 = zext i8 %5 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %or.1 = or i32 %shl.1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %exitcond.not.1 = icmp eq i32 %0, 2
  br i1 %exitcond.not.1, label %for.body.1.for.cond2.preheader.loopexit_crit_edge, label %for.body.2

for.body.1.for.cond2.preheader.loopexit_crit_edge: ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.loopexit

for.body.2:                                       ; preds = %for.body.1
  %incdec.ptr.1 = getelementptr i8, ptr %buf, i32 2
  %6 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.1, align 1
  %conv.2 = zext i8 %7 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 16
  %or.2 = or i32 %shl.2, %or.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %exitcond.not.2 = icmp eq i32 %0, 3
  br i1 %exitcond.not.2, label %for.body.2.for.cond2.preheader.loopexit_crit_edge, label %for.body.3

for.body.2.for.cond2.preheader.loopexit_crit_edge: ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.loopexit

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.2 = getelementptr i8, ptr %buf, i32 3
  %8 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.2, align 1
  %conv.3 = zext i8 %9 to i32
  %shl.3 = shl nuw i32 %conv.3, 24
  %or.3 = or i32 %shl.3, %or.2
  br label %for.cond2.preheader.loopexit

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond2.preheader.for.body12_crit_edge
  %buf.addr.161 = phi ptr [ %incdec.ptr13, %for.body12.for.body12_crit_edge ], [ %buf.addr.0.lcssa, %for.cond2.preheader.for.body12_crit_edge ]
  %wdata1.060 = phi i32 [ %or17, %for.body12.for.body12_crit_edge ], [ 0, %for.cond2.preheader.for.body12_crit_edge ]
  %i.159 = phi i32 [ %inc19, %for.body12.for.body12_crit_edge ], [ 4, %for.cond2.preheader.for.body12_crit_edge ]
  %incdec.ptr13 = getelementptr i8, ptr %buf.addr.161, i32 1
  %10 = ptrtoint ptr %buf.addr.161 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.addr.161, align 1
  %conv14 = zext i8 %11 to i32
  %sub = shl i32 %i.159, 3
  %mul15 = add nsw i32 %sub, -32
  %shl16 = shl i32 %conv14, %mul15
  %or17 = or i32 %shl16, %wdata1.060
  %inc19 = add nuw nsw i32 %i.159, 1
  %exitcond63.not = icmp eq i32 %inc19, %3
  br i1 %exitcond63.not, label %for.body12.do.body_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

for.body12.do.body_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.body12.do.body_crit_edge, %for.cond2.preheader.do.body_crit_edge
  %wdata1.0.lcssa = phi i32 [ 0, %for.cond2.preheader.do.body_crit_edge ], [ %or17, %for.body12.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %wdata0.0.lcssa)
  %regs = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 2
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %wdata1.0.lcssa)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %15) #8, !srcloc !84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_i2c_put_data.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_i2c_put_data, %do.end32)) #8
          to label %if.then [label %do.end32], !srcloc !86

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.meson_i2c, ptr %i2c, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_i2c_put_data.__UNIQUE_ID_ddebug308, ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %wdata0.0.lcssa, i32 noundef %wdata1.0.lcssa, i32 noundef %len) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @meson_i2c_xfer_messages(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_i2c_xfer_atomic(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @meson_i2c_xfer_messages(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_i2c_xfer_messages(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp12 = icmp sgt i32 %num, 0
  br i1 %cmp12, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %num, -1
  %msg1.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 4
  %last2.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 6
  %pos.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 8
  %count.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 7
  %error.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 9
  %tokens.i.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 12
  %arrayidx2.i.i = getelementptr %struct.meson_i2c, ptr %1, i32 0, i32 12, i32 1
  %num_tokens.i.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 13
  %regs.i.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 2
  %state.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 5
  %done.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.013
  call void @__sanitizer_cov_trace_cmp4(i32 %i.013, i32 %sub)
  %cmp1 = icmp eq i32 %i.013, %sub
  %2 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %msg1.i, align 4
  %frombool3.i = zext i1 %cmp1 to i8
  %3 = ptrtoint ptr %last2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool3.i, ptr %last2.i, align 4
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pos.i, align 4
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %count.i, align 8
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error.i, align 8
  %7 = ptrtoint ptr %tokens.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tokens.i.i, align 8
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx2.i.i, align 4
  %9 = ptrtoint ptr %num_tokens.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_tokens.i.i, align 8
  %flags4.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.013, i32 1
  %10 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags4.i, align 2
  %12 = lshr i16 %11, 11
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %16 = and i32 %15, -33554433
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = and i16 %12, 2
  %and2.i.i = zext i16 %18 to i32
  %or.i.i = or i32 %17, %and2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !84
  %22 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags4.i, align 2
  %24 = and i16 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool9.not.i = icmp eq i16 %24, 0
  br i1 %tobool9.not.i, label %do.end18.i.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end18.i.i:                                     ; preds = %for.body
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr, align 4
  %conv5.i.i = zext i16 %26 to i32
  %shl.i.i = shl nuw nsw i32 %conv5.i.i, 1
  %27 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i.i = icmp eq i16 %27, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 3
  %and23.i.i = and i32 %shl.i.i, 254
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %31 = and i32 %30, 16777215
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %or.i.i.i = or i32 %32, %and23.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %33) #8, !srcloc !84
  %36 = ptrtoint ptr %num_tokens.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tokens.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp.i.i.i = icmp slt i32 %37, 8
  %mul.i.i.i = shl i32 %37, 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i.i = shl nuw i32 1, %mul.i.i.i
  %38 = ptrtoint ptr %tokens.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tokens.i.i, align 8
  %or.i29.i.i = or i32 %39, %shl.i.i.i
  store i32 %or.i29.i.i, ptr %tokens.i.i, align 8
  br label %meson_i2c_add_token.exit.i.i

if.else.i.i.i:                                    ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i.i.i = and i32 %mul.i.i.i, 28
  %shl5.i.i.i = shl nuw nsw i32 1, %mul4.i.i.i
  %40 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2.i.i, align 4
  %or8.i.i.i = or i32 %41, %shl5.i.i.i
  store i32 %or8.i.i.i, ptr %arrayidx2.i.i, align 4
  br label %meson_i2c_add_token.exit.i.i

meson_i2c_add_token.exit.i.i:                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %inc.i.i.i = add i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.i.i)
  %cmp.i31.i.i = icmp slt i32 %inc.i.i.i, 8
  %mul.i32.i.i = shl i32 %inc.i.i.i, 2
  br i1 %cmp.i31.i.i, label %if.then.i36.i.i, label %if.else.i41.i.i

if.then.i36.i.i:                                  ; preds = %meson_i2c_add_token.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i33.i.i = shl i32 %cond.i.i, %mul.i32.i.i
  %42 = ptrtoint ptr %tokens.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tokens.i.i, align 8
  %or.i35.i.i = or i32 %43, %shl.i33.i.i
  store i32 %or.i35.i.i, ptr %tokens.i.i, align 8
  br label %meson_i2c_do_start.exit.i

if.else.i41.i.i:                                  ; preds = %meson_i2c_add_token.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i37.i.i = and i32 %mul.i32.i.i, 28
  %shl5.i38.i.i = shl nuw nsw i32 %cond.i.i, %mul4.i37.i.i
  %44 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx2.i.i, align 4
  %or8.i40.i.i = or i32 %45, %shl5.i38.i.i
  store i32 %or8.i40.i.i, ptr %arrayidx2.i.i, align 4
  br label %meson_i2c_do_start.exit.i

meson_i2c_do_start.exit.i:                        ; preds = %if.else.i41.i.i, %if.then.i36.i.i
  %inc.i42.i.i = add i32 %37, 2
  %46 = ptrtoint ptr %num_tokens.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc.i42.i.i, ptr %num_tokens.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %meson_i2c_do_start.exit.i, %for.body.if.end.i_crit_edge
  %47 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags4.i, align 2
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool13.not.i = icmp eq i16 %49, 0
  %cond14.i = select i1 %tobool13.not.i, i32 2, i32 1
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond14.i, ptr %state.i, align 8
  tail call fastcc void @meson_i2c_prepare_xfer(ptr noundef %1) #8
  br i1 %atomic, label %if.then19.critedge.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %done.i, align 4
  %52 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %55 = or i32 %54, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !84
  %call54.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  %spec.select121.i = select i1 %tobool55.not.i, i32 -110, i32 0
  br label %do.body59.i.thread

if.then19.critedge.i:                             ; preds = %if.end.i
  %58 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %61 = or i32 %60, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #8, !srcloc !84
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 500000000
  %64 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !81
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and23131.i = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23131.i)
  %tobool24.not132.i = icmp eq i32 %and23131.i, 0
  br i1 %tobool24.not132.i, label %if.then19.critedge.i.do.body59.i_crit_edge, label %if.then19.critedge.i.land.lhs.true.i_crit_edge

if.then19.critedge.i.land.lhs.true.i_crit_edge:   ; preds = %if.then19.critedge.i
  br label %land.lhs.true.i

if.then19.critedge.i.do.body59.i_crit_edge:       ; preds = %if.then19.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.then19.critedge.i.land.lhs.true.i_crit_edge
  %call28.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call28.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call28.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 2147480) #8
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !81
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and23.i = and i32 %72, 4
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %cond.false.i.do.body59.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

cond.false.i.do.body59.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #8, !srcloc !81
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %.pre.i = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool50.not.i = icmp eq i32 %.pre.i, 0
  br i1 %tobool50.not.i, label %for.end.i.do.body59.i_crit_edge, label %for.end.i.do.body59.i.thread_crit_edge

for.end.i.do.body59.i.thread_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59.i.thread

for.end.i.do.body59.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59.i

do.body59.i.thread:                               ; preds = %for.end.i.do.body59.i.thread_crit_edge, %if.then16.i
  %ret.0.i.ph = phi i32 [ -110, %for.end.i.do.body59.i.thread_crit_edge ], [ %spec.select121.i, %if.then16.i ]
  %call64.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.ph)
  %tobool70.not.i18 = icmp eq i32 %ret.0.i.ph, 0
  br label %if.end72.i

do.body59.i:                                      ; preds = %for.end.i.do.body59.i_crit_edge, %cond.false.i.do.body59.i_crit_edge, %if.then19.critedge.i.do.body59.i_crit_edge
  %ctrl.0137.i = phi i32 [ %76, %for.end.i.do.body59.i_crit_edge ], [ %67, %if.then19.critedge.i.do.body59.i_crit_edge ], [ %72, %cond.false.i.do.body59.i_crit_edge ]
  %call64.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  br i1 %atomic, label %if.then71.i, label %do.body59.i.if.end72.i_crit_edge

do.body59.i.if.end72.i_crit_edge:                 ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then71.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @meson_i2c_transfer_complete(ptr noundef %1, i32 noundef %ctrl.0137.i) #8
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then71.i, %do.body59.i.if.end72.i_crit_edge, %do.body59.i.thread
  %tobool70.not.i22 = phi i1 [ %tobool70.not.i18, %do.body59.i.thread ], [ true, %if.then71.i ], [ true, %do.body59.i.if.end72.i_crit_edge ]
  %call64.i21 = phi i32 [ %call64.i17, %do.body59.i.thread ], [ %call64.i, %if.then71.i ], [ %call64.i, %do.body59.i.if.end72.i_crit_edge ]
  %ret.0.i20 = phi i32 [ %ret.0.i.ph, %do.body59.i.thread ], [ 0, %if.then71.i ], [ 0, %do.body59.i.if.end72.i_crit_edge ]
  %77 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %80 = and i32 %79, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #8, !srcloc !84
  br i1 %tobool70.not.i22, label %if.end72.i.meson_i2c_xfer_msg.exit_crit_edge, label %if.then74.i

if.end72.i.meson_i2c_xfer_msg.exit_crit_edge:     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %meson_i2c_xfer_msg.exit

if.then74.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %state.i, align 8
  br label %meson_i2c_xfer_msg.exit

meson_i2c_xfer_msg.exit:                          ; preds = %if.then74.i, %if.end72.i.meson_i2c_xfer_msg.exit_crit_edge
  %84 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool78.not.i = icmp eq i32 %85, 0
  %spec.select.i = select i1 %tobool78.not.i, i32 %ret.0.i20, i32 %85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call64.i21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool2.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool2.not, label %for.inc, label %meson_i2c_xfer_msg.exit.for.end_crit_edge

meson_i2c_xfer_msg.exit.for.end_crit_edge:        ; preds = %meson_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %meson_i2c_xfer_msg.exit
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %meson_i2c_xfer_msg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %86 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %num, %for.inc.for.end_crit_edge ], [ %spec.select.i, %meson_i2c_xfer_msg.exit.for.end_crit_edge ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !59, !60, !61, !63, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_i2c_meson__318_523_meson_i2c_driver_init6, !1, !"__initcall__kmod_i2c_meson__318_523_meson_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 523, i32 1}
!2 = !{ptr @__exitcall_meson_i2c_driver_exit, !1, !"__exitcall_meson_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description319, !4, !"__UNIQUE_ID_description319", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 525, i32 1}
!5 = !{ptr @__UNIQUE_ID_author320, !6, !"__UNIQUE_ID_author320", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 526, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 527, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 518, i32 12}
!12 = !{ptr @meson_i2c_driver, !13, !"meson_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 514, i32 31}
!14 = !{ptr @meson_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 422, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 430, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @meson_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @meson_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 444, i32 3}
!27 = !{ptr @meson_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @meson_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 450, i32 3}
!31 = !{ptr @meson_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @meson_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 454, i32 26}
!35 = !{ptr @init_completion.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/completion.h", i32 87, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 263, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @meson_i2c_irq.__UNIQUE_ID_ddebug312, !39, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 237, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @meson_i2c_transfer_complete.__UNIQUE_ID_ddebug311, !44, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 173, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @meson_i2c_get_data.__UNIQUE_ID_ddebug299, !48, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 197, i32 2}
!53 = !{ptr @meson_i2c_put_data.__UNIQUE_ID_ddebug308, !52, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!54 = !{ptr @meson_i2c_algorithm, !55, !"meson_i2c_algorithm", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 400, i32 35}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 148, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @meson_i2c_set_clk_div._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @meson_i2c_set_clk_div._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 161, i32 2}
!63 = !{ptr @meson_i2c_set_clk_div.__UNIQUE_ID_ddebug298, !62, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!64 = !{ptr @meson_i2c_match, !65, !"meson_i2c_match", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 505, i32 34}
!66 = !{ptr @i2c_meson6_data, !67, !"i2c_meson6_data", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 493, i32 36}
!68 = !{ptr @i2c_gxbb_data, !69, !"i2c_gxbb_data", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 497, i32 36}
!70 = !{ptr @i2c_axg_data, !71, !"i2c_axg_data", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-meson.c", i32 501, i32 36}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 6893054}
!82 = !{i64 2155646635}
!83 = !{i64 2155646848}
!84 = !{i64 6892636}
!85 = !{i64 2155759446}
!86 = !{i64 2148763925, i64 2148763930, i64 2148763943, i64 2148763987, i64 2148764021, i64 2148764042}
!87 = !{i64 2155743172}
!88 = !{i64 2155743659}
!89 = !{i8 0, i8 2}
!90 = !{i64 2155755962}
!91 = !{i64 2155756398}
!92 = !{i64 2155751215}
!93 = !{i64 2155751619}
!94 = !{i64 2155809122}
!95 = !{i64 2155809604}
