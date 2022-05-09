; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/wm9713.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wm9713.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm9713_codec\22, \22a\22\09"
module asm "\09.weak\09__crc_wm9713_codec\09\09\09\09"
module asm "\09.long\09__crc_wm9713_codec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm9713_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22wm9713_codec\22\09\09\09\09\09"
module asm "__kstrtabns_wm9713_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.wm97xx_codec_drv = type { i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wm97xx = type { [3 x i16], i16, [6 x i16], i16, [3 x i16], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.delayed_work, i32, i32, i32, ptr, %struct.work_struct, i16, i16, i8, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wm97xx_mach_ops = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.wm97xx_data = type { i32, i32, i32 }

@__param_str_rpu = internal constant [14 x i8] c"wm97xx_ts.rpu\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rpu = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_rpu = internal constant %struct.kernel_param { ptr @__param_str_rpu, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @rpu } }, section "__param", align 4
@__UNIQUE_ID_rputype233 = internal constant [27 x i8] c"wm97xx_ts.parmtype=rpu:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rpu234 = internal constant [65 x i8] c"wm97xx_ts.parm=rpu:Set internal pull up resistor for pen detect.\00", section ".modinfo", align 1
@__param_str_pil = internal constant [14 x i8] c"wm97xx_ts.pil\00", align 1
@pil = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pil = internal constant %struct.kernel_param { ptr @__param_str_pil, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @pil } }, section "__param", align 4
@__UNIQUE_ID_piltype235 = internal constant [27 x i8] c"wm97xx_ts.parmtype=pil:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pil236 = internal constant [62 x i8] c"wm97xx_ts.parm=pil:Set current used for pressure measurement.\00", section ".modinfo", align 1
@__param_str_pressure = internal constant [19 x i8] c"wm97xx_ts.pressure\00", align 1
@pressure = internal global { i32, [28 x i8] } { i32 192, [28 x i8] zeroinitializer }, align 32
@__param_pressure = internal constant %struct.kernel_param { ptr @__param_str_pressure, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @pressure } }, section "__param", align 4
@__UNIQUE_ID_pressuretype237 = internal constant [32 x i8] c"wm97xx_ts.parmtype=pressure:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pressure238 = internal constant [64 x i8] c"wm97xx_ts.parm=pressure:Set threshold for pressure measurement.\00", section ".modinfo", align 1
@__param_str_delay = internal constant [16 x i8] c"wm97xx_ts.delay\00", align 1
@delay = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_delay = internal constant %struct.kernel_param { ptr @__param_str_delay, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @delay } }, section "__param", align 4
@__UNIQUE_ID_delaytype239 = internal constant [29 x i8] c"wm97xx_ts.parmtype=delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_delay240 = internal constant [43 x i8] c"wm97xx_ts.parm=delay:Set adc sample delay.\00", section ".modinfo", align 1
@__param_str_five_wire = internal constant [20 x i8] c"wm97xx_ts.five_wire\00", align 1
@five_wire = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_five_wire = internal constant %struct.kernel_param { ptr @__param_str_five_wire, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @five_wire } }, section "__param", align 4
@__UNIQUE_ID_five_wiretype241 = internal constant [33 x i8] c"wm97xx_ts.parmtype=five_wire:int\00", section ".modinfo", align 1
@__UNIQUE_ID_five_wire242 = internal constant [63 x i8] c"wm97xx_ts.parm=five_wire:Set to '1' to use 5-wire touchscreen.\00", section ".modinfo", align 1
@__param_str_mask = internal constant [15 x i8] c"wm97xx_ts.mask\00", align 1
@mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mask = internal constant %struct.kernel_param { ptr @__param_str_mask, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @mask } }, section "__param", align 4
@__UNIQUE_ID_masktype243 = internal constant [28 x i8] c"wm97xx_ts.parmtype=mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mask244 = internal constant [43 x i8] c"wm97xx_ts.parm=mask:Set adc mask function.\00", section ".modinfo", align 1
@__param_str_coord = internal constant [16 x i8] c"wm97xx_ts.coord\00", align 1
@coord = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_coord = internal constant %struct.kernel_param { ptr @__param_str_coord, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @coord } }, section "__param", align 4
@__UNIQUE_ID_coordtype245 = internal constant [29 x i8] c"wm97xx_ts.parmtype=coord:int\00", section ".modinfo", align 1
@__UNIQUE_ID_coord246 = internal constant [45 x i8] c"wm97xx_ts.parm=coord:Polling coordinate mode\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm9713\00", [25 x i8] zeroinitializer }, align 32
@wm9713_codec = dso_local global { %struct.wm97xx_codec_drv, [60 x i8] } { %struct.wm97xx_codec_drv { i16 19475, ptr @.str, ptr @wm9713_poll_sample, ptr @wm9713_poll_touch, ptr @wm9713_acc_enable, ptr @wm9713_phy_init, ptr @wm9713_dig_enable, ptr @wm9713_dig_restore, ptr @wm9713_aux_prepare }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_wm9713_codec = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm9713_codec = external dso_local constant [0 x i8], align 1
@__ksymtab_wm9713_codec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm9713_codec to i32), ptr @__kstrtab_wm9713_codec, ptr @__kstrtabns_wm9713_codec }, section "___ksymtab_gpl+wm9713_codec", align 4
@__UNIQUE_ID_author250 = internal constant [53 x i8] c"wm97xx_ts.author=Liam Girdwood <lrg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [49 x i8] c"wm97xx_ts.description=WM9713 Touch Screen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [51 x i8] c"wm97xx_ts.file=drivers/input/touchscreen/wm97xx-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [22 x i8] c"wm97xx_ts.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wm9713_poll_sample.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm97xx_ts\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm9713_poll_sample\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/wm9713.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc sample timeout\00", [45 x i8] zeroinitializer }, align 32
@wm9713_poll_sample.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"adc wrong sample, wanted %x got %x\00", [61 x i8] zeroinitializer }, align 32
@delay_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 21, i32 42, i32 84, i32 167, i32 333, i32 667, i32 1000, i32 1333, i32 2000, i32 2667, i32 3333, i32 4000, i32 4667, i32 5333, i32 6000, i32 0], [32 x i8] zeroinitializer }, align 32
@wm9713_poll_coord.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.4, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm9713_poll_coord\00", [46 x i8] zeroinitializer }, align 32
@wm9713_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 164, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setting pen detect pull-up to %d Ohms\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm9713_phy_init\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm9713_phy_init._entry_ptr = internal global ptr @wm9713_phy_init._entry, section ".printk_index", align 4
@wm9713_phy_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.3, i32 170, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting 5-wire touchscreen mode.\00", [63 x i8] zeroinitializer }, align 32
@wm9713_phy_init._entry_ptr.13 = internal global ptr @wm9713_phy_init._entry.11, section ".printk_index", align 4
@wm9713_phy_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.3, i32 175, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Pressure measurement not supported in 5 wire mode, disabling\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm9713_phy_init._entry_ptr.17 = internal global ptr @wm9713_phy_init._entry.14, section ".printk_index", align 4
@wm9713_phy_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.3, i32 184, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"setting pressure measurement current to 400uA.\00", [49 x i8] zeroinitializer }, align 32
@wm9713_phy_init._entry_ptr.20 = internal global ptr @wm9713_phy_init._entry.18, section ".printk_index", align 4
@wm9713_phy_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.3, i32 187, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"setting pressure measurement current to 200uA.\00", [49 x i8] zeroinitializer }, align 32
@wm9713_phy_init._entry_ptr.23 = internal global ptr @wm9713_phy_init._entry.21, section ".printk_index", align 4
@wm9713_phy_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.3, i32 193, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"supplied delay out of range.\00", [35 x i8] zeroinitializer }, align 32
@wm9713_phy_init._entry_ptr.26 = internal global ptr @wm9713_phy_init._entry.24, section ".printk_index", align 4
@wm9713_phy_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.3, i32 196, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setting adc sample delay to %d u Secs.\00", [57 x i8] zeroinitializer }, align 32
@wm9713_phy_init._entry_ptr.29 = internal global ptr @wm9713_phy_init._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"rpu\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 37, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [4 x i8] c"pil\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 51, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 60, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 76, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"five_wire\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 85, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 102, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"coord\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 112, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 462, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"wm9713_codec\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 460, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 293, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 303, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"delay_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 119, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 358, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 163, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 170, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 173, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 183, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 186, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 193, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [38 x i8] c"../drivers/input/touchscreen/wm9713.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 195, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_coord246, ptr @__UNIQUE_ID_coordtype245, ptr @__UNIQUE_ID_delay240, ptr @__UNIQUE_ID_delaytype239, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_five_wire242, ptr @__UNIQUE_ID_five_wiretype241, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_mask244, ptr @__UNIQUE_ID_masktype243, ptr @__UNIQUE_ID_pil236, ptr @__UNIQUE_ID_piltype235, ptr @__UNIQUE_ID_pressure238, ptr @__UNIQUE_ID_pressuretype237, ptr @__UNIQUE_ID_rpu234, ptr @__UNIQUE_ID_rputype233, ptr @__ksymtab_wm9713_codec, ptr @__param_coord, ptr @__param_delay, ptr @__param_five_wire, ptr @__param_mask, ptr @__param_pil, ptr @__param_pressure, ptr @__param_rpu, ptr @wm9713_phy_init._entry, ptr @wm9713_phy_init._entry.11, ptr @wm9713_phy_init._entry.14, ptr @wm9713_phy_init._entry.18, ptr @wm9713_phy_init._entry.21, ptr @wm9713_phy_init._entry.24, ptr @wm9713_phy_init._entry.27, ptr @wm9713_phy_init._entry_ptr, ptr @wm9713_phy_init._entry_ptr.13, ptr @wm9713_phy_init._entry_ptr.17, ptr @wm9713_phy_init._entry_ptr.20, ptr @wm9713_phy_init._entry_ptr.23, ptr @wm9713_phy_init._entry_ptr.26, ptr @wm9713_phy_init._entry_ptr.29, ptr @rpu, ptr @pil, ptr @pressure, ptr @delay, ptr @five_wire, ptr @mask, ptr @coord, ptr @.str, ptr @wm9713_codec, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @delay_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pil to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pressure to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @five_wire to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coord to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9713_codec to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9713_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9713_phy_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9713_phy_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9713_phy_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9713_phy_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9713_phy_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9713_phy_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9713_poll_sample(ptr noundef %wm, i32 noundef %adcsel, ptr nocapture noundef %sample) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @delay, align 4
  %mul = mul i32 %0, 5
  %and = and i32 %adcsel, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %pen_probably_down = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 21
  %1 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %pen_probably_down, align 4
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %and4 = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.cleanup96_crit_edge, label %if.end

if.then.cleanup96_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup96

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load8 = load i8, ptr %pen_probably_down, align 4
  %bf.set = or i8 %bf.load8, 32
  store i8 %bf.set, ptr %pen_probably_down, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %call11 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 116) #3
  %conv15 = and i32 %call11, 64769
  %and16 = and i32 %adcsel, 28672
  %4 = lshr exact i32 %and16, 12
  %shl = shl nuw nsw i32 1, %4
  %or = or i32 %conv15, %shl
  %mach_ops = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %5 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mach_ops, align 4
  %tobool19.not = icmp eq ptr %6, null
  br i1 %tobool19.not, label %if.end10.if.end26_crit_edge, label %land.lhs.true20

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

land.lhs.true20:                                  ; preds = %if.end10
  %pre_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %pre_sample to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pre_sample, align 4
  %tobool22.not = icmp eq ptr %8, null
  br i1 %tobool22.not, label %land.lhs.true20.if.end26_crit_edge, label %if.then23

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %8(i32 noundef %adcsel) #3
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true20.if.end26_crit_edge, %if.end10.if.end26_crit_edge
  %9 = trunc i32 %or to i16
  %conv29 = or i16 %9, 512
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 116, i16 noundef zeroext %conv29) #3
  %10 = load i32, ptr @delay, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %add.i) #3
  %call30139 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 116) #3
  %and31140 = and i32 %call30139, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31140)
  %tobool32.not141 = icmp eq i32 %and31140, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool33.not142 = icmp eq i32 %mul, 0
  %or.cond143 = select i1 %tobool32.not141, i1 true, i1 %tobool33.not142
  br i1 %or.cond143, label %if.end26.while.end_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  br label %while.body

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end26.while.body_crit_edge
  %timeout.0144 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %mul, %if.end26.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4509708) #3
  %dec = add i32 %timeout.0144, -1
  %call30 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 116) #3
  %and31 = and i32 %call30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool33.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool32.not, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end26.while.end_crit_edge
  %timeout.0.lcssa = phi i32 [ %mul, %if.end26.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.0.lcssa)
  %cmp = icmp slt i32 %timeout.0.lcssa, 1
  br i1 %cmp, label %if.then35, label %if.end51

if.then35:                                        ; preds = %while.end
  %arrayidx.i136 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i136, align 4
  %17 = and i16 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool37.not = icmp eq i16 %17, 0
  br i1 %tobool37.not, label %do.body, label %if.then38

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  %pen_probably_down39 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 21
  %18 = ptrtoint ptr %pen_probably_down39 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load40 = load i8, ptr %pen_probably_down39, align 4
  %bf.clear41 = and i8 %bf.load40, -33
  store i8 %bf.clear41, ptr %pen_probably_down39, align 4
  br label %cleanup96

do.body:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9713_poll_sample.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9713_poll_sample, %if.then48)) #3
          to label %cleanup96 [label %if.then48], !srcloc !124

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9713_poll_sample.__UNIQUE_ID_ddebug247, ptr noundef %20, ptr noundef nonnull @.str.4) #3
  br label %cleanup96

if.end51:                                         ; preds = %while.end
  %call52 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %21 = ptrtoint ptr %sample to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call52, ptr %sample, align 4
  %22 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mach_ops, align 4
  %tobool54.not = icmp eq ptr %23, null
  br i1 %tobool54.not, label %if.end51.if.end61_crit_edge, label %land.lhs.true55

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

land.lhs.true55:                                  ; preds = %if.end51
  %post_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %post_sample to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %post_sample, align 4
  %tobool57.not = icmp eq ptr %25, null
  br i1 %tobool57.not, label %land.lhs.true55.if.end61_crit_edge, label %if.then58

land.lhs.true55.if.end61_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %25(i32 noundef %adcsel) #3
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %land.lhs.true55.if.end61_crit_edge, %if.end51.if.end61_crit_edge
  %26 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sample, align 4
  %xor = xor i32 %27, %adcsel
  %and62 = and i32 %xor, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end84, label %do.body65

do.body65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9713_poll_sample.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9713_poll_sample, %if.then77)) #3
          to label %cleanup96 [label %if.then77], !srcloc !124

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #5
  %dev78 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %28 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev78, align 4
  %30 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sample, align 4
  %and80 = and i32 %31, 28672
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9713_poll_sample.__UNIQUE_ID_ddebug248, ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %and16, i32 noundef %and80) #3
  br label %cleanup96

if.end84:                                         ; preds = %if.end61
  %tobool.not.not = xor i1 %tobool.not, true
  %and88 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %or.cond132 = select i1 %tobool.not.not, i1 %tobool89.not, i1 false
  br i1 %or.cond132, label %if.then90, label %if.end84.cleanup96_crit_edge

if.end84.cleanup96_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup96

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  %pen_probably_down91 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 21
  %32 = ptrtoint ptr %pen_probably_down91 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load92 = load i8, ptr %pen_probably_down91, align 4
  %bf.clear93 = and i8 %bf.load92, -33
  store i8 %bf.clear93, ptr %pen_probably_down91, align 4
  br label %cleanup96

cleanup96:                                        ; preds = %if.then90, %if.end84.cleanup96_crit_edge, %if.then77, %do.body65, %if.then48, %do.body, %if.then38, %if.then.cleanup96_crit_edge
  %retval.1 = phi i32 [ 4, %if.then90 ], [ 4, %if.then48 ], [ 4, %if.then38 ], [ 4, %if.then77 ], [ 2, %if.end84.cleanup96_crit_edge ], [ 4, %if.then.cleanup96_crit_edge ], [ 4, %do.body ], [ 4, %do.body65 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9713_poll_touch(ptr noundef %wm, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @coord, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @wm9713_poll_coord(ptr noundef %wm, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.then.if.end19_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @wm9713_poll_sample(ptr noundef %wm, i32 noundef 36864, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 2
  br i1 %cmp3.not, label %if.end5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.else
  %y = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 1
  %call6 = tail call i32 @wm9713_poll_sample(ptr noundef %wm, i32 noundef 40960, ptr noundef %y)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 2
  br i1 %cmp7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %1 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool10.not = icmp eq i32 %1, 0
  %p17 = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 2
  br i1 %tobool10.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @wm9713_poll_sample(ptr noundef %wm, i32 noundef 45056, ptr noundef %p17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 2
  br i1 %cmp13.not, label %if.then11.if.end19_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.else16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %p17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 45248, ptr %p17, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then11.if.end19_crit_edge, %if.then.if.end19_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end19 ], [ %call, %if.then.cleanup_crit_edge ], [ %call2, %if.else.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9713_acc_enable(ptr noundef %wm, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wm to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wm, align 4
  %arrayidx5 = getelementptr [3 x i16], ptr %wm, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx5, align 2
  %arrayidx7 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mach_ops = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %6 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mach_ops, align 4
  %acc_startup = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %acc_startup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acc_startup, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 %9(ptr noundef %wm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %10 = and i16 %1, -512
  %11 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  %spec.select.v = select i1 %tobool15.not, i16 263, i16 271
  %spec.select = or i16 %spec.select.v, %10
  %12 = and i16 %3, -1024
  %13 = load i32, ptr @delay, align 4
  %shl = shl i32 %13, 4
  %and24 = and i32 %shl, 240
  %acc_slot = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 19
  %14 = ptrtoint ptr %acc_slot to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %acc_slot, align 4
  %16 = add i16 %15, 3
  %17 = and i16 %16, 7
  %and27 = zext i16 %17 to i32
  %acc_rate = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 20
  %18 = ptrtoint ptr %acc_rate to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %acc_rate, align 2
  %conv29 = zext i16 %19 to i32
  %and30 = shl nuw nsw i32 %conv29, 8
  %shl31 = and i32 %and30, 768
  %and34 = and i32 %conv29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond = select i1 %tobool35.not, i32 0, i32 240
  %or36 = or i32 %and24, %and27
  %or25 = or i32 %or36, %shl31
  %or28 = or i32 %or25, %cond
  %20 = trunc i32 %or28 to i16
  %21 = or i16 %12, %20
  %conv40 = or i16 %21, 8
  %22 = or i16 %5, 2048
  br label %if.end59

if.else:                                          ; preds = %entry
  %23 = and i16 %1, -258
  %24 = and i16 %3, -9
  %25 = and i16 %5, -2049
  %mach_ops53 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %26 = ptrtoint ptr %mach_ops53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mach_ops53, align 4
  %acc_shutdown = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %acc_shutdown to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %acc_shutdown, align 4
  %tobool54.not = icmp eq ptr %29, null
  br i1 %tobool54.not, label %if.else.if.end59_crit_edge, label %if.then55

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %29(ptr noundef %wm) #3
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.else.if.end59_crit_edge, %if.end
  %dig1.1 = phi i16 [ %spec.select, %if.end ], [ %23, %if.then55 ], [ %23, %if.else.if.end59_crit_edge ]
  %dig2.0 = phi i16 [ %conv40, %if.end ], [ %24, %if.then55 ], [ %24, %if.else.if.end59_crit_edge ]
  %dig3.0 = phi i16 [ %22, %if.end ], [ %25, %if.then55 ], [ %25, %if.else.if.end59_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ 0, %if.then55 ], [ 0, %if.else.if.end59_crit_edge ]
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 116, i16 noundef zeroext %dig1.1) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %dig2.0) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %dig3.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end59 ], [ %call, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9713_phy_init(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = trunc i32 %0 to i16
  %conv4 = and i16 %1, 63
  %dev = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %div = sdiv i32 64000, %0
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %div) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dig3.0 = phi i16 [ %conv4, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %4 = load i32, ptr @five_wire, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end21, label %if.then6

if.then6:                                         ; preds = %if.end
  %5 = or i16 %dig3.0, 4096
  %dev13 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.12) #6
  %8 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %if.then6.if.then40_crit_edge, label %do.end18

if.then6.if.then40_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then40

do.end18:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.15) #6
  store i32 0, ptr @pil, align 4
  br label %if.then40

if.end21:                                         ; preds = %if.end
  %.pr = load i32, ptr @pil, align 4
  %11 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %if.end21.if.end38_crit_edge [
    i32 2, label %if.then23
    i32 0, label %if.end21.if.then40_crit_edge
  ]

if.end21.if.then40_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then40

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %12 = or i16 %dig3.0, 256
  br label %if.end38

if.end38:                                         ; preds = %if.then23, %if.end21.if.end38_crit_edge
  %.str.22.sink = phi ptr [ @.str.19, %if.then23 ], [ @.str.22, %if.end21.if.end38_crit_edge ]
  %dig3.2.ph.ph = phi i16 [ %12, %if.then23 ], [ %dig3.0, %if.end21.if.end38_crit_edge ]
  %dev36 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %13 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull %.str.22.sink) #6
  %.pr99.pr = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr99.pr)
  %tobool39.not = icmp eq i32 %.pr99.pr, 0
  br i1 %tobool39.not, label %if.end38.if.then40_crit_edge, label %if.end38.if.end41_crit_edge

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.end38.if.then40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then40

if.then40:                                        ; preds = %if.end38.if.then40_crit_edge, %if.end21.if.then40_crit_edge, %do.end18, %if.then6.if.then40_crit_edge
  %dig3.2103 = phi i16 [ %dig3.2.ph.ph, %if.end38.if.then40_crit_edge ], [ %dig3.0, %if.end21.if.then40_crit_edge ], [ %5, %do.end18 ], [ %5, %if.then6.if.then40_crit_edge ]
  store i32 0, ptr @pressure, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %dig3.2102 = phi i16 [ %dig3.2103, %if.then40 ], [ %dig3.2.ph.ph, %if.end38.if.end41_crit_edge ]
  %15 = load i32, ptr @delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %15)
  %16 = icmp ugt i32 %15, 15
  br i1 %16, label %do.end49, label %if.end41.if.end55_crit_edge

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  %dev50 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %17 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.25) #6
  store i32 4, ptr @delay, align 4
  %19 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef 333) #6
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.end41.if.end55_crit_edge
  %21 = load i32, ptr @delay, align 4
  %22 = load i32, ptr @mask, align 4
  %.tr97 = trunc i32 %22 to i16
  %23 = shl i16 %.tr97, 4
  %24 = and i16 %23, 48
  %conv67 = or i16 %24, %dig3.2102
  %25 = load i32, ptr @coord, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool68.not = icmp eq i32 %25, 0
  %26 = or i16 %conv67, 512
  %spec.select = select i1 %tobool68.not, i16 %conv67, i16 %26
  %.tr = trunc i32 %21 to i16
  %27 = shl i16 %.tr, 4
  %conv62 = and i16 %27, 240
  %call = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 90) #3
  %conv74 = trunc i32 %call to i16
  %misc = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 3
  %28 = ptrtoint ptr %misc to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv74, ptr %misc, align 4
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 116, i16 noundef zeroext 0) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %conv62) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %spec.select) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 80, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9713_dig_enable(ptr noundef %wm, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 60) #3
  %0 = trunc i32 %call to i16
  %conv2 = and i16 %0, 32767
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 60, i16 noundef zeroext %conv2) #3
  %arrayidx = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 4
  %3 = or i16 %2, -16384
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %3) #3
  %call5 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx7 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx7, align 4
  %6 = and i16 %5, 16383
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %6) #3
  %call11 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 60) #3
  %7 = trunc i32 %call11 to i16
  %conv15 = or i16 %7, -32768
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 60, i16 noundef zeroext %conv15) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9713_dig_restore(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dig_save = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 4
  %0 = ptrtoint ptr %dig_save to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dig_save, align 2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 116, i16 noundef zeroext %1) #3
  %arrayidx2 = getelementptr %struct.wm97xx, ptr %wm, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx2, align 2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %3) #3
  %arrayidx4 = getelementptr %struct.wm97xx, ptr %wm, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx4, align 2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %5) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9713_aux_prepare(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dig_save = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %dig_save, ptr %wm, i32 6)
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 116, i16 noundef zeroext 0) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext 0) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext -16384) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm97xx_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm97xx_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm9713_poll_coord(ptr noundef %wm, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @delay, align 4
  %mul = mul i32 %0, 5
  %pen_probably_down = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 21
  %1 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %pen_probably_down, align 4
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %and = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cleanup95_crit_edge, label %if.end

if.then.cleanup95_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup95

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load5 = load i8, ptr %pen_probably_down, align 4
  %bf.set = or i8 %bf.load5, 32
  store i8 %bf.set, ptr %pen_probably_down, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %call8 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 116) #3
  %4 = trunc i32 %call8 to i16
  %conv12 = and i16 %4, -255
  %5 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  %6 = or i16 %conv12, 8
  %spec.select = select i1 %tobool13.not, i16 %conv12, i16 %6
  %mach_ops = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %7 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mach_ops, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %if.end7.if.end24_crit_edge, label %land.lhs.true

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end7
  %pre_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %pre_sample to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pre_sample, align 4
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %land.lhs.true.if.end24_crit_edge, label %if.then21

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %10(i32 noundef 12288) #3
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %11 = or i16 %spec.select, 513
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 116, i16 noundef zeroext %11) #3
  %12 = load i32, ptr @delay, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %add.i) #3
  %call29 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call29, ptr %data, align 4
  %call30133 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 116) #3
  %and31134 = and i32 %call30133, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31134)
  %tobool32.not135 = icmp eq i32 %and31134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool33.not136 = icmp eq i32 %mul, 0
  %or.cond137 = select i1 %tobool32.not135, i1 true, i1 %tobool33.not136
  br i1 %or.cond137, label %if.end24.while.end_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  br label %while.body

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end24.while.body_crit_edge
  %timeout.0138 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %mul, %if.end24.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 4509708) #3
  %dec = add i32 %timeout.0138, -1
  %call30 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 116) #3
  %and31 = and i32 %call30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool33.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool32.not, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end24.while.end_crit_edge
  %timeout.0.lcssa = phi i32 [ %mul, %if.end24.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.0.lcssa)
  %cmp = icmp slt i32 %timeout.0.lcssa, 1
  br i1 %cmp, label %if.then35, label %if.end50

if.then35:                                        ; preds = %while.end
  %arrayidx.i130 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i130, align 4
  %20 = and i16 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool37.not = icmp eq i16 %20, 0
  br i1 %tobool37.not, label %do.body, label %if.then38

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load40 = load i8, ptr %pen_probably_down, align 4
  %bf.clear41 = and i8 %bf.load40, -33
  store i8 %bf.clear41, ptr %pen_probably_down, align 4
  br label %cleanup95

do.body:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9713_poll_coord.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9713_poll_coord, %if.then47)) #3
          to label %cleanup95 [label %if.then47], !srcloc !124

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9713_poll_coord.__UNIQUE_ID_ddebug249, ptr noundef %23, ptr noundef nonnull @.str.4) #3
  br label %cleanup95

if.end50:                                         ; preds = %while.end
  %call51 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %y = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call51, ptr %y, align 4
  %25 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool52.not = icmp eq i32 %25, 0
  br i1 %tobool52.not, label %if.end50.if.end57_crit_edge, label %if.then53

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  %call54 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end50.if.end57_crit_edge
  %call54.sink = phi i32 [ %call54, %if.then53 ], [ 45248, %if.end50.if.end57_crit_edge ]
  %26 = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call54.sink, ptr %26, align 4
  %28 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mach_ops, align 4
  %tobool59.not = icmp eq ptr %29, null
  br i1 %tobool59.not, label %if.end57.if.end66_crit_edge, label %land.lhs.true60

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

land.lhs.true60:                                  ; preds = %if.end57
  %post_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %post_sample to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %post_sample, align 4
  %tobool62.not = icmp eq ptr %31, null
  br i1 %tobool62.not, label %land.lhs.true60.if.end66_crit_edge, label %if.then63

land.lhs.true60.if.end66_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %31(i32 noundef 12288) #3
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %land.lhs.true60.if.end66_crit_edge, %if.end57.if.end66_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 4
  %and68 = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end66.cleanup95_crit_edge, label %lor.lhs.false

if.end66.cleanup95_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup95

lor.lhs.false:                                    ; preds = %if.end66
  %34 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %y, align 4
  %and71 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %lor.lhs.false.cleanup95_crit_edge, label %if.end74

lor.lhs.false.cleanup95_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup95

if.end74:                                         ; preds = %lor.lhs.false
  %36 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool75.not = icmp eq i32 %36, 0
  br i1 %tobool75.not, label %if.end74.if.end81_crit_edge, label %land.lhs.true76

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

land.lhs.true76:                                  ; preds = %if.end74
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %26, align 4
  %and78 = and i32 %38, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %land.lhs.true76.cleanup95_crit_edge, label %land.lhs.true76.if.end81_crit_edge

land.lhs.true76.if.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

land.lhs.true76.cleanup95_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup95

if.end81:                                         ; preds = %land.lhs.true76.if.end81_crit_edge, %if.end74.if.end81_crit_edge
  %and83 = and i32 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %and87 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %or.cond132 = select i1 %tobool84.not, i1 true, i1 %tobool88.not
  br i1 %or.cond132, label %if.then89, label %if.end81.cleanup95_crit_edge

if.end81.cleanup95_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup95

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load91 = load i8, ptr %pen_probably_down, align 4
  %bf.clear92 = and i8 %bf.load91, -33
  store i8 %bf.clear92, ptr %pen_probably_down, align 4
  br label %cleanup95

cleanup95:                                        ; preds = %if.then89, %if.end81.cleanup95_crit_edge, %land.lhs.true76.cleanup95_crit_edge, %lor.lhs.false.cleanup95_crit_edge, %if.end66.cleanup95_crit_edge, %if.then47, %do.body, %if.then38, %if.then.cleanup95_crit_edge
  %retval.1 = phi i32 [ 4, %if.then89 ], [ 4, %if.then47 ], [ 4, %if.then38 ], [ 0, %land.lhs.true76.cleanup95_crit_edge ], [ 0, %if.end66.cleanup95_crit_edge ], [ 0, %lor.lhs.false.cleanup95_crit_edge ], [ 4, %if.then.cleanup95_crit_edge ], [ 4, %do.body ], [ 2, %if.end81.cleanup95_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !80, !82, !83, !85, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__param_rpu, !1, !"__param_rpu", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/wm9713.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_rputype233, !1, !"__UNIQUE_ID_rputype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rpu234, !4, !"__UNIQUE_ID_rpu234", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/wm9713.c", i32 39, i32 1}
!5 = !{ptr @__param_pil, !6, !"__param_pil", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/wm9713.c", i32 52, i32 1}
!7 = !{ptr @__UNIQUE_ID_piltype235, !6, !"__UNIQUE_ID_piltype235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pil236, !9, !"__UNIQUE_ID_pil236", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/wm9713.c", i32 53, i32 1}
!10 = !{ptr @__param_pressure, !11, !"__param_pressure", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/wm9713.c", i32 61, i32 1}
!12 = !{ptr @__UNIQUE_ID_pressuretype237, !11, !"__UNIQUE_ID_pressuretype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pressure238, !14, !"__UNIQUE_ID_pressure238", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/wm9713.c", i32 62, i32 1}
!15 = !{ptr @__param_delay, !16, !"__param_delay", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/wm9713.c", i32 77, i32 1}
!17 = !{ptr @__UNIQUE_ID_delaytype239, !16, !"__UNIQUE_ID_delaytype239", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_delay240, !19, !"__UNIQUE_ID_delay240", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/wm9713.c", i32 78, i32 1}
!20 = !{ptr @__param_five_wire, !21, !"__param_five_wire", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/wm9713.c", i32 86, i32 1}
!22 = !{ptr @__UNIQUE_ID_five_wiretype241, !21, !"__UNIQUE_ID_five_wiretype241", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_five_wire242, !24, !"__UNIQUE_ID_five_wire242", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/wm9713.c", i32 87, i32 1}
!25 = !{ptr @__param_mask, !26, !"__param_mask", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/wm9713.c", i32 103, i32 1}
!27 = !{ptr @__UNIQUE_ID_masktype243, !26, !"__UNIQUE_ID_masktype243", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_mask244, !29, !"__UNIQUE_ID_mask244", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/wm9713.c", i32 104, i32 1}
!30 = !{ptr @__param_coord, !31, !"__param_coord", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/wm9713.c", i32 113, i32 1}
!32 = !{ptr @__UNIQUE_ID_coordtype245, !31, !"__UNIQUE_ID_coordtype245", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_coord246, !34, !"__UNIQUE_ID_coord246", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/wm9713.c", i32 114, i32 1}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/wm9713.c", i32 462, i32 10}
!37 = !{ptr @wm9713_codec, !38, !"wm9713_codec", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/wm9713.c", i32 460, i32 25}
!39 = !{ptr @__ksymtab_wm9713_codec, !40, !"__ksymtab_wm9713_codec", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/wm9713.c", i32 471, i32 1}
!41 = !{ptr @__UNIQUE_ID_author250, !42, !"__UNIQUE_ID_author250", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/wm9713.c", i32 474, i32 1}
!43 = !{ptr @__UNIQUE_ID_description251, !44, !"__UNIQUE_ID_description251", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/wm9713.c", i32 475, i32 1}
!45 = !{ptr @__UNIQUE_ID_file252, !46, !"__UNIQUE_ID_file252", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/wm9713.c", i32 476, i32 1}
!47 = !{ptr @__UNIQUE_ID_license253, !46, !"__UNIQUE_ID_license253", i1 false, i1 false}
!48 = !{ptr @pil, !49, !"pil", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/wm9713.c", i32 51, i32 12}
!50 = !{ptr @five_wire, !51, !"five_wire", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/wm9713.c", i32 85, i32 12}
!52 = !{ptr @mask, !53, !"mask", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/wm9713.c", i32 102, i32 12}
!54 = !{ptr @coord, !55, !"coord", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/wm9713.c", i32 112, i32 12}
!56 = !{ptr @__param_str_rpu, !1, !"__param_str_rpu", i1 false, i1 false}
!57 = !{ptr @rpu, !58, !"rpu", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/wm9713.c", i32 37, i32 12}
!59 = !{ptr @__param_str_pil, !6, !"__param_str_pil", i1 false, i1 false}
!60 = !{ptr @__param_str_pressure, !11, !"__param_str_pressure", i1 false, i1 false}
!61 = !{ptr @pressure, !62, !"pressure", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/wm9713.c", i32 60, i32 12}
!63 = !{ptr @__param_str_delay, !16, !"__param_str_delay", i1 false, i1 false}
!64 = !{ptr @delay, !65, !"delay", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/wm9713.c", i32 76, i32 12}
!66 = !{ptr @__param_str_five_wire, !21, !"__param_str_five_wire", i1 false, i1 false}
!67 = !{ptr @__param_str_mask, !26, !"__param_str_mask", i1 false, i1 false}
!68 = !{ptr @__param_str_coord, !31, !"__param_str_coord", i1 false, i1 false}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/wm9713.c", i32 293, i32 4}
!71 = !{ptr @.str.2, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @wm9713_poll_sample.__UNIQUE_ID_ddebug247, !70, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!75 = !{ptr @.str.5, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/wm9713.c", i32 303, i32 3}
!77 = !{ptr @wm9713_poll_sample.__UNIQUE_ID_ddebug248, !76, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!78 = !{ptr @delay_table, !79, !"delay_table", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/wm9713.c", i32 119, i32 18}
!80 = !{ptr @.str.6, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/wm9713.c", i32 358, i32 4}
!82 = !{ptr @wm9713_poll_coord.__UNIQUE_ID_ddebug249, !81, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!83 = !{ptr @.str.7, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/wm9713.c", i32 163, i32 3}
!85 = !{ptr @.str.8, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.9, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.10, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @wm9713_phy_init._entry, !84, !"_entry", i1 false, i1 false}
!89 = !{ptr @wm9713_phy_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.12, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/wm9713.c", i32 170, i32 3}
!92 = !{ptr @wm9713_phy_init._entry.11, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @wm9713_phy_init._entry_ptr.13, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.15, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/wm9713.c", i32 173, i32 4}
!96 = !{ptr @.str.16, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @wm9713_phy_init._entry.14, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @wm9713_phy_init._entry_ptr.17, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.19, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/wm9713.c", i32 183, i32 3}
!101 = !{ptr @wm9713_phy_init._entry.18, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @wm9713_phy_init._entry_ptr.20, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/wm9713.c", i32 186, i32 3}
!105 = !{ptr @wm9713_phy_init._entry.21, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @wm9713_phy_init._entry_ptr.23, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.25, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/touchscreen/wm9713.c", i32 193, i32 3}
!109 = !{ptr @wm9713_phy_init._entry.24, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @wm9713_phy_init._entry_ptr.26, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.28, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/touchscreen/wm9713.c", i32 195, i32 3}
!113 = !{ptr @wm9713_phy_init._entry.27, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @wm9713_phy_init._entry_ptr.29, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i64 2148963768, i64 2148963773, i64 2148963786, i64 2148963830, i64 2148963864, i64 2148963885}
