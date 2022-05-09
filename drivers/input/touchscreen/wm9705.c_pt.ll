; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/wm9705.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wm9705.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm9705_codec\22, \22a\22\09"
module asm "\09.weak\09__crc_wm9705_codec\09\09\09\09"
module asm "\09.long\09__crc_wm9705_codec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm9705_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22wm9705_codec\22\09\09\09\09\09"
module asm "__kstrtabns_wm9705_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.wm97xx_codec_drv = type { i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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

@__param_str_pil = internal constant [14 x i8] c"wm97xx_ts.pil\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pil = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pil = internal constant %struct.kernel_param { ptr @__param_str_pil, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @pil } }, section "__param", align 4
@__UNIQUE_ID_piltype233 = internal constant [27 x i8] c"wm97xx_ts.parmtype=pil:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pil234 = internal constant [62 x i8] c"wm97xx_ts.parm=pil:Set current used for pressure measurement.\00", section ".modinfo", align 1
@__param_str_pressure = internal constant [19 x i8] c"wm97xx_ts.pressure\00", align 1
@pressure = internal global { i32, [28 x i8] } { i32 192, [28 x i8] zeroinitializer }, align 32
@__param_pressure = internal constant %struct.kernel_param { ptr @__param_str_pressure, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @pressure } }, section "__param", align 4
@__UNIQUE_ID_pressuretype235 = internal constant [32 x i8] c"wm97xx_ts.parmtype=pressure:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pressure236 = internal constant [64 x i8] c"wm97xx_ts.parm=pressure:Set threshold for pressure measurement.\00", section ".modinfo", align 1
@__param_str_delay = internal constant [16 x i8] c"wm97xx_ts.delay\00", align 1
@delay = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_delay = internal constant %struct.kernel_param { ptr @__param_str_delay, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @delay } }, section "__param", align 4
@__UNIQUE_ID_delaytype237 = internal constant [29 x i8] c"wm97xx_ts.parmtype=delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_delay238 = internal constant [43 x i8] c"wm97xx_ts.parm=delay:Set adc sample delay.\00", section ".modinfo", align 1
@__param_str_pdd = internal constant [14 x i8] c"wm97xx_ts.pdd\00", align 1
@pdd = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_pdd = internal constant %struct.kernel_param { ptr @__param_str_pdd, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @pdd } }, section "__param", align 4
@__UNIQUE_ID_pddtype239 = internal constant [27 x i8] c"wm97xx_ts.parmtype=pdd:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pdd240 = internal constant [55 x i8] c"wm97xx_ts.parm=pdd:Set pen detect comparator threshold\00", section ".modinfo", align 1
@__param_str_mask = internal constant [15 x i8] c"wm97xx_ts.mask\00", align 1
@mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mask = internal constant %struct.kernel_param { ptr @__param_str_mask, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @mask } }, section "__param", align 4
@__UNIQUE_ID_masktype241 = internal constant [28 x i8] c"wm97xx_ts.parmtype=mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mask242 = internal constant [43 x i8] c"wm97xx_ts.parm=mask:Set adc mask function.\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm9705\00", [25 x i8] zeroinitializer }, align 32
@wm9705_codec = dso_local global { %struct.wm97xx_codec_drv, [60 x i8] } { %struct.wm97xx_codec_drv { i16 19461, ptr @.str, ptr @wm9705_poll_sample, ptr @wm9705_poll_touch, ptr @wm9705_acc_enable, ptr @wm9705_phy_init, ptr @wm9705_dig_enable, ptr @wm9705_dig_restore, ptr @wm9705_aux_prepare }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_wm9705_codec = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm9705_codec = external dso_local constant [0 x i8], align 1
@__ksymtab_wm9705_codec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm9705_codec to i32), ptr @__kstrtab_wm9705_codec, ptr @__kstrtabns_wm9705_codec }, section "___ksymtab_gpl+wm9705_codec", align 4
@__UNIQUE_ID_author250 = internal constant [53 x i8] c"wm97xx_ts.author=Liam Girdwood <lrg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [49 x i8] c"wm97xx_ts.description=WM9705 Touch Screen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [51 x i8] c"wm97xx_ts.file=drivers/input/touchscreen/wm97xx-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [22 x i8] c"wm97xx_ts.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wm9705_poll_sample.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm97xx_ts\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm9705_poll_sample\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/wm9705.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc sample timeout\00", [45 x i8] zeroinitializer }, align 32
@wm9705_poll_sample.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"adc wrong sample, wanted %x got %x\00", [61 x i8] zeroinitializer }, align 32
@delay_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 21, i32 42, i32 84, i32 167, i32 333, i32 667, i32 1000, i32 1333, i32 2000, i32 2667, i32 3333, i32 4000, i32 4667, i32 5333, i32 6000, i32 0], [32 x i8] zeroinitializer }, align 32
@wm9705_phy_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm9705_phy_init\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"setting pressure measurement current to 400uA.\00", [49 x i8] zeroinitializer }, align 32
@wm9705_phy_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.8, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"setting pressure measurement current to 200uA.\00", [49 x i8] zeroinitializer }, align 32
@wm9705_phy_init.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.9, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"supplied delay out of range.\00", [35 x i8] zeroinitializer }, align 32
@wm9705_phy_init.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.10, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setting adc sample delay to %d u Secs.\00", [57 x i8] zeroinitializer }, align 32
@wm9705_phy_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.11, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"setting pdd to Vmid/%d\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [4 x i8] c"pil\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 38, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 47, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 63, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [4 x i8] c"pdd\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 77, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 94, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 331, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"wm9705_codec\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 329, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 243, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 253, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"delay_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 101, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 147, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 150, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 158, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 164, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [38 x i8] c"../drivers/input/touchscreen/wm9705.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 169, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_delay238, ptr @__UNIQUE_ID_delaytype237, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_mask242, ptr @__UNIQUE_ID_masktype241, ptr @__UNIQUE_ID_pdd240, ptr @__UNIQUE_ID_pddtype239, ptr @__UNIQUE_ID_pil234, ptr @__UNIQUE_ID_piltype233, ptr @__UNIQUE_ID_pressure236, ptr @__UNIQUE_ID_pressuretype235, ptr @__ksymtab_wm9705_codec, ptr @__param_delay, ptr @__param_mask, ptr @__param_pdd, ptr @__param_pil, ptr @__param_pressure, ptr @pil, ptr @pressure, ptr @delay, ptr @pdd, ptr @mask, ptr @.str, ptr @wm9705_codec, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @delay_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pil to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pressure to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9705_codec to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9705_poll_sample(ptr noundef %wm, i32 noundef %adcsel, ptr nocapture noundef %sample) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @delay, align 4
  %mul = mul i32 %0, 5
  %and = and i32 %adcsel, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #2
  %and4 = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.cleanup89_crit_edge, label %if.end

if.then.cleanup89_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup89

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18

land.lhs.true12:                                  ; preds = %if.end10
  %pre_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pre_sample to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pre_sample, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %land.lhs.true12.if.end18_crit_edge, label %if.then15

land.lhs.true12.if.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %7(i32 noundef %adcsel) #2
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true12.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %and19 = and i32 %adcsel, 28672
  %8 = load i32, ptr @delay, align 4
  %shl = shl i32 %8, 4
  %and20 = and i32 %shl, 240
  %or = or i32 %and20, %and19
  %9 = trunc i32 %or to i16
  %conv22 = or i16 %9, -32768
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %conv22) #2
  %10 = load i32, ptr @delay, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %add.i) #2
  %call23128 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 118) #2
  %and24129 = and i32 %call23128, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24129)
  %tobool25.not130 = icmp eq i32 %and24129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool26.not131 = icmp eq i32 %mul, 0
  %or.cond132 = select i1 %tobool25.not130, i1 true, i1 %tobool26.not131
  br i1 %or.cond132, label %if.end18.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  br label %while.body

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end18.while.body_crit_edge
  %timeout.0133 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %mul, %if.end18.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4509708) #2
  %dec = add i32 %timeout.0133, -1
  %call23 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 118) #2
  %and24 = and i32 %call23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool26.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end18.while.end_crit_edge
  %tobool26.not.lcssa = phi i1 [ %tobool26.not131, %if.end18.while.end_crit_edge ], [ %tobool26.not, %while.body.while.end_crit_edge ]
  br i1 %tobool26.not.lcssa, label %if.then28, label %if.end44

if.then28:                                        ; preds = %while.end
  %arrayidx.i125 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i125, align 4
  %17 = and i16 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool30.not = icmp eq i16 %17, 0
  br i1 %tobool30.not, label %do.body, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #4
  %pen_probably_down32 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 21
  %18 = ptrtoint ptr %pen_probably_down32 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load33 = load i8, ptr %pen_probably_down32, align 4
  %bf.clear34 = and i8 %bf.load33, -33
  store i8 %bf.clear34, ptr %pen_probably_down32, align 4
  br label %cleanup89

do.body:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9705_poll_sample.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9705_poll_sample, %if.then41)) #2
          to label %cleanup89 [label %if.then41], !srcloc !89

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %dev = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9705_poll_sample.__UNIQUE_ID_ddebug248, ptr noundef %20, ptr noundef nonnull @.str.4) #2
  br label %cleanup89

if.end44:                                         ; preds = %while.end
  %call45 = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #2
  %21 = ptrtoint ptr %sample to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call45, ptr %sample, align 4
  %22 = ptrtoint ptr %mach_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mach_ops, align 4
  %tobool47.not = icmp eq ptr %23, null
  br i1 %tobool47.not, label %if.end44.if.end54_crit_edge, label %land.lhs.true48

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end54

land.lhs.true48:                                  ; preds = %if.end44
  %post_sample = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %post_sample to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %post_sample, align 4
  %tobool50.not = icmp eq ptr %25, null
  br i1 %tobool50.not, label %land.lhs.true48.if.end54_crit_edge, label %if.then51

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %25(i32 noundef %adcsel) #2
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
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9705_poll_sample.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9705_poll_sample, %if.then70)) #2
          to label %cleanup89 [label %if.then70], !srcloc !89

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #4
  %dev71 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %28 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev71, align 4
  %30 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sample, align 4
  %and73 = and i32 %31, 28672
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9705_poll_sample.__UNIQUE_ID_ddebug249, ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %and19, i32 noundef %and73) #2
  br label %cleanup89

if.end77:                                         ; preds = %if.end54
  %tobool.not.not = xor i1 %tobool.not, true
  %and81 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %or.cond121 = select i1 %tobool.not.not, i1 %tobool82.not, i1 false
  br i1 %or.cond121, label %if.then83, label %if.end77.cleanup89_crit_edge

if.end77.cleanup89_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup89

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #4
  %pen_probably_down84 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 21
  %32 = ptrtoint ptr %pen_probably_down84 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load85 = load i8, ptr %pen_probably_down84, align 4
  %bf.clear86 = and i8 %bf.load85, -33
  store i8 %bf.clear86, ptr %pen_probably_down84, align 4
  br label %cleanup89

cleanup89:                                        ; preds = %if.then83, %if.end77.cleanup89_crit_edge, %if.then70, %do.body58, %if.then41, %do.body, %if.then31, %if.then.cleanup89_crit_edge
  %retval.1 = phi i32 [ 4, %if.then83 ], [ 4, %if.then41 ], [ 4, %if.then31 ], [ 4, %if.then70 ], [ 2, %if.end77.cleanup89_crit_edge ], [ 4, %if.then.cleanup89_crit_edge ], [ 4, %do.body ], [ 4, %do.body58 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9705_poll_touch(ptr noundef %wm, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wm9705_poll_sample(ptr noundef %wm, i32 noundef 36864, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %y = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 1
  %call1 = tail call i32 @wm9705_poll_sample(ptr noundef %wm, i32 noundef 40960, ptr noundef %y)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 2
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %p10 = getelementptr inbounds %struct.wm97xx_data, ptr %data, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end4
  %call6 = tail call i32 @wm9705_poll_sample(ptr noundef %wm, i32 noundef 45056, ptr noundef %p10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 2
  br i1 %cmp7.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  %1 = ptrtoint ptr %p10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 45248, ptr %p10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9705_acc_enable(ptr noundef %wm, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 %7(ptr noundef %wm) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %8 = and i16 %1, -32768
  %9 = load i32, ptr @delay, align 4
  %shl = shl i32 %9, 4
  %and10 = and i32 %shl, 240
  %acc_slot = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 19
  %10 = ptrtoint ptr %acc_slot to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %acc_slot, align 4
  %12 = add i16 %11, 3
  %13 = and i16 %12, 7
  %and12 = zext i16 %13 to i32
  %acc_rate = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 20
  %14 = ptrtoint ptr %acc_rate to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %acc_rate, align 2
  %conv14 = zext i16 %15 to i32
  %and15 = shl nuw nsw i32 %conv14, 8
  %shl16 = and i32 %and15, 768
  %and19 = and i32 %conv14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond = select i1 %tobool20.not, i32 0, i32 240
  %or21 = or i32 %and10, %and12
  %or = or i32 %or21, %shl16
  %or13 = or i32 %or, %cond
  %16 = trunc i32 %or13 to i16
  %17 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  %spec.select.v = select i1 %tobool26.not, i16 3080, i16 15368
  %18 = or i16 %spec.select.v, %8
  %spec.select = or i16 %18, %16
  %19 = or i16 %3, 4096
  br label %if.end47

if.else:                                          ; preds = %entry
  %20 = and i16 %1, -3081
  %21 = and i16 %3, -4097
  %mach_ops41 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 11
  %22 = ptrtoint ptr %mach_ops41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mach_ops41, align 4
  %acc_shutdown = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %acc_shutdown to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %acc_shutdown, align 4
  %tobool42.not = icmp eq ptr %25, null
  br i1 %tobool42.not, label %if.else.if.end47_crit_edge, label %if.then43

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end47

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %25(ptr noundef %wm) #2
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.else.if.end47_crit_edge, %if.end
  %dig1.1 = phi i16 [ %spec.select, %if.end ], [ %20, %if.then43 ], [ %20, %if.else.if.end47_crit_edge ]
  %dig2.0 = phi i16 [ %19, %if.end ], [ %21, %if.then43 ], [ %21, %if.else.if.end47_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ 0, %if.then43 ], [ 0, %if.else.if.end47_crit_edge ]
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %dig1.1) #2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %dig2.0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end47 ], [ %call, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9705_phy_init(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 22, i16 noundef zeroext -32768) #2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 20, i16 noundef zeroext -32768) #2
  %0 = load i32, ptr @pil, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %do.body7 [
    i32 2, label %if.then
    i32 0, label %entry.if.end25_crit_edge
  ]

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9705_phy_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9705_phy_init, %if.then4)) #2
          to label %if.end25 [label %if.then4], !srcloc !89

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %dev = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9705_phy_init.__UNIQUE_ID_ddebug243, ptr noundef %3, ptr noundef nonnull @.str.7) #2
  br label %if.end25

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9705_phy_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9705_phy_init, %if.then19)) #2
          to label %if.end25 [label %if.then19], !srcloc !89

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #4
  %dev20 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %4 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9705_phy_init.__UNIQUE_ID_ddebug244, ptr noundef %5, ptr noundef nonnull @.str.8) #2
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %do.body7, %if.then4, %if.then, %entry.if.end25_crit_edge
  %dig2.0 = phi i32 [ 8320, %if.then4 ], [ 8192, %if.then19 ], [ 8192, %entry.if.end25_crit_edge ], [ 8320, %if.then ], [ 8192, %do.body7 ]
  %6 = load i32, ptr @pil, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool26.not = icmp eq i32 %6, 0
  br i1 %tobool26.not, label %if.then27, label %if.end25.if.end28_crit_edge

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #4
  store i32 0, ptr @pressure, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  %7 = load i32, ptr @delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %8 = icmp ugt i32 %7, 15
  br i1 %8, label %do.body37, label %if.end28.if.end55_crit_edge

if.end28.if.end55_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end55

do.body37:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9705_phy_init.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9705_phy_init, %if.then49)) #2
          to label %do.end53 [label %if.then49], !srcloc !89

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #4
  %dev50 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %9 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9705_phy_init.__UNIQUE_ID_ddebug245, ptr noundef %10, ptr noundef nonnull @.str.9) #2
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body37
  store i32 4, ptr @delay, align 4
  br label %if.end55

if.end55:                                         ; preds = %do.end53, %if.end28.if.end55_crit_edge
  %11 = load i32, ptr @delay, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9705_phy_init.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9705_phy_init, %if.then74)) #2
          to label %do.end78 [label %if.then74], !srcloc !89

if.then74:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #4
  %dev75 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %12 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev75, align 4
  %14 = load i32, ptr @delay, align 4
  %arrayidx = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9705_phy_init.__UNIQUE_ID_ddebug246, ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %16) #2
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %if.end55
  %17 = load i32, ptr @pdd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9705_phy_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9705_phy_init, %if.then95)) #2
          to label %do.end100 [label %if.then95], !srcloc !89

if.then95:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #4
  %dev96 = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 8
  %18 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev96, align 4
  %20 = load i32, ptr @pdd, align 4
  %and97 = and i32 %20, 15
  %sub = sub nsw i32 1, %and97
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9705_phy_init.__UNIQUE_ID_ddebug247, ptr noundef %19, ptr noundef nonnull @.str.11, i32 noundef %sub) #2
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %do.end78
  %and79 = and i32 %17, 15
  %or81 = or i32 %and79, %dig2.0
  %.tr = trunc i32 %11 to i16
  %21 = shl i16 %.tr, 4
  %conv61 = and i16 %21, 240
  %22 = load i32, ptr @mask, align 4
  %and101 = shl i32 %22, 4
  %shl102 = and i32 %and101, 48
  %or104 = or i32 %or81, %shl102
  %conv105 = trunc i32 %or104 to i16
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %conv61) #2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %conv105) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9705_dig_enable(ptr noundef %wm, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %arrayidx3 = getelementptr [3 x i16], ptr %wm, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = or i16 %1, -16384
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %2) #2
  %call = tail call i32 @wm97xx_reg_read(ptr noundef %wm, i16 noundef zeroext 122) #2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %3 = and i16 %1, 16383
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %3) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9705_dig_restore(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.wm97xx, ptr %wm, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext %1) #2
  %arrayidx2 = getelementptr %struct.wm97xx, ptr %wm, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx2, align 2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext %3) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm9705_aux_prepare(ptr noundef %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dig_save = getelementptr inbounds %struct.wm97xx, ptr %wm, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %dig_save, ptr %wm, i32 6)
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 118, i16 noundef zeroext 0) #2
  tail call void @wm97xx_reg_write(ptr noundef %wm, i16 noundef zeroext 120, i16 noundef zeroext -16384) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm97xx_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm97xx_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !59, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__param_pil, !1, !"__param_pil", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/wm9705.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_piltype233, !1, !"__UNIQUE_ID_piltype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_pil234, !4, !"__UNIQUE_ID_pil234", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/wm9705.c", i32 40, i32 1}
!5 = !{ptr @__param_pressure, !6, !"__param_pressure", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/wm9705.c", i32 48, i32 1}
!7 = !{ptr @__UNIQUE_ID_pressuretype235, !6, !"__UNIQUE_ID_pressuretype235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pressure236, !9, !"__UNIQUE_ID_pressure236", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/wm9705.c", i32 49, i32 1}
!10 = !{ptr @__param_delay, !11, !"__param_delay", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/wm9705.c", i32 64, i32 1}
!12 = !{ptr @__UNIQUE_ID_delaytype237, !11, !"__UNIQUE_ID_delaytype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_delay238, !14, !"__UNIQUE_ID_delay238", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/wm9705.c", i32 65, i32 1}
!15 = !{ptr @__param_pdd, !16, !"__param_pdd", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/wm9705.c", i32 78, i32 1}
!17 = !{ptr @__UNIQUE_ID_pddtype239, !16, !"__UNIQUE_ID_pddtype239", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_pdd240, !19, !"__UNIQUE_ID_pdd240", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/wm9705.c", i32 79, i32 1}
!20 = !{ptr @__param_mask, !21, !"__param_mask", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/wm9705.c", i32 95, i32 1}
!22 = !{ptr @__UNIQUE_ID_masktype241, !21, !"__UNIQUE_ID_masktype241", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_mask242, !24, !"__UNIQUE_ID_mask242", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/wm9705.c", i32 96, i32 1}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/wm9705.c", i32 331, i32 10}
!27 = !{ptr @wm9705_codec, !28, !"wm9705_codec", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/wm9705.c", i32 329, i32 25}
!29 = !{ptr @__ksymtab_wm9705_codec, !30, !"__ksymtab_wm9705_codec", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/wm9705.c", i32 340, i32 1}
!31 = !{ptr @__UNIQUE_ID_author250, !32, !"__UNIQUE_ID_author250", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/wm9705.c", i32 343, i32 1}
!33 = !{ptr @__UNIQUE_ID_description251, !34, !"__UNIQUE_ID_description251", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/wm9705.c", i32 344, i32 1}
!35 = !{ptr @__UNIQUE_ID_file252, !36, !"__UNIQUE_ID_file252", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/wm9705.c", i32 345, i32 1}
!37 = !{ptr @__UNIQUE_ID_license253, !36, !"__UNIQUE_ID_license253", i1 false, i1 false}
!38 = !{ptr @pil, !39, !"pil", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/wm9705.c", i32 38, i32 12}
!40 = !{ptr @mask, !41, !"mask", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/wm9705.c", i32 94, i32 12}
!42 = !{ptr @__param_str_pil, !1, !"__param_str_pil", i1 false, i1 false}
!43 = !{ptr @__param_str_pressure, !6, !"__param_str_pressure", i1 false, i1 false}
!44 = !{ptr @pressure, !45, !"pressure", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/wm9705.c", i32 47, i32 12}
!46 = !{ptr @__param_str_delay, !11, !"__param_str_delay", i1 false, i1 false}
!47 = !{ptr @delay, !48, !"delay", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/wm9705.c", i32 63, i32 12}
!49 = !{ptr @__param_str_pdd, !16, !"__param_str_pdd", i1 false, i1 false}
!50 = !{ptr @pdd, !51, !"pdd", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/wm9705.c", i32 77, i32 12}
!52 = !{ptr @__param_str_mask, !21, !"__param_str_mask", i1 false, i1 false}
!53 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/wm9705.c", i32 243, i32 4}
!55 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wm9705_poll_sample.__UNIQUE_ID_ddebug248, !54, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!59 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/wm9705.c", i32 253, i32 3}
!61 = !{ptr @wm9705_poll_sample.__UNIQUE_ID_ddebug249, !60, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!62 = !{ptr @delay_table, !63, !"delay_table", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/wm9705.c", i32 101, i32 18}
!64 = !{ptr @.str.6, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/wm9705.c", i32 147, i32 3}
!66 = !{ptr @.str.7, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @wm9705_phy_init.__UNIQUE_ID_ddebug243, !65, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!68 = !{ptr @.str.8, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/wm9705.c", i32 150, i32 3}
!70 = !{ptr @wm9705_phy_init.__UNIQUE_ID_ddebug244, !69, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!71 = !{ptr @.str.9, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/wm9705.c", i32 158, i32 4}
!73 = !{ptr @wm9705_phy_init.__UNIQUE_ID_ddebug245, !72, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!74 = !{ptr @.str.10, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/wm9705.c", i32 164, i32 2}
!76 = !{ptr @wm9705_phy_init.__UNIQUE_ID_ddebug246, !75, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!77 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/wm9705.c", i32 169, i32 2}
!79 = !{ptr @wm9705_phy_init.__UNIQUE_ID_ddebug247, !78, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148960692, i64 2148960697, i64 2148960710, i64 2148960754, i64 2148960788, i64 2148960809}
