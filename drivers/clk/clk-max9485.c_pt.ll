; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-max9485.c_pt.bc'
source_filename = "../drivers/clk/clk-max9485.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.max9485_clk = type { ptr, i32, %struct.clk_ops, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.max9485_rate = type { i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.max9485_driver_data = type { ptr, ptr, i8, ptr, ptr, [4 x %struct.max9485_clk_hw] }
%struct.max9485_clk_hw = type { %struct.clk_hw, %struct.clk_init_data, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_max9485__289_383_max9485_driver_init6 = internal global ptr @max9485_driver_init, section ".initcall6.init", align 4
@max9485_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max9485_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max9485_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max9485_pm_ops, ptr null, ptr null }, ptr @max9485_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max9485_driver_exit = internal global ptr @max9485_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [51 x i8] c"clk_max9485.author=Daniel Mack <daniel@zonque.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [67 x i8] c"clk_max9485.description=MAX9485 Programmable Audio Clock Generator\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"clk_max9485.file=drivers/clk/clk-max9485\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"clk_max9485.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max9485\00", [24 x i8] zeroinitializer }, align 32
@max9485_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max9485\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max9485_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max9485_suspend, ptr @max9485_resume, ptr @max9485_suspend, ptr @max9485_resume, ptr @max9485_suspend, ptr @max9485_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max9485_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max9485\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@max9485_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 294, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to read device register: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max9485_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/clk-max9485.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max9485_i2c_probe._entry_ptr = internal global ptr @max9485_i2c_probe._entry, section ".printk_index", align 4
@max9485_clks = internal constant { [4 x %struct.max9485_clk], [96 x i8] } { [4 x %struct.max9485_clk] [%struct.max9485_clk { ptr @.str.10, i32 -1, %struct.clk_ops { ptr @max9485_clk_prepare, ptr @max9485_clk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 -128 }, %struct.max9485_clk { ptr @.str.11, i32 -1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max9485_clkout_recalc_rate, ptr @max9485_clkout_round_rate, ptr null, ptr null, ptr null, ptr @max9485_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, %struct.max9485_clk { ptr @.str.12, i32 1, %struct.clk_ops { ptr @max9485_clk_prepare, ptr @max9485_clk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 32 }, %struct.max9485_clk { ptr @.str.13, i32 1, %struct.clk_ops { ptr @max9485_clk_prepare, ptr @max9485_clk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 64 }], [96 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mclkout\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkout\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkout1\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkout2\00", [24 x i8] zeroinitializer }, align 32
@max9485_update_bits.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_max9485\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max9485_update_bits\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"updating mask 0x%02x value 0x%02x -> 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@max9485_rates = internal constant { [22 x %struct.max9485_rate], [48 x i8] } { [22 x %struct.max9485_rate] [%struct.max9485_rate { i32 3072000, i8 0 }, %struct.max9485_rate { i32 4608000, i8 4 }, %struct.max9485_rate { i32 8192000, i8 1 }, %struct.max9485_rate { i32 9126000, i8 8 }, %struct.max9485_rate { i32 11289600, i8 2 }, %struct.max9485_rate { i32 12288000, i8 3 }, %struct.max9485_rate { i32 12288000, i8 5 }, %struct.max9485_rate { i32 16384000, i8 17 }, %struct.max9485_rate { i32 16934400, i8 6 }, %struct.max9485_rate { i32 18384000, i8 7 }, %struct.max9485_rate { i32 22579200, i8 18 }, %struct.max9485_rate { i32 24576000, i8 19 }, %struct.max9485_rate { i32 24576000, i8 21 }, %struct.max9485_rate { i32 24576000, i8 9 }, %struct.max9485_rate { i32 33868800, i8 22 }, %struct.max9485_rate { i32 33868800, i8 10 }, %struct.max9485_rate { i32 36864000, i8 23 }, %struct.max9485_rate { i32 36864000, i8 11 }, %struct.max9485_rate { i32 49152000, i8 25 }, %struct.max9485_rate { i32 67737600, i8 26 }, %struct.max9485_rate { i32 73728000, i8 27 }, %struct.max9485_rate zeroinitializer], [48 x i8] zeroinitializer }, align 32
@switch.table.max9485_clkout_recalc_rate = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 16384000, i32 22579200, i32 24576000, i32 0, i32 24576000, i32 33868800, i32 36864000, i32 0, i32 49152000, i32 67737600, i32 73728000, i32 0, i32 0, i32 0, i32 0, i32 3072000, i32 8192000, i32 11289600, i32 12288000, i32 4608000, i32 12288000, i32 16934400, i32 18384000, i32 9126000, i32 24576000, i32 33868800, i32 36864000], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"max9485_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 374, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 376, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"max9485_dt_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 362, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"max9485_pm_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 358, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"max9485_i2c_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 368, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 269, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 275, i32 44 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 284, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 294, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"max9485_clks\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 209, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 303, i32 9 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 211, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 220, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 229, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 238, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 99, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"max9485_rates\00", align 1
@___asan_gen_.87 = private constant [29 x i8] c"../drivers/clk/clk-max9485.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 43, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant [40 x i8] c"switch.table.max9485_clkout_recalc_rate\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max9485_driver_exit, ptr @__initcall__kmod_clk_max9485__289_383_max9485_driver_init6, ptr @max9485_driver_exit, ptr @max9485_i2c_probe._entry, ptr @max9485_i2c_probe._entry_ptr, ptr @max9485_driver, ptr @.str, ptr @max9485_dt_ids, ptr @max9485_pm_ops, ptr @max9485_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @max9485_clks, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @max9485_rates, ptr @switch.table.max9485_clkout_recalc_rate], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9485_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9485_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9485_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9485_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9485_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9485_clks to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9485_rates to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max9485_clkout_recalc_rate to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max9485_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max9485_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max9485_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max9485_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9485_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %xclk_name = alloca ptr, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xclk_name) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 212, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup102_crit_edge, label %if.end

entry.cleanup102_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup102

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @__clk_get_name(ptr noundef %call2) #8
  %2 = ptrtoint ptr %xclk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %xclk_name, align 4
  %call11 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %supply = getelementptr inbounds %struct.max9485_driver_data, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %supply, align 4
  %cmp.i173 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup102

if.end17:                                         ; preds = %if.end8
  %call19 = tail call i32 @regulator_enable(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end17.cleanup102_crit_edge, label %if.end21

if.end17.cleanup102_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

if.end21:                                         ; preds = %if.end17
  %call22 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 7) #8
  %reset_gpio = getelementptr inbounds %struct.max9485_driver_data, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call22, ptr %reset_gpio, align 4
  %cmp.i174 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call22 to i32
  br label %cleanup102

if.end28:                                         ; preds = %if.end21
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client29 = getelementptr inbounds %struct.max9485_driver_data, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %client29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client29, align 4
  %reg_value = getelementptr inbounds %struct.max9485_driver_data, ptr %call.i, i32 0, i32 2
  %call.i175 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %reg_value, i32 noundef 1, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %cmp32 = icmp slt i32 %call.i175, 0
  br i1 %cmp32, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end28
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  br label %for.body

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call.i175) #11
  br label %cleanup102

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0177 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %parent_index36 = getelementptr [4 x %struct.max9485_clk], ptr @max9485_clks, i32 0, i32 %i.0177, i32 1
  %9 = ptrtoint ptr %parent_index36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parent_index36, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !62
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i176 = call i32 @of_property_read_string_helper(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %i.0177) #8
  %arrayidx = getelementptr [4 x %struct.max9485_clk], ptr @max9485_clks, i32 0, i32 %i.0177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp38182 = icmp slt i32 %call.i176, 0
  %spec.select = select i1 %cmp38182, ptr %arrayidx, ptr %name
  %14 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %14)
  %.sink = load ptr, ptr %spec.select, align 4
  %15 = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %i.0177, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink, ptr %15, align 4
  %ops = getelementptr [4 x %struct.max9485_clk], ptr @max9485_clks, i32 0, i32 %i.0177, i32 2
  %arrayidx51 = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %i.0177
  %ops53 = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %i.0177, i32 1, i32 1
  %17 = ptrtoint ptr %ops53 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ops, ptr %ops53, align 4
  %num_parents = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %i.0177, i32 1, i32 5
  %18 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %i.0177, i32 1, i32 6
  %19 = and i32 %i.0177, 268435454
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %20 = icmp eq i32 %19, 2
  %init64 = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %10, i32 1
  %storemerge = select i1 %20, i32 4, i32 0
  %xclk_name.sink = select i1 %20, ptr %init64, ptr %xclk_name
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %flags, align 4
  %22 = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %i.0177, i32 1, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %xclk_name.sink, ptr %22, align 4
  %enable_bit = getelementptr [4 x %struct.max9485_clk], ptr @max9485_clks, i32 0, i32 %i.0177, i32 3
  %24 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable_bit, align 4
  %enable_bit82 = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %i.0177, i32 2
  %26 = ptrtoint ptr %enable_bit82 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %enable_bit82, align 4
  %init89 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx51, i32 0, i32 2
  %27 = ptrtoint ptr %init89 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %15, ptr %init89, align 4
  %drvdata92 = getelementptr %struct.max9485_driver_data, ptr %call.i, i32 0, i32 5, i32 %i.0177, i32 3
  %28 = ptrtoint ptr %drvdata92 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %drvdata92, align 4
  %call96 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %arrayidx51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  br i1 %cmp97, label %for.body.cleanup102_crit_edge, label %for.cond

for.body.cleanup102_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call101 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @max9485_of_clk_get, ptr noundef nonnull %call.i) #8
  br label %cleanup102

cleanup102:                                       ; preds = %for.end, %for.body.cleanup102_crit_edge, %do.end, %if.then25, %if.end17.cleanup102_crit_edge, %if.then14, %if.then5, %entry.cleanup102_crit_edge
  %retval.2 = phi i32 [ %1, %if.then5 ], [ %4, %if.then14 ], [ %6, %if.then25 ], [ %call.i175, %do.end ], [ %call101, %for.end ], [ -12, %entry.cleanup102_crit_edge ], [ %call19, %if.end17.cleanup102_crit_edge ], [ %call96, %for.body.cleanup102_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xclk_name) #8
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @max9485_of_clk_get(ptr nocapture noundef readonly %clkspec, ptr noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %arrayidx1 = getelementptr %struct.max9485_driver_data, ptr %data, i32 0, i32 5, i32 %1
  ret ptr %arrayidx1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9485_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.max9485_clk_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %enable_bit = getelementptr inbounds %struct.max9485_clk_hw, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_bit, align 4
  %reg_value.i = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_value.i, align 4
  %or25.i = or i8 %5, %3
  store i8 %or25.i, ptr %reg_value.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max9485_update_bits.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max9485_clk_prepare, %if.then.i)) #8
          to label %max9485_update_bits.exit [label %if.then.i], !srcloc !63

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i = zext i8 %3 to i32
  %client.i = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_value.i, align 4
  %conv12.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max9485_update_bits.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %conv3.i, i32 noundef %conv3.i, i32 noundef %conv12.i) #8
  br label %max9485_update_bits.exit

max9485_update_bits.exit:                         ; preds = %if.then.i, %entry
  %client13.i = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %client13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client13.i, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef %reg_value.i, i32 noundef 1, i16 noundef zeroext 0) #8
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max9485_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.max9485_clk_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %enable_bit = getelementptr inbounds %struct.max9485_clk_hw, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_bit, align 4
  %neg.i = xor i8 %3, -1
  %reg_value.i = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_value.i, align 4
  %and.i = and i8 %5, %neg.i
  store i8 %and.i, ptr %reg_value.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max9485_update_bits.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max9485_clk_unprepare, %if.then.i)) #8
          to label %max9485_update_bits.exit [label %if.then.i], !srcloc !63

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %client.i = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_value.i, align 4
  %conv12.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max9485_update_bits.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %conv.i, i32 noundef 0, i32 noundef %conv12.i) #8
  br label %max9485_update_bits.exit

max9485_update_bits.exit:                         ; preds = %if.then.i, %entry
  %client13.i = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %client13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client13.i, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef %reg_value.i, i32 noundef 1, i16 noundef zeroext 0) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @max9485_clkout_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata1 = getelementptr inbounds %struct.max9485_clk_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %drvdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata1, align 4
  %reg_value = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_value, align 4
  %trunc = trunc i8 %3 to i5
  %switch.tableidx = add i5 %trunc, 15
  %4 = sext i5 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %4)
  %5 = icmp ult i5 %switch.tableidx, -5
  br i1 %5, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = zext i5 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [27 x i32], ptr @switch.table.max9485_clkout_recalc_rate, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %.lcssa = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @max9485_clkout_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072001, i32 %rate)
  %0 = icmp ult i32 %rate, 3072001
  br i1 %0, label %entry.cleanup17_crit_edge, label %for.cond

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4608000, i32 %rate)
  %cmp2.1 = icmp eq i32 %rate, 4608000
  br i1 %cmp2.1, label %for.cond.cleanup17_crit_edge, label %if.end.1

for.cond.cleanup17_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.1:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 4608000, i32 %rate)
  %cmp4.1 = icmp ult i32 %rate, 4608000
  br i1 %cmp4.1, label %if.end.1.if.end8_crit_edge, label %for.cond.1

if.end.1.if.end8_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192000, i32 %rate)
  %cmp2.2 = icmp eq i32 %rate, 8192000
  br i1 %cmp2.2, label %for.cond.1.cleanup17_crit_edge, label %if.end.2

for.cond.1.cleanup17_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.2:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192000, i32 %rate)
  %cmp4.2 = icmp ult i32 %rate, 8192000
  br i1 %cmp4.2, label %if.end.2.if.end8_crit_edge, label %for.cond.2

if.end.2.if.end8_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9126000, i32 %rate)
  %cmp2.3 = icmp eq i32 %rate, 9126000
  br i1 %cmp2.3, label %for.cond.2.cleanup17_crit_edge, label %if.end.3

for.cond.2.cleanup17_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.3:                                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9126000, i32 %rate)
  %cmp4.3 = icmp ult i32 %rate, 9126000
  br i1 %cmp4.3, label %if.end.3.if.end8_crit_edge, label %for.cond.3

if.end.3.if.end8_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 11289600, i32 %rate)
  %cmp2.4 = icmp eq i32 %rate, 11289600
  br i1 %cmp2.4, label %for.cond.3.cleanup17_crit_edge, label %if.end.4

for.cond.3.cleanup17_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.4:                                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 11289600, i32 %rate)
  %cmp4.4 = icmp ult i32 %rate, 11289600
  br i1 %cmp4.4, label %if.end.4.if.end8_crit_edge, label %for.cond.4

if.end.4.if.end8_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %rate)
  %cmp2.5 = icmp eq i32 %rate, 12288000
  br i1 %cmp2.5, label %for.cond.4.cleanup17_crit_edge, label %if.end.5

for.cond.4.cleanup17_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.5:                                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %rate)
  %cmp4.5 = icmp ult i32 %rate, 12288000
  br i1 %cmp4.5, label %if.end.5.if.end8_crit_edge, label %for.cond.6

if.end.5.if.end8_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.6:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384000, i32 %rate)
  %cmp2.7 = icmp eq i32 %rate, 16384000
  br i1 %cmp2.7, label %for.cond.6.cleanup17_crit_edge, label %if.end.7

for.cond.6.cleanup17_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.7:                                         ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384000, i32 %rate)
  %cmp4.7 = icmp ult i32 %rate, 16384000
  br i1 %cmp4.7, label %if.end.7.if.end8_crit_edge, label %for.cond.7

if.end.7.if.end8_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.7:                                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16934400, i32 %rate)
  %cmp2.8 = icmp eq i32 %rate, 16934400
  br i1 %cmp2.8, label %for.cond.7.cleanup17_crit_edge, label %if.end.8

for.cond.7.cleanup17_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.8:                                         ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16934400, i32 %rate)
  %cmp4.8 = icmp ult i32 %rate, 16934400
  br i1 %cmp4.8, label %if.end.8.if.end8_crit_edge, label %for.cond.8

if.end.8.if.end8_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.8:                                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18384000, i32 %rate)
  %cmp2.9 = icmp eq i32 %rate, 18384000
  br i1 %cmp2.9, label %for.cond.8.cleanup17_crit_edge, label %if.end.9

for.cond.8.cleanup17_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.9:                                         ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18384000, i32 %rate)
  %cmp4.9 = icmp ult i32 %rate, 18384000
  br i1 %cmp4.9, label %if.end.9.if.end8_crit_edge, label %for.cond.9

if.end.9.if.end8_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.9:                                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 22579200, i32 %rate)
  %cmp2.10 = icmp eq i32 %rate, 22579200
  br i1 %cmp2.10, label %for.cond.9.cleanup17_crit_edge, label %if.end.10

for.cond.9.cleanup17_crit_edge:                   ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.10:                                        ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 22579200, i32 %rate)
  %cmp4.10 = icmp ult i32 %rate, 22579200
  br i1 %cmp4.10, label %if.end.10.if.end8_crit_edge, label %for.cond.10

if.end.10.if.end8_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.10:                                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576000, i32 %rate)
  %cmp2.11 = icmp eq i32 %rate, 24576000
  br i1 %cmp2.11, label %for.cond.10.cleanup17_crit_edge, label %if.end.11

for.cond.10.cleanup17_crit_edge:                  ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.11:                                        ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576000, i32 %rate)
  %cmp4.11 = icmp ult i32 %rate, 24576000
  br i1 %cmp4.11, label %if.end.11.if.end8_crit_edge, label %for.cond.13

if.end.11.if.end8_crit_edge:                      ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.13:                                      ; preds = %if.end.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 33868800, i32 %rate)
  %cmp2.14 = icmp eq i32 %rate, 33868800
  br i1 %cmp2.14, label %for.cond.13.cleanup17_crit_edge, label %if.end.14

for.cond.13.cleanup17_crit_edge:                  ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.14:                                        ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 33868800, i32 %rate)
  %cmp4.14 = icmp ult i32 %rate, 33868800
  br i1 %cmp4.14, label %if.end.14.if.end8_crit_edge, label %for.cond.15

if.end.14.if.end8_crit_edge:                      ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.15:                                      ; preds = %if.end.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %rate)
  %cmp2.16 = icmp eq i32 %rate, 36864000
  br i1 %cmp2.16, label %for.cond.15.cleanup17_crit_edge, label %if.end.16

for.cond.15.cleanup17_crit_edge:                  ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.16:                                        ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %rate)
  %cmp4.16 = icmp ult i32 %rate, 36864000
  br i1 %cmp4.16, label %if.end.16.if.end8_crit_edge, label %for.cond.17

if.end.16.if.end8_crit_edge:                      ; preds = %if.end.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.17:                                      ; preds = %if.end.16
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152000, i32 %rate)
  %cmp2.18 = icmp eq i32 %rate, 49152000
  br i1 %cmp2.18, label %for.cond.17.cleanup17_crit_edge, label %if.end.18

for.cond.17.cleanup17_crit_edge:                  ; preds = %for.cond.17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.18:                                        ; preds = %for.cond.17
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152000, i32 %rate)
  %cmp4.18 = icmp ult i32 %rate, 49152000
  br i1 %cmp4.18, label %if.end.18.if.end8_crit_edge, label %for.cond.18

if.end.18.if.end8_crit_edge:                      ; preds = %if.end.18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.18:                                      ; preds = %if.end.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 67737600, i32 %rate)
  %cmp2.19 = icmp eq i32 %rate, 67737600
  br i1 %cmp2.19, label %for.cond.18.cleanup17_crit_edge, label %if.end.19

for.cond.18.cleanup17_crit_edge:                  ; preds = %for.cond.18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end.19:                                        ; preds = %for.cond.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 67737600, i32 %rate)
  %cmp4.19 = icmp ult i32 %rate, 67737600
  br i1 %cmp4.19, label %if.end.19.if.end8_crit_edge, label %for.cond.19

if.end.19.if.end8_crit_edge:                      ; preds = %if.end.19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.19:                                      ; preds = %if.end.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 73728000, i32 %rate)
  %cmp4.20 = icmp ult i32 %rate, 73728000
  br i1 %cmp4.20, label %for.cond.19.if.end8_crit_edge, label %for.cond.19.cleanup17_crit_edge

for.cond.19.cleanup17_crit_edge:                  ; preds = %for.cond.19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

for.cond.19.if.end8_crit_edge:                    ; preds = %for.cond.19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %for.cond.19.if.end8_crit_edge, %if.end.19.if.end8_crit_edge, %if.end.18.if.end8_crit_edge, %if.end.16.if.end8_crit_edge, %if.end.14.if.end8_crit_edge, %if.end.11.if.end8_crit_edge, %if.end.10.if.end8_crit_edge, %if.end.9.if.end8_crit_edge, %if.end.8.if.end8_crit_edge, %if.end.7.if.end8_crit_edge, %if.end.5.if.end8_crit_edge, %if.end.4.if.end8_crit_edge, %if.end.3.if.end8_crit_edge, %if.end.2.if.end8_crit_edge, %if.end.1.if.end8_crit_edge
  %.lcssa44.ph = phi i32 [ 67737600, %if.end.19.if.end8_crit_edge ], [ 49152000, %if.end.18.if.end8_crit_edge ], [ 36864000, %if.end.16.if.end8_crit_edge ], [ 33868800, %if.end.14.if.end8_crit_edge ], [ 24576000, %if.end.11.if.end8_crit_edge ], [ 22579200, %if.end.10.if.end8_crit_edge ], [ 18384000, %if.end.9.if.end8_crit_edge ], [ 16934400, %if.end.8.if.end8_crit_edge ], [ 16384000, %if.end.7.if.end8_crit_edge ], [ 12288000, %if.end.5.if.end8_crit_edge ], [ 11289600, %if.end.4.if.end8_crit_edge ], [ 9126000, %if.end.3.if.end8_crit_edge ], [ 8192000, %if.end.2.if.end8_crit_edge ], [ 4608000, %if.end.1.if.end8_crit_edge ], [ 73728000, %for.cond.19.if.end8_crit_edge ]
  %prev.039.lcssa42.ph = phi ptr [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 18), %if.end.19.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 17), %if.end.18.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 15), %if.end.16.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 13), %if.end.14.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 10), %if.end.11.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 9), %if.end.10.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 8), %if.end.9.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 7), %if.end.8.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 6), %if.end.7.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 4), %if.end.5.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 3), %if.end.4.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 2), %if.end.3.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 1), %if.end.2.if.end8_crit_edge ], [ @max9485_rates, %if.end.1.if.end8_crit_edge ], [ getelementptr inbounds ([22 x %struct.max9485_rate], ptr @max9485_rates, i32 0, i32 19), %for.cond.19.if.end8_crit_edge ]
  %1 = ptrtoint ptr %prev.039.lcssa42.ph to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prev.039.lcssa42.ph, align 4
  %sub = sub i32 %.lcssa44.ph, %2
  %div33 = lshr i32 %sub, 1
  %add = add i32 %div33, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rate)
  %cmp12 = icmp ugt i32 %add, %rate
  %. = select i1 %cmp12, i32 %2, i32 %.lcssa44.ph
  br label %cleanup17

cleanup17:                                        ; preds = %if.end8, %for.cond.19.cleanup17_crit_edge, %for.cond.18.cleanup17_crit_edge, %for.cond.17.cleanup17_crit_edge, %for.cond.15.cleanup17_crit_edge, %for.cond.13.cleanup17_crit_edge, %for.cond.10.cleanup17_crit_edge, %for.cond.9.cleanup17_crit_edge, %for.cond.8.cleanup17_crit_edge, %for.cond.7.cleanup17_crit_edge, %for.cond.6.cleanup17_crit_edge, %for.cond.4.cleanup17_crit_edge, %for.cond.3.cleanup17_crit_edge, %for.cond.2.cleanup17_crit_edge, %for.cond.1.cleanup17_crit_edge, %for.cond.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.1 = phi i32 [ %., %if.end8 ], [ 73728000, %for.cond.19.cleanup17_crit_edge ], [ 67737600, %for.cond.18.cleanup17_crit_edge ], [ 49152000, %for.cond.17.cleanup17_crit_edge ], [ 36864000, %for.cond.15.cleanup17_crit_edge ], [ 33868800, %for.cond.13.cleanup17_crit_edge ], [ 24576000, %for.cond.10.cleanup17_crit_edge ], [ 22579200, %for.cond.9.cleanup17_crit_edge ], [ 18384000, %for.cond.8.cleanup17_crit_edge ], [ 16934400, %for.cond.7.cleanup17_crit_edge ], [ 16384000, %for.cond.6.cleanup17_crit_edge ], [ 12288000, %for.cond.4.cleanup17_crit_edge ], [ 11289600, %for.cond.3.cleanup17_crit_edge ], [ 9126000, %for.cond.2.cleanup17_crit_edge ], [ 8192000, %for.cond.1.cleanup17_crit_edge ], [ 4608000, %for.cond.cleanup17_crit_edge ], [ 3072000, %entry.cleanup17_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9485_clkout_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %entry1.0 = phi ptr [ @max9485_rates, %entry ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp3 = icmp eq i32 %1, %rate
  %or.cond = or i1 %cmp.not, %cmp3
  %incdec.ptr = getelementptr %struct.max9485_rate, ptr %entry1.0, i32 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp.not, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %drvdata = getelementptr inbounds %struct.max9485_clk_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %reg_value = getelementptr inbounds %struct.max9485_rate, ptr %entry1.0, i32 0, i32 1
  %4 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_value, align 4
  %reg_value.i = getelementptr inbounds %struct.max9485_driver_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_value.i, align 4
  %and.i = and i8 %7, -32
  %or25.i = or i8 %and.i, %5
  store i8 %or25.i, ptr %reg_value.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max9485_update_bits.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max9485_clkout_set_rate, %if.then.i)) #8
          to label %max9485_update_bits.exit [label %if.then.i], !srcloc !63

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i = zext i8 %5 to i32
  %client.i = getelementptr inbounds %struct.max9485_driver_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_value.i, align 4
  %conv12.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max9485_update_bits.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef 31, i32 noundef %conv3.i, i32 noundef %conv12.i) #8
  br label %max9485_update_bits.exit

max9485_update_bits.exit:                         ; preds = %if.then.i, %if.end7
  %client13.i = getelementptr inbounds %struct.max9485_driver_data, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %client13.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client13.i, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef %reg_value.i, i32 noundef 1, i16 noundef zeroext 0) #8
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  br label %cleanup

cleanup:                                          ; preds = %max9485_update_bits.exit, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %max9485_update_bits.exit ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9485_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9485_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #8
  %reg_value = getelementptr inbounds %struct.max9485_driver_data, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef %reg_value, i32 noundef 1, i16 noundef zeroext 0) #8
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_clk_max9485__289_383_max9485_driver_init6, !1, !"__initcall__kmod_clk_max9485__289_383_max9485_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-max9485.c", i32 383, i32 1}
!2 = !{ptr @__exitcall_max9485_driver_exit, !1, !"__exitcall_max9485_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-max9485.c", i32 385, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-max9485.c", i32 386, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-max9485.c", i32 387, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-max9485.c", i32 376, i32 12}
!12 = !{ptr @max9485_driver, !13, !"max9485_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-max9485.c", i32 374, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-max9485.c", i32 269, i32 36}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-max9485.c", i32 275, i32 44}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-max9485.c", i32 284, i32 32}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-max9485.c", i32 294, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @max9485_i2c_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @max9485_i2c_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-max9485.c", i32 303, i32 9}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-max9485.c", i32 211, i32 11}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-max9485.c", i32 220, i32 11}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-max9485.c", i32 229, i32 11}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-max9485.c", i32 238, i32 11}
!38 = !{ptr @max9485_clks, !39, !"max9485_clks", i1 false, i1 false}
!39 = !{!"../drivers/clk/clk-max9485.c", i32 209, i32 33}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-max9485.c", i32 99, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @max9485_update_bits.__UNIQUE_ID_ddebug288, !41, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!45 = !{ptr @max9485_rates, !46, !"max9485_rates", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-max9485.c", i32 43, i32 34}
!47 = !{ptr @max9485_dt_ids, !48, !"max9485_dt_ids", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-max9485.c", i32 362, i32 34}
!49 = !{ptr @max9485_pm_ops, !50, !"max9485_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-max9485.c", i32 358, i32 32}
!51 = !{ptr @max9485_i2c_ids, !52, !"max9485_i2c_ids", i1 false, i1 false}
!52 = !{!"../drivers/clk/clk-max9485.c", i32 368, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i64 2148961600, i64 2148961605, i64 2148961618, i64 2148961662, i64 2148961696, i64 2148961717}
