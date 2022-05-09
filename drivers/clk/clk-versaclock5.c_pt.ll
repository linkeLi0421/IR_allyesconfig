; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-versaclock5.c_pt.bc'
source_filename = "../drivers/clk/clk-versaclock5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vc5_chip_info = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.vc5_driver_data = type { ptr, ptr, ptr, ptr, ptr, i8, %struct.clk_hw, %struct.clk_hw, %struct.clk_hw, %struct.vc5_hw_data, [4 x %struct.vc5_hw_data], [5 x %struct.vc5_out_data] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.vc5_hw_data = type { %struct.clk_hw, ptr, i32, i32, i32 }
%struct.vc5_out_data = type { %struct.clk_hw, ptr, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_versaclock5__289_1251_vc5_driver_init6 = internal global ptr @vc5_driver_init, section ".initcall6.init", align 4
@vc5_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @vc5_remove, ptr @vc5_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_vc5_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc5_pm_ops, ptr null, ptr null }, ptr @vc5_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vc5_driver_exit = internal global ptr @vc5_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"clk_versaclock5.author=Marek Vasut <marek.vasut@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [52 x i8] c"clk_versaclock5.description=IDT VersaClock 5 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"clk_versaclock5.file=drivers/clk/clk-versaclock5\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [28 x i8] c"clk_versaclock5.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vc5\00", [28 x i8] zeroinitializer }, align 32
@clk_vc5_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,5p49v5923\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @idt_5p49v5923_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,5p49v5925\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @idt_5p49v5925_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,5p49v5933\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @idt_5p49v5933_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,5p49v5935\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @idt_5p49v5935_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,5p49v6901\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @idt_5p49v6901_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,5p49v6965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @idt_5p49v6965_info }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@vc5_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vc5_suspend, ptr @vc5_resume, ptr @vc5_suspend, ptr @vc5_resume, ptr @vc5_suspend, ptr @vc5_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vc5_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"5p49v5923\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"5p49v5925\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"5p49v5933\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"5p49v5935\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"5p49v6901\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"5p49v6965\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xin\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@vc5_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vc5_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @vc5_regmap_is_writeable, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 118, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"clk_versaclock5:933:(&vc5_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idt,shutdown\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not read idt,shutdown\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"idt,output-enable-active\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not read idt,output-enable-active\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"internal-xtal\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no input clock specified!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pOFn.mux\00", [22 x i8] zeroinitializer }, align 32
@vc5_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc5_mux_set_parent, ptr @vc5_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pOFn.dbl\00", [22 x i8] zeroinitializer }, align 32
@vc5_dbl_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc5_dbl_recalc_rate, ptr @vc5_dbl_round_rate, ptr null, ptr null, ptr null, ptr @vc5_dbl_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pOFn.pfd\00", [22 x i8] zeroinitializer }, align 32
@vc5_pfd_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc5_pfd_recalc_rate, ptr @vc5_pfd_round_rate, ptr null, ptr null, ptr null, ptr @vc5_pfd_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pOFn.pll\00", [22 x i8] zeroinitializer }, align 32
@vc5_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc5_pll_recalc_rate, ptr @vc5_pll_round_rate, ptr null, ptr null, ptr null, ptr @vc5_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%pOFn.fod%d\00", [20 x i8] zeroinitializer }, align 32
@vc5_fod_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc5_fod_recalc_rate, ptr @vc5_fod_round_rate, ptr null, ptr null, ptr null, ptr @vc5_fod_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%pOFn.out0_sel_i2cb\00", [44 x i8] zeroinitializer }, align 32
@vc5_clk_out_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @vc5_clk_out_prepare, ptr @vc5_clk_out_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc5_clk_out_set_parent, ptr @vc5_clk_out_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%pOFn.out%d\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to add clk provider\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"idt,xtal-load-femtofarads\00", [38 x i8] zeroinitializer }, align 32
@vc5_mux_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 244, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid clock input configuration (%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vc5_mux_get_parent\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/clk-versaclock5.c\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vc5_mux_get_parent._entry_ptr = internal global ptr @vc5_mux_get_parent._entry, section ".printk_index", align 4
@vc5_clk_out_prepare.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.23, ptr @.str.28, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_versaclock5\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vc5_clk_out_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Update output %d mask 0x%0X val 0x%0X\0A\00", [57 x i8] zeroinitializer }, align 32
@vc5_clk_out_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.23, i32 673, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid clock output configuration (%02x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vc5_clk_out_get_parent\00", [41 x i8] zeroinitializer }, align 32
@vc5_clk_out_get_parent._entry_ptr = internal global ptr @vc5_clk_out_get_parent._entry, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT%d\00", [26 x i8] zeroinitializer }, align 32
@vc5_get_output_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.23, i32 898, ptr @.str.34, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid clock output configuration OUT%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vc5_get_output_config\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vc5_get_output_config._entry_ptr = internal global ptr @vc5_get_output_config._entry, section ".printk_index", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idt,mode\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"idt,voltage-microvolt\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt,slew-percent\00", [47 x i8] zeroinitializer }, align 32
@idt_5p49v5923_info = internal constant { %struct.vc5_chip_info, [16 x i8] } { %struct.vc5_chip_info { i32 0, i32 2, i32 3, i32 0 }, [16 x i8] zeroinitializer }, align 32
@idt_5p49v5925_info = internal constant { %struct.vc5_chip_info, [16 x i8] } { %struct.vc5_chip_info { i32 1, i32 4, i32 5, i32 0 }, [16 x i8] zeroinitializer }, align 32
@idt_5p49v5933_info = internal constant { %struct.vc5_chip_info, [16 x i8] } { %struct.vc5_chip_info { i32 2, i32 2, i32 3, i32 1 }, [16 x i8] zeroinitializer }, align 32
@idt_5p49v5935_info = internal constant { %struct.vc5_chip_info, [16 x i8] } { %struct.vc5_chip_info { i32 3, i32 4, i32 5, i32 1 }, [16 x i8] zeroinitializer }, align 32
@idt_5p49v6901_info = internal constant { %struct.vc5_chip_info, [16 x i8] } { %struct.vc5_chip_info { i32 4, i32 4, i32 5, i32 2 }, [16 x i8] zeroinitializer }, align 32
@idt_5p49v6965_info = internal constant { %struct.vc5_chip_info, [16 x i8] } { %struct.vc5_chip_info { i32 5, i32 4, i32 5, i32 4 }, [16 x i8] zeroinitializer }, align 32
@vc5_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.23, i32 1171, ptr @.str.34, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to restore register map: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vc5_resume\00", [21 x i8] zeroinitializer }, align 32
@vc5_resume._entry_ptr = internal global ptr @vc5_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1800000, i64 2500000, i64 3300000]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 80, i64 85, i64 90, i64 100]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 128]
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"vc5_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1241, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1243, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"clk_vc5_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1228, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"vc5_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1239, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"vc5_id\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1217, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 925, i32 44 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 929, i32 46 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"vc5_regmap_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 216, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 933, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 936, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 938, i32 50 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 945, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 949, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 956, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 969, i32 14 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 985, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 994, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"vc5_mux_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 278, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1007, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"vc5_dbl_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 325, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1023, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"vc5_pfd_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 405, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1040, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"vc5_pll_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 475, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1058, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"vc5_fod_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 572, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1076, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"vc5_clk_out_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 698, i32 29 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1102, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1125, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1133, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 823, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 243, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 624, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 672, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 875, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 896, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 738, i32 39 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 763, i32 39 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 845, i32 39 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"idt_5p49v5923_info\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1175, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant [19 x i8] c"idt_5p49v5925_info\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1182, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"idt_5p49v5933_info\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1189, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"idt_5p49v5935_info\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1196, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"idt_5p49v6901_info\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1203, i32 35 }
@___asan_gen_.220 = private unnamed_addr constant [19 x i8] c"idt_5p49v6965_info\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1210, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private constant [33 x i8] c"../drivers/clk/clk-versaclock5.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1171, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_vc5_driver_exit, ptr @__initcall__kmod_clk_versaclock5__289_1251_vc5_driver_init6, ptr @vc5_clk_out_get_parent._entry, ptr @vc5_clk_out_get_parent._entry_ptr, ptr @vc5_driver_exit, ptr @vc5_get_output_config._entry, ptr @vc5_get_output_config._entry_ptr, ptr @vc5_mux_get_parent._entry, ptr @vc5_mux_get_parent._entry_ptr, ptr @vc5_resume._entry, ptr @vc5_resume._entry_ptr, ptr @vc5_driver, ptr @.str, ptr @clk_vc5_of_match, ptr @vc5_pm_ops, ptr @vc5_id, ptr @.str.1, ptr @.str.2, ptr @vc5_probe._key, ptr @vc5_regmap_config, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @vc5_mux_ops, ptr @.str.12, ptr @vc5_dbl_ops, ptr @.str.13, ptr @vc5_pfd_ops, ptr @.str.14, ptr @vc5_pll_ops, ptr @.str.15, ptr @vc5_fod_ops, ptr @.str.16, ptr @vc5_clk_out_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @idt_5p49v5923_info, ptr @idt_5p49v5925_info, ptr @idt_5p49v5933_info, ptr @idt_5p49v5935_info, ptr @idt_5p49v6901_info, ptr @idt_5p49v6965_info, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_vc5_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_dbl_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_pfd_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_fod_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_clk_out_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_mux_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_clk_out_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_get_output_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_5p49v5923_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_5p49v5925_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_5p49v5933_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_5p49v5935_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_5p49v6901_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_5p49v6965_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vc5_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vc5_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @vc5_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #10
  %chip_info = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_info, align 4
  %flags = getelementptr inbounds %struct.vc5_chip_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pin_xin = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pin_xin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin_xin, align 4
  tail call void @clk_unregister_fixed_rate(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_probe(ptr noundef %client) #2 align 64 {
entry:
  %oe = alloca i32, align 4
  %sd = alloca i32, align 4
  %init = alloca %struct.clk_init_data, align 4
  %parent_names = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oe) #10
  %0 = ptrtoint ptr %oe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oe, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sd) #10
  %1 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sd, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %2 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #10
  %3 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_names, align 4, !annotation !133
  %4 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !133
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 340, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %chip_info = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %chip_info, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %pin_xin = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %pin_xin to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %pin_xin, align 4
  %cmp = icmp eq ptr %call5, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %pin_clkin = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %pin_clkin to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %pin_clkin, align 4
  %cmp14 = icmp eq ptr %call11, inttoptr (i32 -517 to ptr)
  br i1 %cmp14, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @vc5_regmap_config, ptr noundef nonnull @vc5_probe._key, ptr noundef nonnull @.str.3) #10
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call17 to i32
  %call24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef nonnull %sd, i32 noundef 1, i32 noundef 0) #10
  %15 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #10
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.then35 [
    i32 0, label %if.then29
    i32 -22, label %if.end25.if.end39_crit_edge
  ]

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp ne i32 %18, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %if.end39

if.then35:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %15, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end39:                                         ; preds = %if.then29, %if.end25.if.end39_crit_edge
  %src_mask.0 = phi i32 [ 1, %if.then29 ], [ 0, %if.end25.if.end39_crit_edge ]
  %src_val.0 = phi i32 [ %spec.select, %if.then29 ], [ 0, %if.end25.if.end39_crit_edge ]
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i522 = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef nonnull %oe, i32 noundef 1, i32 noundef 0) #10
  %21 = call i32 @llvm.smin.i32(i32 %call.i.i522, i32 0) #10
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %21, label %if.then52 [
    i32 0, label %if.then44
    i32 -22, label %if.end39.if.end56_crit_edge
  ]

if.end39.if.end56_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %or45 = or i32 %src_mask.0, 2
  %23 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool46.not = icmp eq i32 %24, 0
  %or48 = or i32 %src_val.0, 2
  %spec.select521 = select i1 %tobool46.not, i32 %src_val.0, i32 %or48
  br label %if.end56

if.then52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end56:                                         ; preds = %if.then44, %if.end39.if.end56_crit_edge
  %src_mask.1 = phi i32 [ %or45, %if.then44 ], [ %src_mask.0, %if.end39.if.end56_crit_edge ]
  %src_val.1 = phi i32 [ %spec.select521, %if.then44 ], [ %src_val.0, %if.end39.if.end56_crit_edge ]
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i523 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 16, i32 noundef %src_mask.1, i32 noundef %src_val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %27 = call ptr @memset(ptr %init, i32 0, i32 28)
  %28 = ptrtoint ptr %pin_xin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pin_xin, align 4
  %cmp.i524 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i524, label %if.else66, label %if.end56.if.end90.sink.split_crit_edge

if.end56.if.end90.sink.split_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.sink.split

if.else66:                                        ; preds = %if.end56
  %30 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip_info, align 4
  %flags = getelementptr inbounds %struct.vc5_chip_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.else66.if.end90_crit_edge, label %if.then69

if.else66.if.end90_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then69:                                        ; preds = %if.else66
  %call71 = call ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 25000000) #10
  %34 = ptrtoint ptr %pin_xin to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call71, ptr %pin_xin, align 4
  %cmp.i525 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i525, label %if.then75, label %if.then69.if.end90.sink.split_crit_edge

if.then69.if.end90.sink.split_crit_edge:          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.sink.split

if.then75:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %call71 to i32
  br label %cleanup

if.end90.sink.split:                              ; preds = %if.then69.if.end90.sink.split_crit_edge, %if.end56.if.end90.sink.split_crit_edge
  %.sink = phi ptr [ %29, %if.end56.if.end90.sink.split_crit_edge ], [ %call71, %if.then69.if.end90.sink.split_crit_edge ]
  %clk_mux_ins = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %clk_mux_ins to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %clk_mux_ins, align 4
  %38 = or i8 %37, 1
  store i8 %38, ptr %clk_mux_ins, align 4
  %call65 = call ptr @__clk_get_name(ptr noundef %.sink) #10
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %39 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_parents, align 4
  %inc86 = add i8 %40, 1
  store i8 %inc86, ptr %num_parents, align 4
  %idxprom87 = zext i8 %40 to i32
  %arrayidx88 = getelementptr [2 x ptr], ptr %parent_names, i32 0, i32 %idxprom87
  %41 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call65, ptr %arrayidx88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.else66.if.end90_crit_edge
  %42 = ptrtoint ptr %pin_clkin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pin_clkin, align 4
  %cmp.i526 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i526, label %if.end90.if.end104_crit_edge, label %if.then93

if.end90.if.end104_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %clk_mux_ins94 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %clk_mux_ins94 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %clk_mux_ins94, align 4
  %46 = or i8 %45, 2
  store i8 %46, ptr %clk_mux_ins94, align 4
  %call99 = call ptr @__clk_get_name(ptr noundef %43) #10
  %num_parents100 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %47 = ptrtoint ptr %num_parents100 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_parents100, align 4
  %inc101 = add i8 %48, 1
  store i8 %inc101, ptr %num_parents100, align 4
  %idxprom102 = zext i8 %48 to i32
  %arrayidx103 = getelementptr [2 x ptr], ptr %parent_names, i32 0, i32 %idxprom102
  %49 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call99, ptr %arrayidx103, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then93, %if.end90.if.end104_crit_edge
  %num_parents105 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %50 = ptrtoint ptr %num_parents105 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_parents105, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool106.not = icmp eq i8 %51, 0
  br i1 %tobool106.not, label %if.then107, label %if.end110

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %call109 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -22, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end110:                                        ; preds = %if.end104
  %52 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip_info, align 4
  %flags112 = getelementptr inbounds %struct.vc5_chip_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %flags112 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags112, align 4
  %and113 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.then115, label %if.end110.if.end122_crit_edge

if.end110.if.end122_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then115:                                       ; preds = %if.end110
  %56 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node, align 8
  %call118 = call fastcc i32 @vc5_update_cap_load(ptr noundef %57, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then115.if.end122_crit_edge, label %if.then115.err_clk_register_crit_edge

if.then115.err_clk_register_crit_edge:            ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_register

if.then115.if.end122_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.end122:                                        ; preds = %if.then115.if.end122_crit_edge, %if.end110.if.end122_crit_edge
  %58 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node, align 8
  %call125 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.11, ptr noundef %59) #10
  %60 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call125, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @vc5_mux_ops, ptr %ops, align 4
  %flags126 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %62 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %flags126, align 4
  %parent_names127 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %63 = ptrtoint ptr %parent_names127 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %parent_names, ptr %parent_names127, align 4
  %clk_mux = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 6
  %init128 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 6, i32 2
  %64 = ptrtoint ptr %init128 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %init, ptr %init128, align 4
  %call131 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %clk_mux) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end122.err_clk_register_crit_edge

if.end122.err_clk_register_crit_edge:             ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_register

if.end134:                                        ; preds = %if.end122
  %65 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %66) #10
  %67 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chip_info, align 4
  %flags137 = getelementptr inbounds %struct.vc5_chip_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %flags137 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags137, align 4
  %and138 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end134.if.end161_crit_edge, label %if.then140

if.end134.if.end161_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then140:                                       ; preds = %if.end134
  %71 = call ptr @memset(ptr %init, i32 0, i32 28)
  %72 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %of_node, align 8
  %call143 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, ptr noundef %73) #10
  %74 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call143, ptr %init, align 4
  %75 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @vc5_dbl_ops, ptr %ops, align 4
  %76 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %flags126, align 4
  %77 = ptrtoint ptr %parent_names127 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %parent_names, ptr %parent_names127, align 4
  %call150 = call ptr @clk_hw_get_name(ptr noundef %clk_mux) #10
  %78 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call150, ptr %parent_names, align 4
  %79 = ptrtoint ptr %num_parents105 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %num_parents105, align 4
  %clk_mul = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 7
  %init153 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 7, i32 2
  %80 = ptrtoint ptr %init153 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %init, ptr %init153, align 4
  %call156 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %clk_mul) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.then140.err_clk_register_crit_edge

if.then140.err_clk_register_crit_edge:            ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_register

if.end159:                                        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %82) #10
  br label %if.end161

if.end161:                                        ; preds = %if.end159, %if.end134.if.end161_crit_edge
  %83 = call ptr @memset(ptr %init, i32 0, i32 28)
  %84 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node, align 8
  %call164 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef %85) #10
  %86 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call164, ptr %init, align 4
  %87 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @vc5_pfd_ops, ptr %ops, align 4
  %88 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 4, ptr %flags126, align 4
  %89 = ptrtoint ptr %parent_names127 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %parent_names, ptr %parent_names127, align 4
  %90 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chip_info, align 4
  %flags171 = getelementptr inbounds %struct.vc5_chip_info, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %flags171 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags171, align 4
  %and172 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  %clk_mul175 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 7
  %clk_mux.sink = select i1 %tobool173.not, ptr %clk_mux, ptr %clk_mul175
  %call180 = call ptr @clk_hw_get_name(ptr noundef %clk_mux.sink) #10
  %94 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call180, ptr %parent_names, align 4
  %95 = ptrtoint ptr %num_parents105 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %num_parents105, align 4
  %clk_pfd = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 8
  %init184 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 8, i32 2
  %96 = ptrtoint ptr %init184 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %init, ptr %init184, align 4
  %call187 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %clk_pfd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %if.end161.err_clk_register_crit_edge

if.end161.err_clk_register_crit_edge:             ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_register

if.end190:                                        ; preds = %if.end161
  %97 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %98) #10
  %99 = call ptr @memset(ptr %init, i32 0, i32 28)
  %100 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %of_node, align 8
  %call194 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.14, ptr noundef %101) #10
  %102 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call194, ptr %init, align 4
  %103 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @vc5_pll_ops, ptr %ops, align 4
  %104 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4, ptr %flags126, align 4
  %105 = ptrtoint ptr %parent_names127 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %parent_names, ptr %parent_names127, align 4
  %call201 = call ptr @clk_hw_get_name(ptr noundef %clk_pfd) #10
  %106 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call201, ptr %parent_names, align 4
  %107 = ptrtoint ptr %num_parents105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %num_parents105, align 4
  %clk_pll = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 9
  %num = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 9, i32 4
  %108 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %num, align 4
  %vc5205 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 9, i32 1
  %109 = ptrtoint ptr %vc5205 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i, ptr %vc5205, align 4
  %init207 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %110 = ptrtoint ptr %init207 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %init, ptr %init207, align 4
  %call211 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %clk_pll) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end214, label %if.end190.err_clk_register_crit_edge

if.end190.err_clk_register_crit_edge:             ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_register

if.end214:                                        ; preds = %if.end190
  %111 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %112) #10
  %113 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %chip_info, align 4
  %clk_fod_cnt535 = getelementptr inbounds %struct.vc5_chip_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %clk_fod_cnt535 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %clk_fod_cnt535, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp217536.not = icmp eq i32 %116, 0
  br i1 %cmp217536.not, label %if.end214.for.end_crit_edge, label %if.end214.for.body_crit_edge

if.end214.for.body_crit_edge:                     ; preds = %if.end214
  br label %for.body

if.end214.for.end_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end250.for.body_crit_edge, %if.end214.for.body_crit_edge
  %117 = phi ptr [ %135, %if.end250.for.body_crit_edge ], [ %114, %if.end214.for.body_crit_edge ]
  %n.0537 = phi i32 [ %inc252, %if.end250.for.body_crit_edge ], [ 0, %if.end214.for.body_crit_edge ]
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cond2.i = icmp eq i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0537)
  %cmp.i527 = icmp eq i32 %n.0537, 0
  %cond.i = select i1 %cmp.i527, i32 0, i32 3
  %retval.0.i = select i1 %cond2.i, i32 %cond.i, i32 %n.0537
  %120 = call ptr @memset(ptr %init, i32 0, i32 28)
  %121 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %of_node, align 8
  %call223 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %122, i32 noundef %retval.0.i) #10
  %123 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call223, ptr %init, align 4
  %124 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @vc5_fod_ops, ptr %ops, align 4
  %125 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 4, ptr %flags126, align 4
  %126 = ptrtoint ptr %parent_names127 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %parent_names, ptr %parent_names127, align 4
  %call231 = call ptr @clk_hw_get_name(ptr noundef %clk_pll) #10
  %127 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call231, ptr %parent_names, align 4
  %128 = ptrtoint ptr %num_parents105 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %num_parents105, align 4
  %arrayidx234 = getelementptr %struct.vc5_driver_data, ptr %call.i, i32 0, i32 10, i32 %n.0537
  %num235 = getelementptr %struct.vc5_driver_data, ptr %call.i, i32 0, i32 10, i32 %n.0537, i32 4
  %129 = ptrtoint ptr %num235 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %retval.0.i, ptr %num235, align 4
  %vc5238 = getelementptr %struct.vc5_driver_data, ptr %call.i, i32 0, i32 10, i32 %n.0537, i32 1
  %130 = ptrtoint ptr %vc5238 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i, ptr %vc5238, align 4
  %init242 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx234, i32 0, i32 2
  %131 = ptrtoint ptr %init242 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %init, ptr %init242, align 4
  %call247 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %arrayidx234) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end250, label %for.body.err_clk_register_crit_edge

for.body.err_clk_register_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_register

if.end250:                                        ; preds = %for.body
  %132 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %133) #10
  %inc252 = add nuw i32 %n.0537, 1
  %134 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chip_info, align 4
  %clk_fod_cnt = getelementptr inbounds %struct.vc5_chip_info, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %clk_fod_cnt to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %clk_fod_cnt, align 4
  %cmp217 = icmp ult i32 %inc252, %137
  br i1 %cmp217, label %if.end250.for.body_crit_edge, label %if.end250.for.end_crit_edge

if.end250.for.end_crit_edge:                      ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end250.for.body_crit_edge:                     ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end250.for.end_crit_edge, %if.end214.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %if.end214.for.end_crit_edge ], [ %retval.0.i, %if.end250.for.end_crit_edge ]
  %138 = call ptr @memset(ptr %init, i32 0, i32 28)
  %139 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %of_node, align 8
  %call255 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.16, ptr noundef %140) #10
  %141 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call255, ptr %init, align 4
  %142 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @vc5_clk_out_ops, ptr %ops, align 4
  %143 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 4, ptr %flags126, align 4
  %144 = ptrtoint ptr %parent_names127 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %parent_names, ptr %parent_names127, align 4
  %call262 = call ptr @clk_hw_get_name(ptr noundef %clk_mux) #10
  %145 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call262, ptr %parent_names, align 4
  %146 = ptrtoint ptr %num_parents105 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %num_parents105, align 4
  %clk_out = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 11
  %num266 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %147 = ptrtoint ptr %num266 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %idx.0.lcssa, ptr %num266, align 4
  %vc5269 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %148 = ptrtoint ptr %vc5269 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i, ptr %vc5269, align 4
  %init273 = getelementptr inbounds %struct.vc5_driver_data, ptr %call.i, i32 0, i32 11, i32 0, i32 0, i32 2
  %149 = ptrtoint ptr %init273 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %init, ptr %init273, align 4
  %call278 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %clk_out) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.end281, label %for.end.err_clk_register_crit_edge

for.end.err_clk_register_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_register

if.end281:                                        ; preds = %for.end
  %150 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %151) #10
  %152 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %chip_info, align 4
  %clk_out_cnt538 = getelementptr inbounds %struct.vc5_chip_info, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %clk_out_cnt538 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %clk_out_cnt538, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %cmp285539 = icmp ugt i32 %155, 1
  br i1 %cmp285539, label %if.end281.for.body287_crit_edge, label %if.end281.for.end346_crit_edge

if.end281.for.end346_crit_edge:                   ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end346

if.end281.for.body287_crit_edge:                  ; preds = %if.end281
  br label %for.body287

for.cond283:                                      ; preds = %if.end336
  %inc345 = add nuw i32 %n.1540, 1
  %156 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %chip_info, align 4
  %clk_out_cnt = getelementptr inbounds %struct.vc5_chip_info, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %clk_out_cnt to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %clk_out_cnt, align 4
  %cmp285 = icmp ult i32 %inc345, %159
  br i1 %cmp285, label %for.cond283.for.body287_crit_edge, label %for.cond283.for.end346_crit_edge

for.cond283.for.end346_crit_edge:                 ; preds = %for.cond283
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end346

for.cond283.for.body287_crit_edge:                ; preds = %for.cond283
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body287

for.body287:                                      ; preds = %for.cond283.for.body287_crit_edge, %if.end281.for.body287_crit_edge
  %160 = phi ptr [ %157, %for.cond283.for.body287_crit_edge ], [ %153, %if.end281.for.body287_crit_edge ]
  %n.1540 = phi i32 [ %inc345, %for.cond283.for.body287_crit_edge ], [ 1, %if.end281.for.body287_crit_edge ]
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %sub = add i32 %n.1540, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %162)
  %cond2.i528 = icmp eq i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i529 = icmp eq i32 %sub, 0
  %cond.i530 = select i1 %cmp.i529, i32 0, i32 3
  %retval.0.i531 = select i1 %cond2.i528, i32 %cond.i530, i32 %sub
  %arrayidx292 = getelementptr %struct.vc5_driver_data, ptr %call.i, i32 0, i32 10, i32 %retval.0.i531
  %call294 = call ptr @clk_hw_get_name(ptr noundef %arrayidx292) #10
  %163 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call294, ptr %parent_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.1540)
  %cmp296 = icmp eq i32 %n.1540, 1
  %arrayidx305 = getelementptr %struct.vc5_driver_data, ptr %call.i, i32 0, i32 11, i32 %sub
  %arrayidx305.sink = select i1 %cmp296, ptr %clk_mux, ptr %arrayidx305
  %call307 = call ptr @clk_hw_get_name(ptr noundef %arrayidx305.sink) #10
  %164 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call307, ptr %4, align 4
  %165 = call ptr @memset(ptr %init, i32 0, i32 28)
  %166 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %of_node, align 8
  %add = add i32 %retval.0.i531, 1
  %call312 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.17, ptr noundef %167, i32 noundef %add) #10
  %168 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call312, ptr %init, align 4
  %169 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @vc5_clk_out_ops, ptr %ops, align 4
  %170 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 4, ptr %flags126, align 4
  %171 = ptrtoint ptr %parent_names127 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %parent_names, ptr %parent_names127, align 4
  %172 = ptrtoint ptr %num_parents105 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 2, ptr %num_parents105, align 4
  %arrayidx320 = getelementptr %struct.vc5_driver_data, ptr %call.i, i32 0, i32 11, i32 %n.1540
  %num321 = getelementptr %struct.vc5_driver_data, ptr %call.i, i32 0, i32 11, i32 %n.1540, i32 2
  %173 = ptrtoint ptr %num321 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %retval.0.i531, ptr %num321, align 4
  %vc5324 = getelementptr %struct.vc5_driver_data, ptr %call.i, i32 0, i32 11, i32 %n.1540, i32 1
  %174 = ptrtoint ptr %vc5324 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call.i, ptr %vc5324, align 4
  %init328 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx320, i32 0, i32 2
  %175 = ptrtoint ptr %init328 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %init, ptr %init328, align 4
  %call333 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %arrayidx320) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %if.end336, label %for.body287.err_clk_register_crit_edge

for.body287.err_clk_register_crit_edge:           ; preds = %for.body287
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_register

if.end336:                                        ; preds = %for.body287
  %176 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %177) #10
  %call340 = call fastcc i32 @vc5_get_output_config(ptr noundef %client, ptr noundef %arrayidx320)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %for.cond283, label %if.end336.err_clk_crit_edge

if.end336.err_clk_crit_edge:                      ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk

for.end346:                                       ; preds = %for.cond283.for.end346_crit_edge, %if.end281.for.end346_crit_edge
  %178 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %of_node, align 8
  %call349 = call i32 @of_clk_add_hw_provider(ptr noundef %179, ptr noundef nonnull @vc5_of_clk_get, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349)
  %tobool350.not = icmp eq i32 %call349, 0
  br i1 %tobool350.not, label %for.end346.cleanup_crit_edge, label %if.then351

for.end346.cleanup_crit_edge:                     ; preds = %for.end346
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then351:                                       ; preds = %for.end346
  call void @__sanitizer_cov_trace_pc() #12
  %call353 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call349, ptr noundef nonnull @.str.18) #10
  br label %err_clk

err_clk_register:                                 ; preds = %for.body287.err_clk_register_crit_edge, %for.end.err_clk_register_crit_edge, %for.body.err_clk_register_crit_edge, %if.end190.err_clk_register_crit_edge, %if.end161.err_clk_register_crit_edge, %if.then140.err_clk_register_crit_edge, %if.end122.err_clk_register_crit_edge, %if.then115.err_clk_register_crit_edge
  %ret.0 = phi i32 [ %call131, %if.end122.err_clk_register_crit_edge ], [ %call156, %if.then140.err_clk_register_crit_edge ], [ %call187, %if.end161.err_clk_register_crit_edge ], [ %call211, %if.end190.err_clk_register_crit_edge ], [ %call278, %for.end.err_clk_register_crit_edge ], [ %call118, %if.then115.err_clk_register_crit_edge ], [ %call333, %for.body287.err_clk_register_crit_edge ], [ %call247, %for.body.err_clk_register_crit_edge ]
  %180 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %init, align 4
  %call357 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %ret.0, ptr noundef nonnull @.str.19, ptr noundef %181) #10
  %182 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %183) #10
  br label %err_clk

err_clk:                                          ; preds = %err_clk_register, %if.then351, %if.end336.err_clk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_clk_register ], [ %call349, %if.then351 ], [ %call340, %if.end336.err_clk_crit_edge ]
  %184 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %chip_info, align 4
  %flags360 = getelementptr inbounds %struct.vc5_chip_info, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %flags360 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flags360, align 4
  %and361 = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361)
  %tobool362.not = icmp eq i32 %and361, 0
  br i1 %tobool362.not, label %err_clk.cleanup_crit_edge, label %if.then363

err_clk.cleanup_crit_edge:                        ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then363:                                       ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %pin_xin to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pin_xin, align 4
  call void @clk_unregister_fixed_rate(ptr noundef %189) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then363, %err_clk.cleanup_crit_edge, %for.end346.cleanup_crit_edge, %if.then107, %if.then75, %if.then52, %if.then35, %if.then20, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then20 ], [ %call37, %if.then35 ], [ %call54, %if.then52 ], [ %35, %if.then75 ], [ %call109, %if.then107 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ], [ -517, %if.end9.cleanup_crit_edge ], [ 0, %for.end346.cleanup_crit_edge ], [ %ret.1, %if.then363 ], [ %ret.1, %err_clk.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oe) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc5_update_cap_load(ptr noundef %node, ptr nocapture noundef readonly %vc5) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !133
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.20, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %3 = add i32 %2, -22761
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13761, i32 %3)
  %4 = icmp ult i32 %3, -13761
  br i1 %4, label %if.then.cleanup_crit_edge, label %vc5_map_cap_value.exit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

vc5_map_cap_value.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %2, -8785
  call void @__sanitizer_cov_trace_const_cmp4(i32 13759, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 13759
  %div2.lhs.trunc.i = trunc i32 %add.i to i16
  %div211.i = udiv i16 %div2.lhs.trunc.i, 430
  %5 = shl nuw nsw i16 %div211.i, 3
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %vc5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %shl.i.op = zext i16 %5 to i32
  %shl = select i1 %cmp3.i, i32 252, i32 %shl.i.op
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 18, i32 noundef -4, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i13 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 19, i32 noundef -4, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %vc5_map_cap_value.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vc5_map_cap_value.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc5_get_output_config(ptr noundef %client, ptr nocapture noundef %clk_out) unnamed_addr #2 align 64 {
entry:
  %value.i43 = alloca i32, align 4
  %value.i36 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.vc5_out_data, ptr %clk_out, i32 0, i32 2
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  %add = add i32 %1, 1
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call1 = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull %call) #10
  tail call void @kfree(ptr noundef nonnull %call) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #10
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value.i, align 4, !annotation !133
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1, ptr noundef nonnull @.str.35, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i:                                        ; preds = %if.end4
  %clk_output_cfg0_mask.i = getelementptr inbounds %struct.vc5_out_data, ptr %clk_out, i32 0, i32 4
  %5 = ptrtoint ptr %clk_output_cfg0_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_output_cfg0_mask.i, align 4
  %or.i = or i32 %6, 224
  store i32 %or.i, ptr %clk_output_cfg0_mask.i, align 4
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %switch.i = icmp ult i32 %8, 7
  br i1 %switch.i, label %sw.bb.i, label %vc5_update_mode.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw nsw i32 %8, 5
  %clk_output_cfg0.i = getelementptr inbounds %struct.vc5_out_data, ptr %clk_out, i32 0, i32 3
  %9 = ptrtoint ptr %clk_output_cfg0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_output_cfg0.i, align 4
  %or1.i = or i32 %10, %shl.i
  store i32 %or1.i, ptr %clk_output_cfg0.i, align 4
  br label %if.end8

vc5_update_mode.exit:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  br label %do.end

if.end8:                                          ; preds = %sw.bb.i, %if.end4.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i36) #10
  %11 = ptrtoint ptr %value.i36 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %value.i36, align 4, !annotation !133
  %call.i.i.i37 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1, ptr noundef nonnull @.str.36, ptr noundef nonnull %value.i36, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i37)
  %tobool.not.i38 = icmp sgt i32 %call.i.i.i37, -1
  br i1 %tobool.not.i38, label %if.then.i41, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then.i41:                                      ; preds = %if.end8
  %clk_output_cfg0_mask.i39 = getelementptr inbounds %struct.vc5_out_data, ptr %clk_out, i32 0, i32 4
  %12 = ptrtoint ptr %clk_output_cfg0_mask.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_output_cfg0_mask.i39, align 4
  %or.i40 = or i32 %13, 24
  store i32 %or.i40, ptr %clk_output_cfg0_mask.i39, align 4
  %14 = ptrtoint ptr %value.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i36, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %15, label %vc5_update_power.exit [
    i32 1800000, label %if.then.i41.if.end12_crit_edge
    i32 2500000, label %if.then.i41.if.end.sink.split.i_crit_edge
    i32 3300000, label %sw.bb5.i
  ]

if.then.i41.if.end.sink.split.i_crit_edge:        ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.then.i41.if.end12_crit_edge:                   ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

sw.bb5.i:                                         ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.bb5.i, %if.then.i41.if.end.sink.split.i_crit_edge
  %.sink11.i = phi i32 [ 24, %sw.bb5.i ], [ 16, %if.then.i41.if.end.sink.split.i_crit_edge ]
  %clk_output_cfg06.i = getelementptr inbounds %struct.vc5_out_data, ptr %clk_out, i32 0, i32 3
  %17 = ptrtoint ptr %clk_output_cfg06.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_output_cfg06.i, align 4
  %or4.i = or i32 %18, %.sink11.i
  store i32 %or4.i, ptr %clk_output_cfg06.i, align 4
  br label %if.end12

vc5_update_power.exit:                            ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i36) #10
  br label %do.end

if.end12:                                         ; preds = %if.end.sink.split.i, %if.then.i41.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i36) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i43) #10
  %19 = ptrtoint ptr %value.i43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %value.i43, align 4, !annotation !133
  %call.i.i.i44 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1, ptr noundef nonnull @.str.37, ptr noundef nonnull %value.i43, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i44)
  %tobool.not.i45 = icmp sgt i32 %call.i.i.i44, -1
  br i1 %tobool.not.i45, label %if.then.i48, label %if.end12.output_error.thread62_crit_edge

if.end12.output_error.thread62_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %output_error.thread62

if.then.i48:                                      ; preds = %if.end12
  %clk_output_cfg0_mask.i46 = getelementptr inbounds %struct.vc5_out_data, ptr %clk_out, i32 0, i32 4
  %20 = ptrtoint ptr %clk_output_cfg0_mask.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_output_cfg0_mask.i46, align 4
  %or.i47 = or i32 %21, 3
  store i32 %or.i47, ptr %clk_output_cfg0_mask.i46, align 4
  %22 = ptrtoint ptr %value.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value.i43, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %23, label %output_error [
    i32 80, label %if.then.i48.output_error.thread62_crit_edge
    i32 85, label %if.then.i48.if.end.sink.split.i51_crit_edge
    i32 90, label %sw.bb5.i49
    i32 100, label %sw.bb8.i
  ]

if.then.i48.if.end.sink.split.i51_crit_edge:      ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i51

if.then.i48.output_error.thread62_crit_edge:      ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %output_error.thread62

sw.bb5.i49:                                       ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i51

sw.bb8.i:                                         ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i51

if.end.sink.split.i51:                            ; preds = %sw.bb8.i, %sw.bb5.i49, %if.then.i48.if.end.sink.split.i51_crit_edge
  %.sink15.i = phi i32 [ 2, %sw.bb5.i49 ], [ 3, %sw.bb8.i ], [ 1, %if.then.i48.if.end.sink.split.i51_crit_edge ]
  %clk_output_cfg09.i = getelementptr inbounds %struct.vc5_out_data, ptr %clk_out, i32 0, i32 3
  %25 = ptrtoint ptr %clk_output_cfg09.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_output_cfg09.i, align 4
  %or4.i50 = or i32 %26, %.sink15.i
  store i32 %or4.i50, ptr %clk_output_cfg09.i, align 4
  br label %output_error.thread62

output_error.thread62:                            ; preds = %if.end.sink.split.i51, %if.then.i48.output_error.thread62_crit_edge, %if.end12.output_error.thread62_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i43) #10
  br label %if.end19

output_error:                                     ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i43) #10
  br label %do.end

do.end:                                           ; preds = %output_error, %vc5_update_power.exit, %vc5_update_mode.exit
  %27 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num, align 4
  %add18 = add i32 %28, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %add18) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end, %output_error.thread62
  %ret.061 = phi i32 [ -22, %do.end ], [ 0, %output_error.thread62 ]
  call void @of_node_put(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.061, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @vc5_of_clk_get(ptr nocapture noundef readonly %clkspec, ptr noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %chip_info = getelementptr inbounds %struct.vc5_driver_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %clk_out_cnt = getelementptr inbounds %struct.vc5_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk_out_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_out_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp ult i32 %1, %5
  %arrayidx1 = getelementptr %struct.vc5_driver_data, ptr %data, i32 0, i32 11, i32 %1
  %retval.0 = select i1 %cmp.not, ptr %arrayidx1, ptr inttoptr (i32 -22 to ptr)
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vc5_regmap_is_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %reg)
  %cmp = icmp ult i32 %reg, 16
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %reg, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 10
  br i1 %0, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %switch.cast = trunc i32 %switch.tableidx to i10
  %switch.downshift = lshr i10 254, %switch.cast
  %1 = and i10 %switch.downshift, 1
  %2 = sext i10 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i10 %1, 0
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %switch.masked, %switch.lookup ], [ true, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp = icmp ugt i8 %index, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %clk_mux_ins = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %clk_mux_ins to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clk_mux_ins, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %1, label %if.else [
    i8 0, label %lor.lhs.false.cleanup_crit_edge
    i8 3, label %if.then6
  ]

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp8 = icmp eq i8 %index, 0
  %spec.select = select i1 %cmp8, i32 128, i32 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp13 = icmp eq i8 %index, 1
  %spec.select47 = select i1 %cmp13, i32 64, i32 %spec.select
  br label %if.end36

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp18.not = icmp eq i8 %index, 0
  br i1 %cmp18.not, label %if.end21, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.else
  %3 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %1, label %if.end21.cleanup_crit_edge [
    i8 1, label %if.end21.if.end36_crit_edge
    i8 2, label %if.then32
  ]

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end21.if.end36_crit_edge, %if.then6
  %src.1 = phi i32 [ 64, %if.then32 ], [ 128, %if.end21.if.end36_crit_edge ], [ %spec.select47, %if.then6 ]
  %regmap = getelementptr i8, ptr %hw, i32 -20
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef 192, i32 noundef %src.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end21.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end36 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vc5_mux_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #10
  %0 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %src, align 4, !annotation !133
  %regmap = getelementptr i8, ptr %hw, i32 -20
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %src) #10
  %3 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src, align 4
  %and = and i32 %4, 192
  store i32 %and, ptr %src, align 4
  %trunc = trunc i32 %and to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %trunc, label %do.end [
    i8 -128, label %entry.cleanup_crit_edge
    i8 64, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %and) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.then2 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #10
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_dbl_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %premul = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %premul) #10
  %0 = ptrtoint ptr %premul to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %premul, align 4, !annotation !133
  %regmap = getelementptr i8, ptr %hw, i32 -32
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %premul) #10
  %3 = ptrtoint ptr %premul to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %premul, align 4
  %and = lshr i32 %4, 3
  %and.lobit = and i32 %and, 1
  %spec.select = shl i32 %parent_rate, %and.lobit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %premul) #10
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vc5_dbl_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp = icmp eq i32 %1, %rate
  %mul = shl i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp1 = icmp eq i32 %mul, %rate
  %or.cond = or i1 %cmp, %cmp1
  %retval.0 = select i1 %or.cond, i32 %rate, i32 -22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_dbl_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %parent_rate, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp = icmp eq i32 %mul, %rate
  %. = select i1 %cmp, i32 8, i32 0
  %regmap = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 16, i32 noundef 8, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_pfd_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %prediv = alloca i32, align 4
  %div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prediv) #10
  %0 = ptrtoint ptr %prediv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prediv, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #10
  %1 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %div, align 4, !annotation !133
  %regmap = getelementptr i8, ptr %hw, i32 -44
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 22, ptr noundef nonnull %prediv) #10
  %4 = ptrtoint ptr %prediv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prediv, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 21, ptr noundef nonnull %div) #10
  %8 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div, align 4
  %and3 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %div614 = lshr i32 %parent_rate, 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and7 = and i32 %9, 63
  %div8 = udiv i32 %parent_rate, %and7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div614, %if.then5 ], [ %div8, %if.else ], [ %parent_rate, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prediv) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vc5_pfd_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 50000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000001, i32 %1)
  %cmp1 = icmp ult i32 %1, 50000001
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add = add nsw i32 %rate, -1
  %sub = add i32 %add, %1
  %div = udiv i32 %sub, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %div)
  %cmp4 = icmp ugt i32 %div, 127
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %div7 = udiv i32 %1, %div
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %1, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_pfd_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000001, i32 %parent_rate)
  %cmp = icmp ult i32 %parent_rate, 50000001
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap = getelementptr i8, ptr %hw, i32 -44
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 22, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 21, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %rate, -1
  %sub = add i32 %add, %parent_rate
  %div3 = udiv i32 %sub, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div3)
  %cmp4 = icmp eq i32 %div3, 2
  %conv = and i32 %div3, 63
  %div.0 = select i1 %cmp4, i32 128, i32 %conv
  %regmap7 = getelementptr i8, ptr %hw, i32 -44
  %4 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap7, align 4
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 21, i32 noundef 255, i32 noundef %div.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %6 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap7, align 4
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 22, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %fb = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vc51 = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vc51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc51, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %fb) #10
  %2 = getelementptr inbounds [5 x i8], ptr %fb, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %fb, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %fb, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %fb, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %6 = call ptr @memset(ptr %fb, i32 255, i32 5)
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 23, ptr noundef nonnull %fb, i32 noundef 5) #10
  %9 = ptrtoint ptr %fb to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fb, align 1
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %13 = lshr i8 %12, 4
  %14 = zext i8 %13 to i32
  %or = or i32 %shl, %14
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %conv5 = zext i8 %16 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %4, align 1
  %conv8 = zext i8 %18 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or10 = or i32 %shl9, %shl6
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %5, align 1
  %conv12 = zext i8 %20 to i32
  %or13 = or i32 %or10, %conv12
  %mul = mul i32 %or, %parent_rate
  %mul14 = mul i32 %or13, %parent_rate
  %shr15 = lshr i32 %mul14, 24
  %add = add i32 %shr15, %mul
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %fb) #10
  ret i32 %add
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_pll_round_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %rate, i32 -1794967296)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 -1294967296)
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %div)
  %cmp4 = icmp ugt i32 %div, 4095
  %mul = mul i32 %3, 4095
  %spec.select = select i1 %cmp4, i32 %mul, i32 %1
  %rem = urem i32 %spec.select, %3
  %conv = zext i32 %rem to i64
  %mul7 = mul nuw nsw i64 %conv, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul7)
  %cmp180 = icmp ult i64 %mul7, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !134

if.then184:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv185 = trunc i64 %mul7 to i32
  %div188 = udiv i32 %conv185, %3
  %conv189 = zext i32 %div188 to i64
  br label %if.end194

if.else190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %mul7) #14, !srcloc !135
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %div_frc.0 = phi i64 [ %conv189, %if.then184 ], [ %asmresult1.i, %if.else190 ]
  %div_int196 = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %div_int196 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %div_int196, align 4
  %conv197 = trunc i64 %div_frc.0 to i32
  %div_frc198 = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %div_frc198 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv197, ptr %div_frc198, align 4
  %7 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %parent_rate, align 4
  %mul199 = mul i32 %8, %div
  %conv201 = zext i32 %8 to i64
  %mul202 = mul i64 %div_frc.0, %conv201
  %shr203 = lshr i64 %mul202, 24
  %9 = trunc i64 %shr203 to i32
  %conv205 = add i32 %mul199, %9
  ret i32 %conv205
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %fb = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vc51 = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vc51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc51, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %fb) #10
  %2 = getelementptr inbounds [5 x i8], ptr %fb, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %fb, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %fb, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %fb, i32 0, i32 4
  %div_int = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %div_int to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %div_int, align 4
  %shr = lshr i32 %7, 4
  %conv = trunc i32 %shr to i8
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %fb, align 1
  %.tr = trunc i32 %7 to i8
  %conv3 = shl i8 %.tr, 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %2, align 1
  %div_frc = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %div_frc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div_frc, align 4
  %shr5 = lshr i32 %11, 16
  %conv6 = trunc i32 %shr5 to i8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %3, align 1
  %shr9 = lshr i32 %11, 8
  %conv10 = trunc i32 %shr9 to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %4, align 1
  %conv13 = trunc i32 %11 to i8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv13, ptr %5, align 1
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef 23, ptr noundef nonnull %fb, i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %fb) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_fod_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %od_int = alloca [2 x i8], align 1
  %od_frc = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vc51 = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vc51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc51, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %od_int) #10
  %2 = ptrtoint ptr %od_int to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %od_int, align 1, !annotation !133
  %3 = getelementptr inbounds [2 x i8], ptr %od_int, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od_frc) #10
  %5 = getelementptr inbounds [4 x i8], ptr %od_frc, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %od_frc, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %od_frc, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %od_frc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %od_frc, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %num = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 4
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  %mul = shl i32 %12, 4
  %add = add i32 %mul, 45
  %call = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef %add, ptr noundef nonnull %od_int, i32 noundef 2) #10
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 4
  %mul5 = shl i32 %16, 4
  %add6 = add i32 %mul5, 34
  %call9 = call i32 @regmap_bulk_read(ptr noundef %14, i32 noundef %add6, ptr noundef nonnull %od_frc, i32 noundef 4) #10
  %17 = ptrtoint ptr %od_int to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %od_int, align 1
  %conv = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %21 = lshr i8 %20, 4
  %22 = zext i8 %21 to i32
  %or = or i32 %shl, %22
  %23 = ptrtoint ptr %od_frc to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %od_frc, align 4
  %conv13 = zext i8 %24 to i32
  %shl14 = shl nuw nsw i32 %conv13, 22
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 1
  %conv16 = zext i8 %26 to i32
  %shl17 = shl nuw nsw i32 %conv16, 14
  %or18 = or i32 %shl17, %shl14
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 2
  %conv20 = zext i8 %28 to i32
  %shl21 = shl nuw nsw i32 %conv20, 6
  %or22 = or i32 %or18, %shl21
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %7, align 1
  %31 = lshr i8 %30, 2
  %32 = zext i8 %31 to i32
  %or26 = or i32 %or22, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp = icmp eq i32 %or, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26)
  %cmp28 = icmp eq i32 %or26, 0
  %or.cond = select i1 %cmp, i1 %cmp28, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div49 = lshr i32 %parent_rate, 1
  %conv30 = zext i32 %div49 to i64
  %shl31 = shl nuw nsw i64 %conv30, 24
  %conv32 = zext i32 %or to i64
  %shl33 = shl nuw nsw i64 %conv32, 24
  %conv34 = zext i32 %or26 to i64
  %add35 = add nuw nsw i64 %shl33, %conv34
  %call36 = call i64 @div64_u64(i64 noundef %shl31, i64 noundef %add35) #10
  %conv37 = trunc i64 %call36 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv37, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od_frc) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %od_int) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_fod_round_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %div289 = lshr i32 %1, 1
  %div1 = udiv i32 %div289, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %div1)
  %cmp = icmp ugt i32 %div1, 4094
  %div2 = udiv i32 %1, 8188
  %spec.select291 = select i1 %cmp, i32 %div2, i32 %rate
  %rem = urem i32 %div289, %spec.select291
  %conv = zext i32 %rem to i64
  %shl = shl nuw nsw i64 %conv, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %rem)
  %cmp175 = icmp ult i32 %rem, 256
  br i1 %cmp175, label %if.then179, label %if.else185, !prof !134

if.then179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv180 = trunc i64 %shl to i32
  %div183 = udiv i32 %conv180, %spec.select291
  %conv184 = zext i32 %div183 to i64
  br label %if.end189

if.else185:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select291, i64 %shl) #14, !srcloc !135
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  br label %if.end189

if.end189:                                        ; preds = %if.else185, %if.then179
  %div_frc.0 = phi i64 [ %conv184, %if.then179 ], [ %asmresult1.i, %if.else185 ]
  %3 = tail call i32 @llvm.umin.i32(i32 %div1, i32 4094)
  %div_int191 = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %div_int191 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %div_int191, align 4
  %conv192 = trunc i64 %div_frc.0 to i32
  %div_frc193 = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %div_frc193 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv192, ptr %div_frc193, align 4
  %conv194 = zext i32 %div289 to i64
  %shl195 = shl nuw nsw i64 %conv194, 24
  %conv196 = zext i32 %3 to i64
  %shl197 = shl nuw nsw i64 %conv196, 24
  %add198 = add i64 %div_frc.0, %shl197
  %call199 = tail call i64 @div64_u64(i64 noundef %shl195, i64 noundef %add198) #10
  %conv200 = trunc i64 %call199 to i32
  ret i32 %conv200
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_fod_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %data = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vc51 = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vc51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc51, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data) #10
  %2 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 11
  %7 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 12
  %8 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 13
  %div_frc = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 3
  %9 = ptrtoint ptr %div_frc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %div_frc, align 4
  %shr = lshr i32 %10, 22
  %conv = trunc i32 %shr to i8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %data, align 1
  %shr3 = lshr i32 %10, 14
  %conv4 = trunc i32 %shr3 to i8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4, ptr %2, align 1
  %shr7 = lshr i32 %10, 6
  %conv8 = trunc i32 %shr7 to i8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %3, align 1
  %.tr = trunc i32 %10 to i8
  %conv11 = shl i8 %.tr, 2
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11, ptr %4, align 1
  %div_int = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 2
  %15 = call ptr @memset(ptr %5, i32 0, i32 7)
  %16 = ptrtoint ptr %div_int to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div_int, align 4
  %shr20 = lshr i32 %17, 4
  %conv21 = trunc i32 %shr20 to i8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21, ptr %6, align 1
  %.tr41 = trunc i32 %17 to i8
  %conv25 = shl i8 %.tr41, 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv25, ptr %7, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %8, align 1
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %num = getelementptr inbounds %struct.vc5_hw_data, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num, align 4
  %mul = shl i32 %24, 4
  %add = add i32 %mul, 34
  %call = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef %add, ptr noundef nonnull %data, i32 noundef 14) #10
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 118, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i42 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 118, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_clk_out_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vc51 = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vc51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc51, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #10
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %src, align 4, !annotation !133
  %chip_info = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_info, align 4
  %flags = getelementptr inbounds %struct.vc5_chip_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %num = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 2
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num, align 4
  %mul = shl i32 %10, 4
  %add = add i32 %mul, 32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %regmap5 = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap5, align 4
  %num6 = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 2
  %13 = ptrtoint ptr %num6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num6, align 4
  %mul7 = shl i32 %14, 4
  %add8 = add i32 %mul7, 33
  %call9 = call i32 @regmap_read(ptr noundef %12, i32 noundef %add8, ptr noundef nonnull %src) #10
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src, align 4
  %and10 = and i32 %16, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp = icmp eq i32 %and10, 0
  br i1 %cmp, label %if.then11, label %if.end4.if.end20_crit_edge

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then11:                                        ; preds = %if.end4
  %17 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 129, ptr %src, align 4
  %18 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap5, align 4
  %20 = ptrtoint ptr %num6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num6, align 4
  %mul14 = shl i32 %21, 4
  %add15 = add i32 %mul14, 33
  %call.i71 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %add15, i32 noundef 141, i32 noundef 129, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool17.not = icmp eq i32 %call.i71, 0
  br i1 %tobool17.not, label %if.then11.if.end20_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then11.if.end20_crit_edge, %if.end4.if.end20_crit_edge
  %22 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap5, align 4
  %24 = ptrtoint ptr %num6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num6, align 4
  %mul23 = shl i32 %25, 1
  %add25 = add i32 %mul23, 97
  %call.i72 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %add25, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %clk_output_cfg0_mask = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 4
  %26 = ptrtoint ptr %clk_output_cfg0_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clk_output_cfg0_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %if.end20.cleanup_crit_edge, label %do.body

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vc5_clk_out_prepare.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vc5_clk_out_prepare, %if.then34)) #10
          to label %do.end [label %if.then34], !srcloc !136

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %num6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num6, align 4
  %32 = ptrtoint ptr %clk_output_cfg0_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clk_output_cfg0_mask, align 4
  %clk_output_cfg0 = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 3
  %34 = ptrtoint ptr %clk_output_cfg0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clk_output_cfg0, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vc5_clk_out_prepare.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %31, i32 noundef %33, i32 noundef %35) #10
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %36 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap5, align 4
  %38 = ptrtoint ptr %num6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num6, align 4
  %mul40 = shl i32 %39, 1
  %add41 = add i32 %mul40, 96
  %40 = ptrtoint ptr %clk_output_cfg0_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %clk_output_cfg0_mask, align 4
  %clk_output_cfg044 = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 3
  %42 = ptrtoint ptr %clk_output_cfg044 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %clk_output_cfg044, align 4
  %call.i73 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %add41, i32 noundef %41, i32 noundef %43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end20.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i71, %if.then11.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc5_clk_out_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vc51 = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vc51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc51, align 4
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %num = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %mul = shl i32 %5, 1
  %add2 = add i32 %mul, 97
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add2, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_clk_out_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vc51 = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vc51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp = icmp eq i8 %index, 0
  %. = select i1 %cmp, i32 129, i32 140
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %num = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %mul, 33
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 141, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vc5_clk_out_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vc51 = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %vc51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc51, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #10
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %src, align 4, !annotation !133
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %num = getelementptr inbounds %struct.vc5_out_data, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 4
  %mul = shl i32 %6, 4
  %add = add i32 %mul, 33
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %src) #10
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src, align 4
  %and = and i32 %8, 13
  store i32 %and, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %and2 = and i32 %8, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 1
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and)
  %cmp6 = icmp eq i32 %and, 12
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %and) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #10
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.vc5_driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call2) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_clk_versaclock5__289_1251_vc5_driver_init6, !1, !"__initcall__kmod_clk_versaclock5__289_1251_vc5_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-versaclock5.c", i32 1251, i32 1}
!2 = !{ptr @__exitcall_vc5_driver_exit, !1, !"__exitcall_vc5_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-versaclock5.c", i32 1253, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-versaclock5.c", i32 1254, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-versaclock5.c", i32 1255, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-versaclock5.c", i32 1243, i32 11}
!12 = !{ptr @vc5_driver, !13, !"vc5_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-versaclock5.c", i32 1241, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-versaclock5.c", i32 925, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-versaclock5.c", i32 929, i32 46}
!18 = !{ptr @vc5_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-versaclock5.c", i32 933, i32 16}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/clk-versaclock5.c", i32 936, i32 10}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/clk-versaclock5.c", i32 938, i32 50}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/clk-versaclock5.c", i32 945, i32 10}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/clk-versaclock5.c", i32 949, i32 8}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/clk-versaclock5.c", i32 956, i32 10}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/clk-versaclock5.c", i32 969, i32 14}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-versaclock5.c", i32 985, i32 10}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-versaclock5.c", i32 994, i32 36}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/clk-versaclock5.c", i32 1007, i32 37}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-versaclock5.c", i32 1023, i32 36}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/clk-versaclock5.c", i32 1040, i32 36}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/clk-versaclock5.c", i32 1058, i32 37}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-versaclock5.c", i32 1076, i32 36}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-versaclock5.c", i32 1102, i32 37}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-versaclock5.c", i32 1125, i32 10}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/clk-versaclock5.c", i32 1133, i32 9}
!53 = !{ptr @vc5_regmap_config, !54, !"vc5_regmap_config", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-versaclock5.c", i32 216, i32 35}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-versaclock5.c", i32 823, i32 34}
!57 = !{ptr @vc5_mux_ops, !58, !"vc5_mux_ops", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-versaclock5.c", i32 278, i32 29}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/clk-versaclock5.c", i32 243, i32 2}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @vc5_mux_get_parent._entry, !60, !"_entry", i1 false, i1 false}
!66 = !{ptr @vc5_mux_get_parent._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @vc5_dbl_ops, !68, !"vc5_dbl_ops", i1 false, i1 false}
!68 = !{!"../drivers/clk/clk-versaclock5.c", i32 325, i32 29}
!69 = !{ptr @vc5_pfd_ops, !70, !"vc5_pfd_ops", i1 false, i1 false}
!70 = !{!"../drivers/clk/clk-versaclock5.c", i32 405, i32 29}
!71 = !{ptr @vc5_pll_ops, !72, !"vc5_pll_ops", i1 false, i1 false}
!72 = !{!"../drivers/clk/clk-versaclock5.c", i32 475, i32 29}
!73 = !{ptr @vc5_fod_ops, !74, !"vc5_fod_ops", i1 false, i1 false}
!74 = !{!"../drivers/clk/clk-versaclock5.c", i32 572, i32 29}
!75 = !{ptr @vc5_clk_out_ops, !76, !"vc5_clk_out_ops", i1 false, i1 false}
!76 = !{!"../drivers/clk/clk-versaclock5.c", i32 698, i32 29}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/clk-versaclock5.c", i32 624, i32 3}
!79 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @vc5_clk_out_prepare.__UNIQUE_ID_ddebug288, !78, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-versaclock5.c", i32 672, i32 2}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vc5_clk_out_get_parent._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @vc5_clk_out_get_parent._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/clk-versaclock5.c", i32 875, i32 37}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/clk-versaclock5.c", i32 896, i32 3}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @vc5_get_output_config._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @vc5_get_output_config._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/clk-versaclock5.c", i32 738, i32 39}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/clk-versaclock5.c", i32 763, i32 39}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/clk-versaclock5.c", i32 845, i32 39}
!101 = !{ptr @clk_vc5_of_match, !102, !"clk_vc5_of_match", i1 false, i1 false}
!102 = !{!"../drivers/clk/clk-versaclock5.c", i32 1228, i32 34}
!103 = !{ptr @idt_5p49v5923_info, !104, !"idt_5p49v5923_info", i1 false, i1 false}
!104 = !{!"../drivers/clk/clk-versaclock5.c", i32 1175, i32 35}
!105 = !{ptr @idt_5p49v5925_info, !106, !"idt_5p49v5925_info", i1 false, i1 false}
!106 = !{!"../drivers/clk/clk-versaclock5.c", i32 1182, i32 35}
!107 = !{ptr @idt_5p49v5933_info, !108, !"idt_5p49v5933_info", i1 false, i1 false}
!108 = !{!"../drivers/clk/clk-versaclock5.c", i32 1189, i32 35}
!109 = !{ptr @idt_5p49v5935_info, !110, !"idt_5p49v5935_info", i1 false, i1 false}
!110 = !{!"../drivers/clk/clk-versaclock5.c", i32 1196, i32 35}
!111 = !{ptr @idt_5p49v6901_info, !112, !"idt_5p49v6901_info", i1 false, i1 false}
!112 = !{!"../drivers/clk/clk-versaclock5.c", i32 1203, i32 35}
!113 = !{ptr @idt_5p49v6965_info, !114, !"idt_5p49v6965_info", i1 false, i1 false}
!114 = !{!"../drivers/clk/clk-versaclock5.c", i32 1210, i32 35}
!115 = !{ptr @vc5_pm_ops, !116, !"vc5_pm_ops", i1 false, i1 false}
!116 = !{!"../drivers/clk/clk-versaclock5.c", i32 1239, i32 8}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/clk-versaclock5.c", i32 1171, i32 3}
!119 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @vc5_resume._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @vc5_resume._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @vc5_id, !123, !"vc5_id", i1 false, i1 false}
!123 = !{!"../drivers/clk/clk-versaclock5.c", i32 1217, i32 35}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2148664388, i64 2148664668, i64 2148665002, i64 2148665336}
!136 = !{i64 2148755669, i64 2148755674, i64 2148755687, i64 2148755731, i64 2148755765, i64 2148755786}
