; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv6110.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv6110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stv6110_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stv6110_attach\09\09\09\09"
module asm "\09.long\09__crc_stv6110_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv6110_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv6110_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv6110_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv6110_config = type { i8, i32, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.stv6110_priv = type { i32, ptr, i32, i8, i8, [8 x i8] }

@__const.stv6110_attach.reg0 = private unnamed_addr constant [9 x i8] c"\00\07\11\DC\85\17\01\E6\1E", align 1
@stv6110_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"ST STV6110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 0, i32 0 }, ptr @stv6110_release, ptr @stv6110_init, ptr @stv6110_sleep, ptr null, ptr null, ptr @stv6110_set_params, ptr null, ptr null, ptr @stv6110_get_frequency, ptr @stv6110_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv6110_set_frequency, ptr @stv6110_set_bandwidth }, [36 x i8] zeroinitializer }, align 32
@stv6110_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016STV6110 attached on addr=%x!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv6110_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/stv6110.c\00", [58 x i8] zeroinitializer }, align 32
@stv6110_attach._entry_ptr = internal global ptr @stv6110_attach._entry, section ".printk_index", align 4
@__kstrtab_stv6110_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv6110_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv6110_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv6110_attach to i32), ptr @__kstrtab_stv6110_attach, ptr @__kstrtabns_stv6110_attach }, section "___ksymtab+stv6110_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"stv6110.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"stv6110.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"stv6110.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [38 x i8] c"stv6110.description=ST STV6110 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [33 x i8] c"stv6110.author=Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"stv6110.file=drivers/media/dvb-frontends/stv6110\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"stv6110.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stv6110_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stv6110_write_regs\00", [45 x i8] zeroinitializer }, align 32
@stv6110_write_regs._entry_ptr = internal global ptr @stv6110_write_regs._entry, section ".printk_index", align 4
@stv6110_write_regs._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: i2c wr: len=%d is too big!\0A\00", [62 x i8] zeroinitializer }, align 32
@stv6110_write_regs._entry_ptr.7 = internal global ptr @stv6110_write_regs._entry.5, section ".printk_index", align 4
@stv6110_write_regs._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: i2c error\0A\00", [47 x i8] zeroinitializer }, align 32
@stv6110_write_regs._entry_ptr.11 = internal global ptr @stv6110_write_regs._entry.9, section ".printk_index", align 4
@stv6110_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv6110_read_regs\00", [46 x i8] zeroinitializer }, align 32
@stv6110_read_regs._entry_ptr = internal global ptr @stv6110_read_regs._entry, section ".printk_index", align 4
@stv6110_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s, freq=%d kHz, mclk=%d Hz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stv6110_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@stv6110_set_frequency._entry_ptr = internal global ptr @stv6110_set_frequency._entry, section ".printk_index", align 4
@stv6110_set_frequency._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s, stat1=%x, lo_freq=%d kHz, vco_frec=%d kHz\0A\00", [47 x i8] zeroinitializer }, align 32
@stv6110_set_frequency._entry_ptr.17 = internal global ptr @stv6110_set_frequency._entry.15, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"stv6110_tuner_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 361, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 426, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 22, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 67, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 70, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 87, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 120, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 255, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [41 x i8] c"../drivers/media/dvb-frontends/stv6110.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 330, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_stv6110_attach, ptr @__param_debug, ptr @stv6110_attach._entry, ptr @stv6110_attach._entry_ptr, ptr @stv6110_read_regs._entry, ptr @stv6110_read_regs._entry_ptr, ptr @stv6110_set_frequency._entry, ptr @stv6110_set_frequency._entry.15, ptr @stv6110_set_frequency._entry_ptr, ptr @stv6110_set_frequency._entry_ptr.17, ptr @stv6110_write_regs._entry, ptr @stv6110_write_regs._entry.5, ptr @stv6110_write_regs._entry.9, ptr @stv6110_write_regs._entry_ptr, ptr @stv6110_write_regs._entry_ptr.11, ptr @stv6110_write_regs._entry_ptr.7, ptr @stv6110_tuner_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110_write_regs._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110_write_regs._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110_set_frequency._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stv6110_attach(ptr noundef %fe, ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %reg0 = alloca [9 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %reg0) #5
  %0 = call ptr @memcpy(ptr %reg0, ptr @__const.stv6110_attach.reg0, i32 9)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config, align 4
  %conv = zext i8 %4 to i16
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 9, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg0, ptr %buf, align 4
  %arrayidx = getelementptr inbounds [9 x i8], ptr %reg0, i32 0, i32 2
  %clk_div = getelementptr inbounds %struct.stv6110_config, ptr %config, i32 0, i32 3
  %9 = ptrtoint ptr %clk_div to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clk_div, align 1
  %shl = shl i8 %10, 6
  %or = or i8 %shl, 17
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or, ptr %arrayidx, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 %13(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call10 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg, i32 noundef 1) #5
  %14 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.end.if.end18_crit_edge, label %if.then14

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call i32 %15(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 1
  br i1 %cmp.not, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 24) #8
  %cmp23 = icmp eq ptr %call7.i.i, null
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %config, align 4
  %conv28 = zext i8 %18 to i32
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv28, ptr %call7.i.i, align 8
  %i2c30 = getelementptr inbounds %struct.stv6110_priv, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %i2c30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %i2c, ptr %i2c30, align 4
  %mclk = getelementptr inbounds %struct.stv6110_config, ptr %config, i32 0, i32 1
  %21 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk, align 4
  %mclk31 = getelementptr inbounds %struct.stv6110_priv, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %mclk31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mclk31, align 8
  %24 = ptrtoint ptr %clk_div to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %clk_div, align 1
  %clk_div33 = getelementptr inbounds %struct.stv6110_priv, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %clk_div33 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %clk_div33, align 4
  %gain = getelementptr inbounds %struct.stv6110_config, ptr %config, i32 0, i32 2
  %27 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %gain, align 4
  %gain34 = getelementptr inbounds %struct.stv6110_priv, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %gain34 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %gain34, align 1
  %regs = getelementptr inbounds %struct.stv6110_priv, ptr %call7.i.i, i32 0, i32 5
  %arrayidx35 = getelementptr inbounds [9 x i8], ptr %reg0, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %arrayidx35, align 1
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %regs, align 2
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %33 = call ptr @memcpy(ptr %tuner_ops, ptr @stv6110_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %34 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end26 ], [ null, %if.end18.cleanup_crit_edge ], [ null, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %reg0) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stv6110_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %regs = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 509430697044338206, ptr %regs, align 2
  %mclk = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mclk, align 4
  %div = udiv i32 %4, 1000000
  %div.tr = trunc i32 %div to i8
  %5 = shl i8 %div.tr, 3
  %conv8 = xor i8 %5, -121
  store i8 %conv8, ptr %regs, align 2
  %arrayidx10 = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 1
  %clk_div = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk_div to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clk_div, align 4
  %shl15 = shl i8 %7, 6
  %or19 = or i8 %shl15, 17
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or19, ptr %arrayidx10, align 1
  tail call fastcc void @stv6110_write_regs(ptr noundef %fe, ptr noundef %regs, i32 noundef 0, i32 noundef 8)
  tail call void @msleep(i32 noundef 1) #5
  %call23 = tail call i32 @stv6110_set_bandwidth(ptr noundef %fe, i32 noundef 72000000)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %reg = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg, align 1
  call fastcc void @stv6110_write_regs(ptr noundef %fe, ptr noundef nonnull %reg, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110_set_params(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %symbol_rate, align 4
  %rolloff = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rolloff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 25, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp3.i = icmp eq i32 %3, 1
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 20, i32 %switch.select.i
  %mul.i = mul i32 %switch.select4.i, %1
  %div.i = udiv i32 %mul.i, 100
  %add.i = add i32 %div.i, %1
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %call1 = tail call i32 @stv6110_set_frequency(ptr noundef %fe, i32 noundef %5)
  %call2 = tail call i32 @stv6110_set_bandwidth(ptr noundef %fe, i32 noundef %add.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110_get_frequency(ptr noundef %fe, ptr nocapture noundef writeonly %frequency) #0 align 64 {
entry:
  %reg.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %regs = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %regs) #5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %regs, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %conv2.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = load i32, ptr %1, align 4
  %conv6.i = trunc i32 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 8, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %regs, ptr %buf10.i, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %18(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %i2c.i = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end.i.if.end24.i_crit_edge, label %do.body.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.body.i:                                        ; preds = %if.end.i
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not.i = icmp eq i32 %21, 0
  br i1 %tobool17.not.i, label %do.body.i.if.end24.i_crit_edge, label %do.end.i

do.body.i.if.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %do.body.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge
  %22 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool27.not.i = icmp eq ptr %23, null
  br i1 %tobool27.not.i, label %if.end24.i.stv6110_read_regs.exit_crit_edge, label %if.then28.i

if.end24.i.stv6110_read_regs.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv6110_read_regs.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31.i = call i32 %23(ptr noundef %fe, i32 noundef 0) #5
  br label %stv6110_read_regs.exit

stv6110_read_regs.exit:                           ; preds = %if.then28.i, %if.end24.i.stv6110_read_regs.exit_crit_edge
  %arrayidx.i = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 0
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %regs, align 8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  %arrayidx = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %28 to i32
  %and = shl nuw nsw i32 %conv, 8
  %shl = and i32 %and, 3840
  %arrayidx3 = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3, align 2
  %conv4 = zext i8 %30 to i32
  %add = or i32 %shl, %conv4
  %31 = lshr i32 %conv, 6
  %32 = lshr i32 %conv, 4
  %and13 = and i32 %32, 1
  %mclk = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mclk, align 4
  %div = udiv i32 %34, 1000
  %mul = mul i32 %add, %div
  %add14 = add nuw nsw i32 %and13, %31
  %div1626 = lshr i32 %mul, %add14
  %div1727 = lshr i32 %div1626, 2
  %35 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div1727, ptr %frequency, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %regs) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110_get_bandwidth(ptr noundef %fe, ptr nocapture noundef writeonly %bandwidth) #0 align 64 {
entry:
  %reg.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %regs = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %regs) #5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %regs, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %conv2.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = load i32, ptr %1, align 4
  %conv6.i = trunc i32 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 8, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %regs, ptr %buf10.i, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %18(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %i2c.i = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end.i.if.end24.i_crit_edge, label %do.body.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.body.i:                                        ; preds = %if.end.i
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not.i = icmp eq i32 %21, 0
  br i1 %tobool17.not.i, label %do.body.i.if.end24.i_crit_edge, label %do.end.i

do.body.i.if.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %do.body.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge
  %22 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool27.not.i = icmp eq ptr %23, null
  br i1 %tobool27.not.i, label %if.end24.i.stv6110_read_regs.exit_crit_edge, label %if.then28.i

if.end24.i.stv6110_read_regs.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv6110_read_regs.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31.i = call i32 %23(ptr noundef %fe, i32 noundef 0) #5
  br label %stv6110_read_regs.exit

stv6110_read_regs.exit:                           ; preds = %if.then28.i, %if.end24.i.stv6110_read_regs.exit_crit_edge
  %arrayidx.i = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 0
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %regs, align 8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  %arrayidx = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 2
  %29 = and i8 %28, 31
  %narrow = add nuw nsw i8 %29, 5
  %add = zext i8 %narrow to i32
  %mul = mul nuw nsw i32 %add, 2000000
  %30 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %bandwidth, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %regs) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110_set_frequency(ptr noundef %fe, i32 noundef %frequency) #0 align 64 {
entry:
  %result_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result_freq) #5
  %2 = ptrtoint ptr %result_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %result_freq, align 4, !annotation !61
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mclk = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %frequency, i32 noundef %5) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %regs = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regs, align 2
  %8 = and i8 %7, 7
  %mclk5 = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mclk5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk5, align 4
  %div = udiv i32 %10, 1000000
  %div.tr = trunc i32 %div to i8
  %11 = shl i8 %div.tr, 3
  %12 = or i8 %11, %8
  %conv10 = xor i8 %12, -128
  store i8 %conv10, ptr %regs, align 2
  %arrayidx12 = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %15 = and i8 %14, -16
  %gain = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %gain, align 1
  %18 = and i8 %17, 15
  %or21198 = or i8 %18, %15
  store i8 %or21198, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023001, i32 %frequency)
  %cmp = icmp ult i32 %frequency, 1023001
  br i1 %cmp, label %do.end3.if.end35_crit_edge, label %if.else

do.end3.if.end35_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.else:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300001, i32 %frequency)
  %cmp25 = icmp ult i32 %frequency, 1300001
  br i1 %cmp25, label %if.else.if.end35_crit_edge, label %if.else28

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2046001, i32 %frequency)
  %cmp29 = icmp ult i32 %frequency, 2046001
  %. = select i1 %cmp29, i8 0, i8 32
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %if.else.if.end35_crit_edge, %do.end3.if.end35_crit_edge
  %p.0 = phi i32 [ 1, %do.end3.if.end35_crit_edge ], [ 1, %if.else.if.end35_crit_edge ], [ 0, %if.else28 ]
  %presc.0 = phi i8 [ 0, %do.end3.if.end35_crit_edge ], [ 32, %if.else.if.end35_crit_edge ], [ %., %if.else28 ]
  %arrayidx37 = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 3
  %p.0.tr = trunc i32 %p.0 to i8
  %19 = shl nuw nsw i8 %p.0.tr, 4
  %or56 = or i8 %19, %presc.0
  %shl58 = shl nuw nsw i32 2, %p.0
  %mul = mul nuw nsw i32 %shl58, 10
  %div62 = udiv i32 %10, 100000
  %div76202 = lshr i32 %div62, 1
  %div65201.1 = lshr i32 %div62, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div65201.1, i32 %mul)
  %cmp.i.1 = icmp ugt i32 %div65201.1, %mul
  %sub.i.1 = sub nsw i32 %div65201.1, %mul
  %sub1.i.1 = sub nsw i32 %mul, %div65201.1
  %retval.0.i.1 = select i1 %cmp.i.1, i32 %sub.i.1, i32 %sub1.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div76202, i32 %mul)
  %cmp.i203.1 = icmp ugt i32 %div76202, %mul
  %sub.i204.1 = sub nsw i32 %div76202, %mul
  %sub1.i205.1 = sub nsw i32 %mul, %div76202
  %retval.0.i206.1 = select i1 %cmp.i203.1, i32 %sub.i204.1, i32 %sub1.i205.1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.1, i32 %retval.0.i206.1)
  %cmp68.1 = icmp slt i32 %retval.0.i.1, %retval.0.i206.1
  %spec.select.1 = zext i1 %cmp68.1 to i32
  %add74.1 = select i1 %cmp68.1, i32 2, i32 1
  %div76202.1 = lshr i32 %div62, %add74.1
  %div65201.2 = lshr i32 %div62, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div65201.2, i32 %mul)
  %cmp.i.2 = icmp ugt i32 %div65201.2, %mul
  %sub.i.2 = sub nsw i32 %div65201.2, %mul
  %sub1.i.2 = sub nsw i32 %mul, %div65201.2
  %retval.0.i.2 = select i1 %cmp.i.2, i32 %sub.i.2, i32 %sub1.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div76202.1, i32 %mul)
  %cmp.i203.2 = icmp ugt i32 %div76202.1, %mul
  %sub.i204.2 = sub nsw i32 %div76202.1, %mul
  %sub1.i205.2 = sub nsw i32 %mul, %div76202.1
  %retval.0.i206.2 = select i1 %cmp.i203.2, i32 %sub.i204.2, i32 %sub1.i205.2
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.2, i32 %retval.0.i206.2)
  %cmp68.2 = icmp slt i32 %retval.0.i.2, %retval.0.i206.2
  %spec.select.2 = select i1 %cmp68.2, i32 2, i32 %spec.select.1
  %add74.2 = add nuw nsw i32 %spec.select.2, 1
  %div76202.2 = lshr i32 %div62, %add74.2
  %div65201.3 = lshr i32 %div62, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div65201.3, i32 %mul)
  %cmp.i.3 = icmp ugt i32 %div65201.3, %mul
  %sub.i.3 = sub nsw i32 %div65201.3, %mul
  %sub1.i.3 = sub nsw i32 %mul, %div65201.3
  %retval.0.i.3 = select i1 %cmp.i.3, i32 %sub.i.3, i32 %sub1.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %div76202.2, i32 %mul)
  %cmp.i203.3 = icmp ugt i32 %div76202.2, %mul
  %sub.i204.3 = sub nsw i32 %div76202.2, %mul
  %sub1.i205.3 = sub nsw i32 %mul, %div76202.2
  %retval.0.i206.3 = select i1 %cmp.i203.3, i32 %sub.i204.3, i32 %sub1.i205.3
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.3, i32 %retval.0.i206.3)
  %cmp68.3 = icmp slt i32 %retval.0.i.3, %retval.0.i206.3
  %spec.select.3 = select i1 %cmp68.3, i32 3, i32 %spec.select.2
  %add78 = add nuw nsw i32 %spec.select.3, 1
  %20 = add nuw nsw i32 %p.0, 1
  %21 = add nuw nsw i32 %20, %add78
  %div83199 = lshr i32 %10, %21
  %mul84 = mul i32 %frequency, 1000
  %shr = lshr i32 %div83199, 1
  %add85 = add i32 %shr, %mul84
  %div86 = udiv i32 %add85, %div83199
  %r_div_opt.0.tr = trunc i32 %spec.select.3 to i8
  %22 = shl nuw i8 %r_div_opt.0.tr, 6
  %conv98 = or i8 %22, %or56
  %shr104 = lshr i32 %div86, 8
  %23 = trunc i32 %shr104 to i8
  %24 = and i8 %23, 15
  %conv110 = or i8 %24, %conv98
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv110, ptr %arrayidx37, align 1
  %conv112 = trunc i32 %div86 to i8
  %arrayidx114 = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv112, ptr %arrayidx114, align 2
  %arrayidx116 = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 5
  %27 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx116, align 1
  %29 = or i8 %28, 4
  store i8 %29, ptr %arrayidx116, align 1
  tail call fastcc void @stv6110_write_regs(ptr noundef %fe, ptr noundef %regs, i32 noundef 0, i32 noundef 8)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end35
  %i.0210 = phi i32 [ 0, %if.end35 ], [ %inc131, %while.body.while.body_crit_edge ]
  %call128 = tail call fastcc i32 @stv6110_read_reg(ptr noundef %fe)
  %and129 = and i32 %call128, 4
  tail call void @msleep(i32 noundef 1) #5
  %inc131 = add nuw nsw i32 %i.0210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0210)
  %cmp123 = icmp ugt i32 %i.0210, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %cmp126.not = icmp eq i32 %and129, 0
  %or.cond = select i1 %cmp123, i1 true, i1 %cmp126.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %call132 = tail call fastcc i32 @stv6110_read_reg(ptr noundef %fe)
  %call134 = call i32 @stv6110_get_frequency(ptr noundef %fe, ptr noundef nonnull %result_freq)
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool142.not = icmp eq i32 %30, 0
  br i1 %tobool142.not, label %while.end.do.end152_crit_edge, label %do.end146

while.end.do.end152_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end152

do.end146:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %mclk5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mclk5, align 4
  %div136 = udiv i32 %32, 1000
  %div139200 = lshr i32 %div136, %add78
  %mul140 = mul i32 %div139200, %div86
  %conv148 = and i32 %call132, 255
  %33 = ptrtoint ptr %result_freq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %result_freq, align 4
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %conv148, i32 noundef %34, i32 noundef %mul140) #9
  br label %do.end152

do.end152:                                        ; preds = %do.end146, %while.end.do.end152_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result_freq) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv6110_set_bandwidth(ptr noundef %fe, i32 noundef %bandwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72000001, i32 %bandwidth)
  %cmp = icmp ugt i32 %bandwidth, 72000001
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %bandwidth)
  %cmp2 = icmp ult i32 %bandwidth, 10000000
  br i1 %cmp2, label %if.else.if.end7_crit_edge, label %if.else4

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %div6 = udiv i32 %bandwidth, 2000000
  %2 = trunc i32 %div6 to i8
  %3 = add nuw nsw i8 %2, 27
  %phi.cast = and i8 %3, 31
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %r8.0 = phi i8 [ %phi.cast, %if.else4 ], [ 31, %entry.if.end7_crit_edge ], [ 0, %if.else.if.end7_crit_edge ]
  %arrayidx = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %6 = and i8 %5, -96
  %conv15 = or i8 %6, %r8.0
  store i8 %conv15, ptr %arrayidx, align 2
  tail call fastcc void @stv6110_write_regs(ptr noundef %fe, ptr noundef %arrayidx, i32 noundef 4, i32 noundef 1)
  %arrayidx19 = getelementptr %struct.stv6110_priv, ptr %1, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx19, align 1
  %9 = or i8 %8, 2
  store i8 %9, ptr %arrayidx19, align 1
  tail call fastcc void @stv6110_write_regs(ptr noundef %fe, ptr noundef %arrayidx19, i32 noundef 5, i32 noundef 1)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end7
  %i.056 = phi i32 [ 0, %if.end7 ], [ %inc, %while.body.while.body_crit_edge ]
  %call31 = tail call fastcc i32 @stv6110_read_reg(ptr noundef %fe)
  %and32 = and i32 %call31, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  %inc = add nuw nsw i32 %i.056, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.056)
  %cmp26 = icmp ugt i32 %i.056, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp29.not = icmp eq i32 %and32, 0
  %or.cond = select i1 %cmp26, i1 true, i1 %cmp29.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 2
  %13 = or i8 %12, 64
  store i8 %13, ptr %arrayidx, align 2
  tail call fastcc void @stv6110_write_regs(ptr noundef %fe, ptr noundef %arrayidx, i32 noundef 4, i32 noundef 1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stv6110_write_regs(ptr noundef %fe, ptr nocapture noundef readonly %buf, i32 noundef %start, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %cmdbuf = alloca [64 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmdbuf) #5
  %2 = call ptr @memset(ptr %cmdbuf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = trunc i32 %len to i16
  %conv2 = add i16 %9, 1
  %10 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv2, ptr %len1, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmdbuf, ptr %buf3, align 4
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.end

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry.if.end15_crit_edge
  %add16 = add i32 %len, %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add16)
  %cmp17 = icmp sgt i32 %add16, 8
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %arrayidx = getelementptr inbounds [64 x i8], ptr %cmdbuf, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %len)
  %conv21 = trunc i32 %start to i8
  %14 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21, ptr %cmdbuf, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %if.end20.if.end28_crit_edge, label %if.then24

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 %16(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end20.if.end28_crit_edge
  %i2c = getelementptr inbounds %struct.stv6110_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %call29 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 1
  br i1 %cmp30.not, label %if.end28.if.end44_crit_edge, label %do.body33

if.end28.if.end44_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.body33:                                        ; preds = %if.end28
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool34.not = icmp eq i32 %19, 0
  br i1 %tobool34.not, label %do.body33.if.end44_crit_edge, label %do.end38

do.body33.if.end44_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %do.body33.if.end44_crit_edge, %if.end28.if.end44_crit_edge
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool47.not = icmp eq ptr %21, null
  br i1 %tobool47.not, label %if.end44.cleanup_crit_edge, label %if.then48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = call i32 %21(ptr noundef %fe, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end44.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmdbuf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv6110_read_reg(ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %reg.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 4
  %conv2.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = load i32, ptr %2, align 4
  %conv6.i = trunc i32 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf10.i, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %18(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %i2c.i = getelementptr inbounds %struct.stv6110_priv, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %if.end.i.if.end24.i_crit_edge, label %do.body.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.body.i:                                        ; preds = %if.end.i
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not.i = icmp eq i32 %21, 0
  br i1 %tobool17.not.i, label %do.body.i.if.end24.i_crit_edge, label %do.end.i

do.body.i.if.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %do.body.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge
  %22 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool27.not.i = icmp eq ptr %23, null
  br i1 %tobool27.not.i, label %if.end24.i.stv6110_read_regs.exit_crit_edge, label %if.then28.i

if.end24.i.stv6110_read_regs.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv6110_read_regs.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31.i = call i32 %23(ptr noundef %fe, i32 noundef 0) #5
  br label %stv6110_read_regs.exit

stv6110_read_regs.exit:                           ; preds = %if.then28.i, %if.end24.i.stv6110_read_regs.exit_crit_edge
  %arrayidx.i = getelementptr %struct.stv6110_priv, ptr %2, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf, align 1
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf, align 1
  %conv = zext i8 %28 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #5
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 426, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @stv6110_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @stv6110_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_stv6110_attach, !7, !"__ksymtab_stv6110_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 430, i32 1}
!8 = !{ptr @__param_debug, !9, !"__param_debug", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 432, i32 1}
!10 = !{ptr @__UNIQUE_ID_debugtype290, !9, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug291, !12, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 433, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 435, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 436, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 437, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 22, i32 12}
!22 = !{ptr @stv6110_tuner_ops, !23, !"stv6110_tuner_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 361, i32 35}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 67, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stv6110_write_regs._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @stv6110_write_regs._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 70, i32 3}
!31 = !{ptr @stv6110_write_regs._entry.5, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stv6110_write_regs._entry_ptr.7, !30, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 87, i32 3}
!36 = !{ptr @stv6110_write_regs._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @stv6110_write_regs._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 120, i32 3}
!40 = !{ptr @stv6110_read_regs._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @stv6110_read_regs._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 255, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @stv6110_set_frequency._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @stv6110_set_frequency._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/stv6110.c", i32 330, i32 2}
!49 = !{ptr @stv6110_set_frequency._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stv6110_set_frequency._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__param_str_debug, !9, !"__param_str_debug", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
