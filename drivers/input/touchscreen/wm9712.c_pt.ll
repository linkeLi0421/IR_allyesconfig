; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/wm9712.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wm9712.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm9712_codec\22, \22a\22\09"
module asm "\09.weak\09__crc_wm9712_codec\09\09\09\09"
module asm "\09.long\09__crc_wm9712_codec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm9712_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22wm9712_codec\22\09\09\09\09\09"
module asm "__kstrtabns_wm9712_codec:\09\09\09\09\09"
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
@delay = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
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
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm9712\00", [25 x i8] zeroinitializer }, align 32
@wm9712_codec = dso_local global { %struct.wm97xx_codec_drv, [60 x i8] } { %struct.wm97xx_codec_drv { i16 19474, ptr @.str, ptr @wm9712_poll_sample, ptr @wm9712_poll_touch, ptr @wm9712_acc_enable, ptr @wm9712_phy_init, ptr @wm9712_dig_enable, ptr @wm9712_dig_restore, ptr @wm9712_aux_prepare }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_wm9712_codec = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm9712_codec = external dso_local constant [0 x i8], align 1
@__ksymtab_wm9712_codec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm9712_codec to i32), ptr @__kstrtab_wm9712_codec, ptr @__kstrtabns_wm9712_codec }, section "___ksymtab_gpl+wm9712_codec", align 4
@__UNIQUE_ID_author256 = internal constant [53 x i8] c"wm97xx_ts.author=Liam Girdwood <lrg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [49 x i8] c"wm97xx_ts.description=WM9712 Touch Screen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [51 x i8] c"wm97xx_ts.file=drivers/input/touchscreen/wm97xx-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [22 x i8] c"wm97xx_ts.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wm9712_poll_sample.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm97xx_ts\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm9712_poll_sample\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/wm9712.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adc sample timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@wm9712_poll_sample.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adc wrong sample, wanted %x got %x\0A\00", [60 x i8] zeroinitializer }, align 32
@delay_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 21, i32 42, i32 84, i32 167, i32 333, i32 667, i32 1000, i32 1333, i32 2000, i32 2667, i32 3333, i32 4000, i32 4667, i32 5333, i32 6000, i32 0], [32 x i8] zeroinitializer }, align 32
@wm9712_poll_coord.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.4, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm9712_poll_coord\00", [46 x i8] zeroinitializer }, align 32
@wm9712_phy_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm9712_phy_init\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setting pen detect pull-up to %d Ohms\0A\00", [57 x i8] zeroinitializer }, align 32
@wm9712_phy_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting 5-wire touchscreen mode.\0A\00", [62 x i8] zeroinitializer }, align 32
@wm9712_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 171, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"pressure measurement is not supported in 5-wire mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm9712_phy_init._entry_ptr = internal global ptr @wm9712_phy_init._entry, section ".printk_index", align 4
@wm9712_phy_init.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.13, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"setting pressure measurement current to 400uA.\0A\00", [48 x i8] zeroinitializer }, align 32
@wm9712_phy_init.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.14, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"setting pressure measurement current to 200uA.\0A\00", [48 x i8] zeroinitializer }, align 32
@wm9712_phy_init.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.15, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"supplied delay out of range.\0A\00", [34 x i8] zeroinitializer }, align 32
@wm9712_phy_init.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.16, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"setting adc sample delay to %d u Secs.\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [4 x i8] c"rpu\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 37, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [4 x i8] c"pil\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 51, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 60, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 76, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"five_wire\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 85, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 102, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"coord\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 112, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 452, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"wm9712_codec\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 450, i32 25 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 283, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 293, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"delay_table\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 119, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 347, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 160, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 167, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 170, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 179, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 182, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 189, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [38 x i8] c"../drivers/input/touchscreen/wm9712.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 194, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_coord246, ptr @__UNIQUE_ID_coordtype245, ptr @__UNIQUE_ID_delay240, ptr @__UNIQUE_ID_delaytype239, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_five_wire242, ptr @__UNIQUE_ID_five_wiretype241, ptr @__UNIQUE_ID_license259, ptr @__UNIQUE_ID_mask244, ptr @__UNIQUE_ID_masktype243, ptr @__UNIQUE_ID_pil236, ptr @__UNIQUE_ID_piltype235, ptr @__UNIQUE_ID_pressure238, ptr @__UNIQUE_ID_pressuretype237, ptr @__UNIQUE_ID_rpu234, ptr @__UNIQUE_ID_rputype233, ptr @__ksymtab_wm9712_codec, ptr @__param_coord, ptr @__param_delay, ptr @__param_five_wire, ptr @__param_mask, ptr @__param_pil, ptr @__param_pressure, ptr @__param_rpu, ptr @wm9712_phy_init._entry, ptr @wm9712_phy_init._entry_ptr, ptr @rpu, ptr @pil, ptr @pressure, ptr @delay, ptr @five_wire, ptr @mask, ptr @coord, ptr @.str, ptr @wm9712_codec, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @delay_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pil to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pressure to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @five_wire to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coord to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9712_codec to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9712_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9712_poll_sample(ptr noundef %wm, i32 noundef %adcsel, ptr nocapture noundef %sample) #0 align 64 {
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
  br i1 %tobool5.not, label %if.then.cleanup94_crit_edge, label %if.end

if.then.cleanup94_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup94

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load8 = load i8, ptr %pen_probably_down, align 4
  %bf.set = or i8 %bf.load8, 32
  store i8 %bf.set, ptr %pen_probably_down, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %mach_ops = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %4 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mach_ops, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %land.lhs.true12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

land.lhs.true12:                                  ; preds = %if.end10
  %pre_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pre_sample to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pre_sample, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %land.lhs.true12.if.end18_crit_edge, label %if.then15

land.lhs.true12.if.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %7(i32 noundef %adcsel) #3
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true12.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %and19 = and i32 %adcsel, 28672
  %8 = load i32, ptr @delay, align 4
  %shl = shl i32 %8, 4
  %and20 = and i32 %shl, 240
  %or = or i32 %and20, %and19
  %9 = trunc i32 %or to i16
  %conv22 = or i16 %9, -32768
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %conv22) #3
  %10 = load i32, ptr @delay, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %add.i) #3
  %call23136 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 118) #3
  %and24137 = and i32 %call23136, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24137)
  %tobool25.not138 = icmp eq i32 %and24137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool26.not139 = icmp eq i32 %mul, 0
  %or.cond140 = select i1 %tobool25.not138, i1 true, i1 %tobool26.not139
  br i1 %or.cond140, label %if.end18.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  br label %while.body

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end18.while.body_crit_edge
  %timeout.0141 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %mul, %if.end18.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4509708) #3
  %dec = add i32 %timeout.0141, -1
  %call23 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 118) #3
  %and24 = and i32 %call23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool26.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end18.while.end_crit_edge
  %timeout.0.lcssa = phi i32 [ %mul, %if.end18.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.0.lcssa)
  %cmp = icmp slt i32 %timeout.0.lcssa, 1
  br i1 %cmp, label %if.then28, label %if.end44

if.then28:                                        ; preds = %while.end
  %arrayidx.i133 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i133, align 4
  %17 = and i16 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool30.not = icmp eq i16 %17, 0
  br i1 %tobool30.not, label %do.body, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  %pen_probably_down32 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 21
  %18 = ptrtoint ptr %pen_probably_down32 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load33 = load i8, ptr %pen_probably_down32, align 4
  %bf.clear34 = and i8 %bf.load33, -33
  store i8 %bf.clear34, ptr %pen_probably_down32, align 4
  br label %cleanup94

do.body:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_poll_sample.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_poll_sample, %if.then41)) #3
          to label %cleanup94 [label %if.then41], !srcloc !117

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_poll_sample.__UNIQUE_ID_ddebug253, ptr noundef %20, ptr noundef nonnull @.str.4) #3
  br label %cleanup94

if.end44:                                         ; preds = %while.end
  %call45 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %21 = ptrtoint ptr %sample to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call45, ptr %sample, align 4
  %22 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mach_ops, align 4
  %tobool47.not = icmp eq ptr %23, null
  br i1 %tobool47.not, label %if.end44.if.end54_crit_edge, label %land.lhs.true48

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

land.lhs.true48:                                  ; preds = %if.end44
  %post_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %post_sample to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %post_sample, align 4
  %tobool50.not = icmp eq ptr %25, null
  br i1 %tobool50.not, label %land.lhs.true48.if.end54_crit_edge, label %if.then51

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %25(i32 noundef %adcsel) #3
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true48.if.end54_crit_edge, %if.end44.if.end54_crit_edge
  %26 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sample, align 4
  %xor = xor i32 %27, %adcsel
  %and55 = and i32 %xor, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end77, label %do.body58

do.body58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_poll_sample.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_poll_sample, %if.then70)) #3
          to label %cleanup94 [label %if.then70], !srcloc !117

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #5
  %dev71 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %28 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev71, align 4
  %30 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sample, align 4
  %and73 = and i32 %31, 28672
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_poll_sample.__UNIQUE_ID_ddebug254, ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %and19, i32 noundef %and73) #3
  br label %cleanup94

if.end77:                                         ; preds = %if.end54
  %tobool.not.not = xor i1 %tobool.not, true
  %and81 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %or.cond129 = select i1 %tobool.not.not, i1 %tobool82.not, i1 false
  br i1 %or.cond129, label %if.then83, label %if.end77.cleanup94_crit_edge

if.end77.cleanup94_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup94

if.then83:                                        ; preds = %if.end77
  %call84 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %32 = ptrtoint ptr %sample to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call84, ptr %sample, align 4
  %and85 = and i32 %call84, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.then87, label %if.then83.cleanup94_crit_edge

if.then83.cleanup94_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup94

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #5
  %pen_probably_down88 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 21
  %33 = ptrtoint ptr %pen_probably_down88 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load89 = load i8, ptr %pen_probably_down88, align 4
  %bf.clear90 = and i8 %bf.load89, -33
  store i8 %bf.clear90, ptr %pen_probably_down88, align 4
  br label %cleanup94

cleanup94:                                        ; preds = %if.then87, %if.then83.cleanup94_crit_edge, %if.end77.cleanup94_crit_edge, %if.then70, %do.body58, %if.then41, %do.body, %if.then31, %if.then.cleanup94_crit_edge
  %retval.1 = phi i32 [ 4, %if.then87 ], [ 4, %if.then41 ], [ 4, %if.then31 ], [ 1, %if.then70 ], [ 2, %if.then83.cleanup94_crit_edge ], [ 2, %if.end77.cleanup94_crit_edge ], [ 4, %if.then.cleanup94_crit_edge ], [ 4, %do.body ], [ 1, %do.body58 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9712_poll_touch(ptr noundef %wm, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @coord, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @wm9712_poll_coord(ptr noundef %wm, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.then.if.end20_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @wm9712_poll_sample(ptr noundef %wm, i32 noundef 36864, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 2
  br i1 %cmp3.not, label %if.end5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.else
  %y = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 1
  %call6 = tail call i32 @wm9712_poll_sample(ptr noundef %wm, i32 noundef 40960, ptr noundef %y)
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
  br i1 %tobool10.not, label %if.end9.if.else17_crit_edge, label %land.lhs.true

if.end9.if.else17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else17

land.lhs.true:                                    ; preds = %if.end9
  %2 = load i32, ptr @five_wire, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool11.not = icmp eq i32 %2, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true.if.else17_crit_edge

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else17

if.then12:                                        ; preds = %land.lhs.true
  %p = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 2
  %call13 = tail call i32 @wm9712_poll_sample(ptr noundef %wm, i32 noundef 45056, ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 2
  br i1 %cmp14.not, label %if.then12.if.end20_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %if.end9.if.else17_crit_edge
  %p18 = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %p18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 45248, ptr %p18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then12.if.end20_crit_edge, %if.then.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end20 ], [ %call, %if.then.cleanup_crit_edge ], [ %call2, %if.else.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9712_acc_enable(ptr noundef %wm, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x i16], ptr %wm, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx4 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mach_ops = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %4 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mach_ops, align 4
  %acc_startup = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %acc_startup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acc_startup, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then.if.end10_crit_edge, label %if.then6

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then6:                                         ; preds = %if.then
  %call = tail call i32 %7(ptr noundef %wm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %8 = and i16 %1, -32768
  %9 = load i32, ptr @delay, align 4
  %shl = shl i32 %9, 4
  %and12 = and i32 %shl, 240
  %acc_slot = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 19
  %10 = ptrtoint ptr %acc_slot to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %acc_slot, align 4
  %12 = add i16 %11, 3
  %13 = and i16 %12, 7
  %and14 = zext i16 %13 to i32
  %acc_rate = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 20
  %14 = ptrtoint ptr %acc_rate to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %acc_rate, align 2
  %conv16 = zext i16 %15 to i32
  %and17 = shl nuw nsw i32 %conv16, 8
  %shl18 = and i32 %and17, 768
  %and21 = and i32 %conv16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond = select i1 %tobool22.not, i32 0, i32 240
  %or23 = or i32 %and12, %and14
  %or = or i32 %or23, %shl18
  %or15 = or i32 %or, %cond
  %16 = trunc i32 %or15 to i16
  %17 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  %spec.select.v = select i1 %tobool28.not, i16 3080, i16 15368
  %18 = or i16 %spec.select.v, %8
  %spec.select = or i16 %18, %16
  %19 = or i16 %3, 2048
  br label %if.end49

if.else:                                          ; preds = %entry
  %20 = and i16 %1, -3081
  %21 = and i16 %3, -2049
  %mach_ops43 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %22 = ptrtoint ptr %mach_ops43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mach_ops43, align 4
  %acc_shutdown = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %acc_shutdown to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %acc_shutdown, align 4
  %tobool44.not = icmp eq ptr %25, null
  br i1 %tobool44.not, label %if.else.if.end49_crit_edge, label %if.then45

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end49

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %25(ptr noundef %wm) #3
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.else.if.end49_crit_edge, %if.end10
  %dig1.1 = phi i16 [ %spec.select, %if.end10 ], [ %20, %if.then45 ], [ %20, %if.else.if.end49_crit_edge ]
  %dig2.0 = phi i16 [ %19, %if.end10 ], [ %21, %if.then45 ], [ %21, %if.else.if.end49_crit_edge ]
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %dig1.1) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %dig2.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ %call, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9712_phy_init(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = trunc i32 %0 to i16
  %2 = and i16 %1, 63
  %conv4 = or i16 %2, 8192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_phy_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_phy_init, %if.then8)) #3
          to label %if.end9 [label %if.then8], !srcloc !117

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = load i32, ptr @rpu, align 4
  %div = sdiv i32 64000, %5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_phy_init.__UNIQUE_ID_ddebug247, ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %div) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then, %entry.if.end9_crit_edge
  %dig2.0 = phi i16 [ %conv4, %if.then8 ], [ 8193, %entry.if.end9_crit_edge ], [ %conv4, %if.then ]
  %6 = load i32, ptr @five_wire, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %if.end39, label %if.then11

if.then11:                                        ; preds = %if.end9
  %7 = or i16 %dig2.0, 4096
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_phy_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_phy_init, %if.then27)) #3
          to label %do.end31 [label %if.then27], !srcloc !117

if.then27:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  %dev28 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %8 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_phy_init.__UNIQUE_ID_ddebug248, ptr noundef %9, ptr noundef nonnull @.str.9) #3
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %if.then11
  %10 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool32.not = icmp eq i32 %10, 0
  br i1 %tobool32.not, label %do.end31.if.end82_crit_edge, label %do.end36

do.end31.if.end82_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82

do.end36:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #5
  %dev37 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %11 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.10) #6
  store i32 0, ptr @pil, align 4
  br label %if.end82

if.end39:                                         ; preds = %if.end9
  %.pr = load i32, ptr @pil, align 4
  %13 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %do.body64 [
    i32 2, label %if.then41
    i32 0, label %if.end39.if.end82_crit_edge
  ]

if.end39.if.end82_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  %14 = or i16 %dig2.0, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_phy_init.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_phy_init, %if.then57)) #3
          to label %if.end82 [label %if.then57], !srcloc !117

if.then57:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  %dev58 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %15 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_phy_init.__UNIQUE_ID_ddebug249, ptr noundef %16, ptr noundef nonnull @.str.13) #3
  br label %if.end82

do.body64:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_phy_init.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_phy_init, %if.then76)) #3
          to label %if.end82 [label %if.then76], !srcloc !117

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #5
  %dev77 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %17 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev77, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_phy_init.__UNIQUE_ID_ddebug250, ptr noundef %18, ptr noundef nonnull @.str.14) #3
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %do.body64, %if.then57, %if.then41, %if.end39.if.end82_crit_edge, %do.end36, %do.end31.if.end82_crit_edge
  %dig2.2 = phi i16 [ %14, %if.then57 ], [ %dig2.0, %if.then76 ], [ %dig2.0, %if.end39.if.end82_crit_edge ], [ %14, %if.then41 ], [ %dig2.0, %do.body64 ], [ %7, %do.end31.if.end82_crit_edge ], [ %7, %do.end36 ]
  %19 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool83.not = icmp eq i32 %19, 0
  br i1 %tobool83.not, label %if.then84, label %if.end82.if.end85_crit_edge

if.end82.if.end85_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #5
  store i32 0, ptr @pressure, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end82.if.end85_crit_edge
  %20 = load i32, ptr @delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %20)
  %21 = icmp ugt i32 %20, 15
  br i1 %21, label %do.body91, label %if.end85.if.end108_crit_edge

if.end85.if.end108_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end108

do.body91:                                        ; preds = %if.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_phy_init.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_phy_init, %if.then103)) #3
          to label %do.end107 [label %if.then103], !srcloc !117

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #5
  %dev104 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %22 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev104, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_phy_init.__UNIQUE_ID_ddebug251, ptr noundef %23, ptr noundef nonnull @.str.15) #3
  br label %do.end107

do.end107:                                        ; preds = %if.then103, %do.body91
  store i32 4, ptr @delay, align 4
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %if.end85.if.end108_crit_edge
  %24 = load i32, ptr @delay, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_phy_init.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_phy_init, %if.then128)) #3
          to label %do.end132 [label %if.then128], !srcloc !117

if.then128:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  %dev129 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %25 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev129, align 4
  %27 = load i32, ptr @delay, align 4
  %arrayidx = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_phy_init.__UNIQUE_ID_ddebug252, ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef %29) #3
  br label %do.end132

do.end132:                                        ; preds = %if.then128, %if.end108
  %30 = load i32, ptr @mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool138.not = icmp eq i32 %30, 0
  br i1 %tobool138.not, label %do.end132.if.end150_crit_edge, label %if.then139

do.end132.if.end150_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end150

if.then139:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #5
  %call140 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 86) #3
  %31 = trunc i32 %call140 to i16
  %conv144 = or i16 %31, 16
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 86, i16 noundef zeroext %conv144) #3
  %call145 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 76) #3
  %32 = trunc i32 %call145 to i16
  %conv149 = or i16 %32, 16
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 76, i16 noundef zeroext %conv149) #3
  br label %if.end150

if.end150:                                        ; preds = %if.then139, %do.end132.if.end150_crit_edge
  %.tr180 = trunc i32 %30 to i16
  %33 = shl i16 %.tr180, 6
  %34 = and i16 %33, 192
  %conv137 = or i16 %34, %dig2.2
  %35 = load i32, ptr @coord, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool151.not = icmp eq i32 %35, 0
  %36 = or i16 %conv137, 512
  %spec.select = select i1 %tobool151.not, i16 %conv137, i16 %36
  %.tr = trunc i32 %24 to i16
  %37 = shl i16 %.tr, 4
  %conv115 = and i16 %37, 240
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %conv115) #3
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %spec.select) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9712_dig_enable(ptr noundef %wm, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = or i16 %1, -16384
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %2) #3
  %call = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = and i16 %1, 16383
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %3) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9712_dig_restore(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.wm97xx, ptr %wm, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %1) #3
  %arrayidx2 = getelementptr %struct.wm97xx, ptr %wm, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx2, align 2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9712_aux_prepare(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dig_save = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %dig_save, ptr %wm, i32 6)
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
define internal fastcc i32 @wm9712_poll_coord(ptr noundef %wm, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
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
  br i1 %tobool2.not, label %if.then.cleanup83_crit_edge, label %if.end

if.then.cleanup83_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup83

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load5 = load i8, ptr %pen_probably_down, align 4
  %bf.set = or i8 %bf.load5, 32
  store i8 %bf.set, ptr %pen_probably_down, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %mach_ops = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %4 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mach_ops, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  %pre_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pre_sample to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pre_sample, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then11

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %7(i32 noundef 12288) #3
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %8 = load i32, ptr @delay, align 4
  %.tr = trunc i32 %8 to i16
  %9 = shl i16 %.tr, 4
  %10 = and i16 %9, 240
  %conv16 = or i16 %10, -30720
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %conv16) #3
  %11 = load i32, ptr @delay, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %add.i) #3
  %call17 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call17, ptr %data, align 4
  %call18117 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 118) #3
  %and19118 = and i32 %call18117, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19118)
  %tobool20.not119 = icmp eq i32 %and19118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool21.not120 = icmp eq i32 %mul, 0
  %or.cond121 = select i1 %tobool20.not119, i1 true, i1 %tobool21.not120
  br i1 %or.cond121, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end14.while.body_crit_edge
  %timeout.0122 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %mul, %if.end14.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 4509708) #3
  %dec = add i32 %timeout.0122, -1
  %call18 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 118) #3
  %and19 = and i32 %call18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool21.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool20.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end14.while.end_crit_edge
  %timeout.0.lcssa = phi i32 [ %mul, %if.end14.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.0.lcssa)
  %cmp = icmp slt i32 %timeout.0.lcssa, 1
  br i1 %cmp, label %if.then23, label %if.end38

if.then23:                                        ; preds = %while.end
  %arrayidx.i114 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i114, align 4
  %19 = and i16 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool25.not = icmp eq i16 %19, 0
  br i1 %tobool25.not, label %do.body, label %if.then26

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load28 = load i8, ptr %pen_probably_down, align 4
  %bf.clear29 = and i8 %bf.load28, -33
  store i8 %bf.clear29, ptr %pen_probably_down, align 4
  br label %cleanup83

do.body:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9712_poll_coord.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9712_poll_coord, %if.then35)) #3
          to label %cleanup83 [label %if.then35], !srcloc !117

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9712_poll_coord.__UNIQUE_ID_ddebug255, ptr noundef %22, ptr noundef nonnull @.str.4) #3
  br label %cleanup83

if.end38:                                         ; preds = %while.end
  %call39 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  %y = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call39, ptr %y, align 4
  %24 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  %call42 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #3
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end38.if.end45_crit_edge
  %call42.sink = phi i32 [ %call42, %if.then41 ], [ 45248, %if.end38.if.end45_crit_edge ]
  %25 = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call42.sink, ptr %25, align 4
  %27 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mach_ops, align 4
  %tobool47.not = icmp eq ptr %28, null
  br i1 %tobool47.not, label %if.end45.if.end54_crit_edge, label %land.lhs.true48

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

land.lhs.true48:                                  ; preds = %if.end45
  %post_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %post_sample to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %post_sample, align 4
  %tobool50.not = icmp eq ptr %30, null
  br i1 %tobool50.not, label %land.lhs.true48.if.end54_crit_edge, label %if.then51

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %30(i32 noundef 12288) #3
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true48.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  %and56 = and i32 %32, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.cleanup83_crit_edge, label %lor.lhs.false

if.end54.cleanup83_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup83

lor.lhs.false:                                    ; preds = %if.end54
  %33 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y, align 4
  %and59 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %lor.lhs.false.cleanup83_crit_edge, label %if.end62

lor.lhs.false.cleanup83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup83

if.end62:                                         ; preds = %lor.lhs.false
  %35 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool63.not = icmp eq i32 %35, 0
  br i1 %tobool63.not, label %if.end62.if.end69_crit_edge, label %land.lhs.true64

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end69

land.lhs.true64:                                  ; preds = %if.end62
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %25, align 4
  %and66 = and i32 %37, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %land.lhs.true64.cleanup83_crit_edge, label %land.lhs.true64.if.end69_crit_edge

land.lhs.true64.if.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end69

land.lhs.true64.cleanup83_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup83

if.end69:                                         ; preds = %land.lhs.true64.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  %and71 = and i32 %32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %and75 = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %or.cond116 = select i1 %tobool72.not, i1 true, i1 %tobool76.not
  br i1 %or.cond116, label %if.then77, label %if.end69.cleanup83_crit_edge

if.end69.cleanup83_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup83

if.then77:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %pen_probably_down to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load79 = load i8, ptr %pen_probably_down, align 4
  %bf.clear80 = and i8 %bf.load79, -33
  store i8 %bf.clear80, ptr %pen_probably_down, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %if.then77, %if.end69.cleanup83_crit_edge, %land.lhs.true64.cleanup83_crit_edge, %lor.lhs.false.cleanup83_crit_edge, %if.end54.cleanup83_crit_edge, %if.then35, %do.body, %if.then26, %if.then.cleanup83_crit_edge
  %retval.1 = phi i32 [ 4, %if.then77 ], [ 4, %if.then35 ], [ 4, %if.then26 ], [ 0, %land.lhs.true64.cleanup83_crit_edge ], [ 0, %if.end54.cleanup83_crit_edge ], [ 0, %lor.lhs.false.cleanup83_crit_edge ], [ 4, %if.then.cleanup83_crit_edge ], [ 4, %do.body ], [ 2, %if.end69.cleanup83_crit_edge ]
  ret i32 %retval.1
}

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !80, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__param_rpu, !1, !"__param_rpu", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/wm9712.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_rputype233, !1, !"__UNIQUE_ID_rputype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rpu234, !4, !"__UNIQUE_ID_rpu234", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/wm9712.c", i32 39, i32 1}
!5 = !{ptr @__param_pil, !6, !"__param_pil", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/wm9712.c", i32 52, i32 1}
!7 = !{ptr @__UNIQUE_ID_piltype235, !6, !"__UNIQUE_ID_piltype235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pil236, !9, !"__UNIQUE_ID_pil236", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/wm9712.c", i32 53, i32 1}
!10 = !{ptr @__param_pressure, !11, !"__param_pressure", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/wm9712.c", i32 61, i32 1}
!12 = !{ptr @__UNIQUE_ID_pressuretype237, !11, !"__UNIQUE_ID_pressuretype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pressure238, !14, !"__UNIQUE_ID_pressure238", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/wm9712.c", i32 62, i32 1}
!15 = !{ptr @__param_delay, !16, !"__param_delay", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/wm9712.c", i32 77, i32 1}
!17 = !{ptr @__UNIQUE_ID_delaytype239, !16, !"__UNIQUE_ID_delaytype239", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_delay240, !19, !"__UNIQUE_ID_delay240", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/wm9712.c", i32 78, i32 1}
!20 = !{ptr @__param_five_wire, !21, !"__param_five_wire", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/wm9712.c", i32 86, i32 1}
!22 = !{ptr @__UNIQUE_ID_five_wiretype241, !21, !"__UNIQUE_ID_five_wiretype241", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_five_wire242, !24, !"__UNIQUE_ID_five_wire242", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/wm9712.c", i32 87, i32 1}
!25 = !{ptr @__param_mask, !26, !"__param_mask", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/wm9712.c", i32 103, i32 1}
!27 = !{ptr @__UNIQUE_ID_masktype243, !26, !"__UNIQUE_ID_masktype243", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_mask244, !29, !"__UNIQUE_ID_mask244", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/wm9712.c", i32 104, i32 1}
!30 = !{ptr @__param_coord, !31, !"__param_coord", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/wm9712.c", i32 113, i32 1}
!32 = !{ptr @__UNIQUE_ID_coordtype245, !31, !"__UNIQUE_ID_coordtype245", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_coord246, !34, !"__UNIQUE_ID_coord246", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/wm9712.c", i32 114, i32 1}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/wm9712.c", i32 452, i32 10}
!37 = !{ptr @wm9712_codec, !38, !"wm9712_codec", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/wm9712.c", i32 450, i32 25}
!39 = !{ptr @__ksymtab_wm9712_codec, !40, !"__ksymtab_wm9712_codec", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/wm9712.c", i32 461, i32 1}
!41 = !{ptr @__UNIQUE_ID_author256, !42, !"__UNIQUE_ID_author256", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/wm9712.c", i32 464, i32 1}
!43 = !{ptr @__UNIQUE_ID_description257, !44, !"__UNIQUE_ID_description257", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/wm9712.c", i32 465, i32 1}
!45 = !{ptr @__UNIQUE_ID_file258, !46, !"__UNIQUE_ID_file258", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/wm9712.c", i32 466, i32 1}
!47 = !{ptr @__UNIQUE_ID_license259, !46, !"__UNIQUE_ID_license259", i1 false, i1 false}
!48 = !{ptr @pil, !49, !"pil", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/wm9712.c", i32 51, i32 12}
!50 = !{ptr @five_wire, !51, !"five_wire", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/wm9712.c", i32 85, i32 12}
!52 = !{ptr @mask, !53, !"mask", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/wm9712.c", i32 102, i32 12}
!54 = !{ptr @coord, !55, !"coord", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/wm9712.c", i32 112, i32 12}
!56 = !{ptr @__param_str_rpu, !1, !"__param_str_rpu", i1 false, i1 false}
!57 = !{ptr @rpu, !58, !"rpu", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/wm9712.c", i32 37, i32 12}
!59 = !{ptr @__param_str_pil, !6, !"__param_str_pil", i1 false, i1 false}
!60 = !{ptr @__param_str_pressure, !11, !"__param_str_pressure", i1 false, i1 false}
!61 = !{ptr @pressure, !62, !"pressure", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/wm9712.c", i32 60, i32 12}
!63 = !{ptr @__param_str_delay, !16, !"__param_str_delay", i1 false, i1 false}
!64 = !{ptr @delay, !65, !"delay", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/wm9712.c", i32 76, i32 12}
!66 = !{ptr @__param_str_five_wire, !21, !"__param_str_five_wire", i1 false, i1 false}
!67 = !{ptr @__param_str_mask, !26, !"__param_str_mask", i1 false, i1 false}
!68 = !{ptr @__param_str_coord, !31, !"__param_str_coord", i1 false, i1 false}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/wm9712.c", i32 283, i32 4}
!71 = !{ptr @.str.2, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @wm9712_poll_sample.__UNIQUE_ID_ddebug253, !70, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!75 = !{ptr @.str.5, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/wm9712.c", i32 293, i32 3}
!77 = !{ptr @wm9712_poll_sample.__UNIQUE_ID_ddebug254, !76, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!78 = !{ptr @delay_table, !79, !"delay_table", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/wm9712.c", i32 119, i32 18}
!80 = !{ptr @.str.6, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/wm9712.c", i32 347, i32 4}
!82 = !{ptr @wm9712_poll_coord.__UNIQUE_ID_ddebug255, !81, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!83 = !{ptr @.str.7, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/wm9712.c", i32 160, i32 3}
!85 = !{ptr @.str.8, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @wm9712_phy_init.__UNIQUE_ID_ddebug247, !84, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!87 = !{ptr @.str.9, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/touchscreen/wm9712.c", i32 167, i32 3}
!89 = !{ptr @wm9712_phy_init.__UNIQUE_ID_ddebug248, !88, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!90 = !{ptr @.str.10, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/wm9712.c", i32 170, i32 4}
!92 = !{ptr @.str.11, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.12, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @wm9712_phy_init._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @wm9712_phy_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.13, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/wm9712.c", i32 179, i32 3}
!98 = !{ptr @wm9712_phy_init.__UNIQUE_ID_ddebug249, !97, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!99 = !{ptr @.str.14, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/wm9712.c", i32 182, i32 3}
!101 = !{ptr @wm9712_phy_init.__UNIQUE_ID_ddebug250, !100, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!102 = !{ptr @.str.15, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/wm9712.c", i32 189, i32 3}
!104 = !{ptr @wm9712_phy_init.__UNIQUE_ID_ddebug251, !103, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!105 = !{ptr @.str.16, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/wm9712.c", i32 194, i32 2}
!107 = !{ptr @wm9712_phy_init.__UNIQUE_ID_ddebug252, !106, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2148963451, i64 2148963456, i64 2148963469, i64 2148963513, i64 2148963547, i64 2148963568}
