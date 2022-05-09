; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/zl10036.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/zl10036.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zl10036_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_zl10036_attach\09\09\09\09"
module asm "\09.long\09__crc_zl10036_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zl10036_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22zl10036_attach\22\09\09\09\09\09"
module asm "__kstrtabns_zl10036_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.zl10036_state = type { ptr, ptr, i32, i8, i8 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.zl10036_config = type { i8, i32 }

@zl10036_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: no config specified\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10036_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/zl10036.c\00", [58 x i8] zeroinitializer }, align 32
@zl10036_attach._entry_ptr = internal global ptr @zl10036_attach._entry, section ".printk_index", align 4
@zl10036_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: No zl10036 found\0A\00", [40 x i8] zeroinitializer }, align 32
@zl10036_attach._entry_ptr.5 = internal global ptr @zl10036_attach._entry.3, section ".printk_index", align 4
@zl10036_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: tuner initialization failed\0A\00", [61 x i8] zeroinitializer }, align 32
@zl10036_attach._entry_ptr.8 = internal global ptr @zl10036_attach._entry.6, section ".printk_index", align 4
@zl10036_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Zarlink ZL10036\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2119967296, i32 0, i32 0, i32 0, i32 0 }, ptr @zl10036_release, ptr @zl10036_init, ptr @zl10036_sleep, ptr null, ptr null, ptr @zl10036_set_params, ptr null, ptr null, ptr @zl10036_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@zl10036_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: tuner initialization (%s addr=0x%02x) ok\0A\00", [48 x i8] zeroinitializer }, align 32
@zl10036_attach._entry_ptr.11 = internal global ptr @zl10036_attach._entry.9, section ".printk_index", align 4
@__kstrtab_zl10036_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_zl10036_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_zl10036_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zl10036_attach to i32), ptr @__kstrtab_zl10036_attach, ptr @__kstrtabns_zl10036_attach }, section "___ksymtab+zl10036_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"zl10036.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@zl10036_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @zl10036_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"zl10036.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"zl10036.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [39 x i8] c"zl10036.description=DVB ZL10036 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [30 x i8] c"zl10036.author=Tino Reichardt\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [35 x i8] c"zl10036.author=Matthias Schwarzott\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [49 x i8] c"zl10036.file=drivers/media/dvb-frontends/zl10036\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"zl10036.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zl10036_read_status_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: i2c read failed at addr=%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zl10036_read_status_reg\00", [40 x i8] zeroinitializer }, align 32
@zl10036_read_status_reg._entry_ptr = internal global ptr @zl10036_read_status_reg._entry, section ".printk_index", align 4
@zl10036_read_status_reg._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017zl10036: R(status): %02x  [FL=%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@zl10036_read_status_reg._entry_ptr.16 = internal global ptr @zl10036_read_status_reg._entry.14, section ".printk_index", align 4
@zl10036_read_status_reg._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017zl10036: %s: Power-On-Reset bit enabled - need to initialize the tuner\0A\00", [54 x i8] zeroinitializer }, align 32
@zl10036_read_status_reg._entry_ptr.19 = internal global ptr @zl10036_read_status_reg._entry.17, section ".printk_index", align 4
@__const.zl10036_init_regs.zl10036_init_tab = private unnamed_addr constant [7 x [2 x i8]] [[2 x i8] c"\04\00", [2 x i8] c"\8B\0A", [2 x i8] c"\C0 ", [2 x i8] c"\D3@", [2 x i8] c"\E3[", [2 x i8] c"\F0(", [2 x i8] c"\E3\F9"], align 1
@zl10036_init_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017zl10036: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zl10036_init_regs\00", [46 x i8] zeroinitializer }, align 32
@zl10036_init_regs._entry_ptr = internal global ptr @zl10036_init_regs._entry, section ".printk_index", align 4
@zl10036_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017zl10036: W(%d):\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zl10036_write\00", [18 x i8] zeroinitializer }, align 32
@zl10036_write._entry_ptr = internal global ptr @zl10036_write._entry, section ".printk_index", align 4
@zl10036_write._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@zl10036_write._entry_ptr.26 = internal global ptr @zl10036_write._entry.24, section ".printk_index", align 4
@zl10036_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@zl10036_write._entry_ptr.29 = internal global ptr @zl10036_write._entry.27, section ".printk_index", align 4
@zl10036_write._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: i2c error, ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@zl10036_write._entry_ptr.32 = internal global ptr @zl10036_write._entry.30, section ".printk_index", align 4
@zl10036_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.33, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zl10036_sleep\00", [18 x i8] zeroinitializer }, align 32
@zl10036_sleep._entry_ptr = internal global ptr @zl10036_sleep._entry, section ".printk_index", align 4
@zl10036_set_gain_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017zl10036: %s: c=%u rfg=%u ba=%u bg=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zl10036_set_gain_params\00", [40 x i8] zeroinitializer }, align 32
@zl10036_set_gain_params._entry_ptr = internal global ptr @zl10036_set_gain_params._entry, section ".printk_index", align 4
@zl10036_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017zl10036: %s: ftodo=%u fpriv=%u ferr=%d div=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zl10036_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@zl10036_set_frequency._entry_ptr = internal global ptr @zl10036_set_frequency._entry, section ".printk_index", align 4
@zl10036_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017zl10036: %s: BW=%d br=%u bf=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zl10036_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@zl10036_set_bandwidth._entry_ptr = internal global ptr @zl10036_set_bandwidth._entry, section ".printk_index", align 4
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 456, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 472, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 478, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"zl10036_tuner_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 435, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 490, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"zl10036_debug\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 25, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 68, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 73, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 76, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 403, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 107, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 111, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 112, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 118, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 139, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 290, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 183, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [41 x i8] c"../drivers/media/dvb-frontends/zl10036.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 239, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__ksymtab_zl10036_attach, ptr @__param_debug, ptr @zl10036_attach._entry, ptr @zl10036_attach._entry.3, ptr @zl10036_attach._entry.6, ptr @zl10036_attach._entry.9, ptr @zl10036_attach._entry_ptr, ptr @zl10036_attach._entry_ptr.11, ptr @zl10036_attach._entry_ptr.5, ptr @zl10036_attach._entry_ptr.8, ptr @zl10036_init_regs._entry, ptr @zl10036_init_regs._entry_ptr, ptr @zl10036_read_status_reg._entry, ptr @zl10036_read_status_reg._entry.14, ptr @zl10036_read_status_reg._entry.17, ptr @zl10036_read_status_reg._entry_ptr, ptr @zl10036_read_status_reg._entry_ptr.16, ptr @zl10036_read_status_reg._entry_ptr.19, ptr @zl10036_set_bandwidth._entry, ptr @zl10036_set_bandwidth._entry_ptr, ptr @zl10036_set_frequency._entry, ptr @zl10036_set_frequency._entry_ptr, ptr @zl10036_set_gain_params._entry, ptr @zl10036_set_gain_params._entry_ptr, ptr @zl10036_sleep._entry, ptr @zl10036_sleep._entry_ptr, ptr @zl10036_write._entry, ptr @zl10036_write._entry.24, ptr @zl10036_write._entry.27, ptr @zl10036_write._entry.30, ptr @zl10036_write._entry_ptr, ptr @zl10036_write._entry_ptr.26, ptr @zl10036_write._entry_ptr.29, ptr @zl10036_write._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @zl10036_tuner_ops, ptr @.str.10, ptr @zl10036_debug, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_read_status_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_read_status_reg._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_read_status_reg._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_init_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_write._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_write._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_set_gain_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10036_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zl10036_attach(ptr noundef %fe, ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %config, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %config5 = getelementptr inbounds %struct.zl10036_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config5, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %if.end4.if.end12_crit_edge, label %if.then8

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end4.if.end12_crit_edge
  %call13 = tail call fastcc i32 @zl10036_read_status_reg(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.error_crit_edge, label %if.end20

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end20:                                         ; preds = %if.end12
  %call21 = tail call fastcc i32 @zl10036_init_regs(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.error_crit_edge, label %if.end29

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end29:                                         ; preds = %if.end20
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool32.not = icmp eq ptr %6, null
  br i1 %tobool32.not, label %if.end29.if.end37_crit_edge, label %if.then33

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 %6(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end29.if.end37_crit_edge
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %7 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %8 = call ptr @memcpy(ptr %tuner_ops, ptr @zl10036_tuner_ops, i32 220)
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config, align 4
  %conv = zext i8 %10 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef %tuner_ops, i32 noundef %conv) #10
  br label %cleanup

error:                                            ; preds = %if.end20.error_crit_edge, %if.end12.error_crit_edge
  %.str.7.sink = phi ptr [ @.str.4, %if.end12.error_crit_edge ], [ @.str.7, %if.end20.error_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink, ptr noundef nonnull @.str.1) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end37, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %error ], [ %fe, %if.end37 ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zl10036_read_status_reg(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %status = alloca i8, align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %config = getelementptr inbounds %struct.zl10036_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %status, ptr %buf, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %do.body6, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv4 = zext i8 %16 to i32
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv4) #10
  br label %cleanup

do.body6:                                         ; preds = %entry
  %17 = load i32, ptr @zl10036_debug, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6.do.end19_crit_edge, label %do.end10

do.body6.do.end19_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end10:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 1
  %conv12 = zext i8 %19 to i32
  %and14 = lshr i32 %conv12, 6
  %and14.lobit = and i32 %and14, 1
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv12, i32 noundef %and14.lobit) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end10, %do.body6.do.end19_crit_edge
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool22.not = icmp sgt i8 %21, -1
  br i1 %tobool22.not, label %do.end19.if.end36_crit_edge, label %do.body24

do.end19.if.end36_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.body24:                                        ; preds = %do.end19
  %22 = load i32, ptr @zl10036_debug, align 4
  %and25 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.if.end36_crit_edge, label %do.end30

do.body24.if.end36_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %do.body24.if.end36_crit_edge, %do.end19.if.end36_crit_edge
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status, align 1
  %conv37 = zext i8 %24 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %conv37, %if.end36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zl10036_init_regs(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  %zl10036_init_tab = alloca [7 x [2 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %zl10036_init_tab) #7
  %0 = call ptr @memcpy(ptr %zl10036_init_tab, ptr @__const.zl10036_init_regs.zl10036_init_tab, i32 14)
  %br = getelementptr inbounds %struct.zl10036_state, ptr %state, i32 0, i32 3
  %1 = ptrtoint ptr %br to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %br, align 4
  %bf = getelementptr inbounds %struct.zl10036_state, ptr %state, i32 0, i32 4
  %2 = ptrtoint ptr %bf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %bf, align 1
  %config = getelementptr inbounds %struct.zl10036_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %rf_loop_enable = getelementptr inbounds %struct.zl10036_config, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %rf_loop_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rf_loop_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr inbounds [7 x [2 x i8]], ptr %zl10036_init_tab, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %arrayidx, align 1
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %10 = load i32, ptr @zl10036_debug, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %call11 = call fastcc i32 @zl10036_write(ptr noundef %state, ptr noundef nonnull %zl10036_init_tab, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end8.cleanup_crit_edge, label %for.cond

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %do.end8
  %arrayidx10.1 = getelementptr inbounds [7 x [2 x i8]], ptr %zl10036_init_tab, i32 0, i32 1
  %call11.1 = call fastcc i32 @zl10036_write(ptr noundef %state, ptr noundef %arrayidx10.1, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %cmp12.1 = icmp slt i32 %call11.1, 0
  br i1 %cmp12.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx10.2 = getelementptr inbounds [7 x [2 x i8]], ptr %zl10036_init_tab, i32 0, i32 2
  %call11.2 = call fastcc i32 @zl10036_write(ptr noundef %state, ptr noundef %arrayidx10.2, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2)
  %cmp12.2 = icmp slt i32 %call11.2, 0
  br i1 %cmp12.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx10.3 = getelementptr inbounds [7 x [2 x i8]], ptr %zl10036_init_tab, i32 0, i32 3
  %call11.3 = call fastcc i32 @zl10036_write(ptr noundef %state, ptr noundef %arrayidx10.3, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.3)
  %cmp12.3 = icmp slt i32 %call11.3, 0
  br i1 %cmp12.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx10.4 = getelementptr inbounds [7 x [2 x i8]], ptr %zl10036_init_tab, i32 0, i32 4
  %call11.4 = call fastcc i32 @zl10036_write(ptr noundef %state, ptr noundef %arrayidx10.4, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.4)
  %cmp12.4 = icmp slt i32 %call11.4, 0
  br i1 %cmp12.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx10.5 = getelementptr inbounds [7 x [2 x i8]], ptr %zl10036_init_tab, i32 0, i32 5
  %call11.5 = call fastcc i32 @zl10036_write(ptr noundef %state, ptr noundef %arrayidx10.5, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.5)
  %cmp12.5 = icmp slt i32 %call11.5, 0
  br i1 %cmp12.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.6 = getelementptr inbounds [7 x [2 x i8]], ptr %zl10036_init_tab, i32 0, i32 6
  %call11.6 = call fastcc i32 @zl10036_write(ptr noundef %state, ptr noundef %arrayidx10.6, i8 noundef zeroext 2)
  %11 = call i32 @llvm.smin.i32(i32 %call11.6, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end8.cleanup_crit_edge ], [ %call11.1, %for.cond.cleanup_crit_edge ], [ %call11.2, %for.cond.1.cleanup_crit_edge ], [ %call11.3, %for.cond.2.cleanup_crit_edge ], [ %call11.4, %for.cond.3.cleanup_crit_edge ], [ %call11.5, %for.cond.4.cleanup_crit_edge ], [ %11, %for.cond.5 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %zl10036_init_tab) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zl10036_write(ptr nocapture noundef readonly %state, ptr noundef %buf, i8 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %config = getelementptr inbounds %struct.zl10036_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %conv1 = zext i8 %count to i16
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv1, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf2, align 4
  %10 = load i32, ptr @zl10036_debug, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end69_crit_edge, label %if.then

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %conv3 = zext i8 %12 to i32
  %and4 = and i32 %conv3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %if.then.do.end53_crit_edge, label %if.else

if.then.do.end53_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.else:                                          ; preds = %if.then
  %and9 = and i32 %conv3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 128
  br i1 %cmp10, label %if.else.do.end53_crit_edge, label %if.else13

if.else.do.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.else13:                                        ; preds = %if.else
  %and16 = and i32 %conv3, 240
  %13 = add nsw i32 %and16, -192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %14 = icmp ult i32 %13, 64
  br i1 %14, label %switch.lookup, label %if.else13.do.end53_crit_edge

if.else13.do.end53_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

switch.lookup:                                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  %15 = lshr exact i32 %13, 3
  %switch.offset = add nuw nsw i32 %15, 6
  br label %do.end53

do.end53:                                         ; preds = %switch.lookup, %if.else13.do.end53_crit_edge, %if.else.do.end53_crit_edge, %if.then.do.end53_crit_edge
  %reg.0 = phi i32 [ 2, %if.then.do.end53_crit_edge ], [ 4, %if.else.do.end53_crit_edge ], [ %switch.offset, %switch.lookup ], [ 0, %if.else13.do.end53_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %reg.0) #10
  %conv54 = zext i8 %count to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count)
  %cmp5594.not = icmp eq i8 %count, 0
  br i1 %cmp5594.not, label %do.end53.do.end66_crit_edge, label %do.end53.do.end59_crit_edge

do.end53.do.end59_crit_edge:                      ; preds = %do.end53
  br label %do.end59

do.end53.do.end66_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end59:                                         ; preds = %do.end59.do.end59_crit_edge, %do.end53.do.end59_crit_edge
  %i.095 = phi i32 [ %inc, %do.end59.do.end59_crit_edge ], [ 0, %do.end53.do.end59_crit_edge ]
  %arrayidx61 = getelementptr i8, ptr %buf, i32 %i.095
  %16 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %17 to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv62) #10
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %conv54
  br i1 %exitcond.not, label %do.end59.do.end66_crit_edge, label %do.end59.do.end59_crit_edge

do.end59.do.end59_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end59.do.end66_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end66:                                         ; preds = %do.end59.do.end66_crit_edge, %do.end53.do.end66_crit_edge
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  br label %if.end69

if.end69:                                         ; preds = %do.end66, %entry.if.end69_crit_edge
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %call70 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 1
  br i1 %cmp71.not, label %if.end69.cleanup_crit_edge, label %do.end76

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23, i32 noundef %call70) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %if.end69.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end76 ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zl10036_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10036_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @zl10036_read_status_reg(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @zl10036_init_regs(ptr noundef %1)
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.then10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %5(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ %call6, %if.then10 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10036_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -3968, ptr %buf, align 2
  %3 = load i32, ptr @zl10036_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.33) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end3.if.end9_crit_edge, label %if.then5

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 %5(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end3.if.end9_crit_edge
  %call10 = call fastcc i32 @zl10036_write(ptr noundef %1, ptr noundef nonnull %buf, i8 noundef zeroext 2)
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end9.if.end18_crit_edge, label %if.then14

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 %7(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end9.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10036_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf_bf.i = alloca [2 x i8], align 2
  %buf_br.i = alloca [2 x i8], align 2
  %zl10036_rsd_off.i = alloca [1 x i8], align 1
  %buf.i98 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %frequency_min_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %frequency_min_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency_min_hz, align 4
  %div = udiv i32 %5, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp = icmp ult i32 %3, %div
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %frequency_max_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %frequency_max_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency_max_hz, align 4
  %div4 = udiv i32 %7, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div4)
  %cmp5 = icmp ugt i32 %3, %div4
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %8 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %symbol_rate, align 4
  %mul = mul i32 %9, 27
  %div7 = udiv i32 %mul, 32000
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000, i32 %3)
  %cmp8 = icmp ult i32 %3, 950000
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %3)
  %cmp10 = icmp ult i32 %3, 1250000
  br i1 %cmp10, label %if.else.if.end22_crit_edge, label %if.else12

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1750000, i32 %3)
  %cmp13 = icmp ult i32 %3, 1750000
  br i1 %cmp13, label %if.else12.if.end22_crit_edge, label %if.else15

if.else12.if.end22_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2175000, i32 %3)
  %cmp16 = icmp ult i32 %3, 2175000
  br i1 %cmp16, label %if.else15.if.end22_crit_edge, label %if.else15.cleanup_crit_edge

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else15.if.end22_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %if.else15.if.end22_crit_edge, %if.else12.if.end22_crit_edge, %if.else.if.end22_crit_edge
  %c.0 = phi i32 [ 0, %if.else.if.end22_crit_edge ], [ 1, %if.else12.if.end22_crit_edge ], [ 2, %if.else15.if.end22_crit_edge ]
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end22.if.end27_crit_edge, label %if.then24

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %11(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %config.i = getelementptr inbounds %struct.zl10036_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 4
  %rf_loop_enable.i = getelementptr inbounds %struct.zl10036_config, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %rf_loop_enable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rf_loop_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 -117, i8 -118
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.store.select.i, ptr %buf.i, align 1
  %c.tr.i = trunc i32 %c.0 to i8
  %18 = shl nuw nsw i8 %c.tr.i, 5
  %conv17.i = or i8 %18, 10
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv17.i, ptr %12, align 1
  %20 = load i32, ptr @zl10036_debug, align 4
  %and19.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end27.zl10036_set_gain_params.exit_crit_edge, label %do.end.i

if.end27.zl10036_set_gain_params.exit_crit_edge:  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10036_set_gain_params.exit

do.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %c.0, i32 noundef 0, i32 noundef 1, i32 noundef 1) #10
  br label %zl10036_set_gain_params.exit

zl10036_set_gain_params.exit:                     ; preds = %do.end.i, %if.end27.zl10036_set_gain_params.exit_crit_edge
  %call29.i = call fastcc i32 @zl10036_write(ptr noundef %1, ptr noundef nonnull %buf.i, i8 noundef zeroext 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp29 = icmp slt i32 %call29.i, 0
  br i1 %cmp29, label %zl10036_set_gain_params.exit.error_crit_edge, label %if.end32

zl10036_set_gain_params.exit.error_crit_edge:     ; preds = %zl10036_set_gain_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end32:                                         ; preds = %zl10036_set_gain_params.exit
  %21 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dtv_property_cache, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i98) #7
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i98, i32 0, i32 1
  %add.i = add i32 %22, 505
  %div1.i = udiv i32 %add.i, 1011
  %mul.i = mul nuw i32 %div1.i, 1011
  %frequency2.i = getelementptr inbounds %struct.zl10036_state, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %frequency2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.i, ptr %frequency2.i, align 4
  %shr.i = lshr i32 %div1.i, 8
  %25 = trunc i32 %shr.i to i8
  %conv.i = and i8 %25, 127
  %26 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %buf.i98, align 1
  %conv6.i = trunc i32 %div1.i to i8
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv6.i, ptr %23, align 1
  %28 = load i32, ptr @zl10036_debug, align 4
  %and8.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i99 = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i99, label %if.end32.zl10036_set_frequency.exit_crit_edge, label %do.end.i101

if.end32.zl10036_set_frequency.exit_crit_edge:    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10036_set_frequency.exit

do.end.i101:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %22, %mul.i
  %call.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %22, i32 noundef %mul.i, i32 noundef %sub.i, i32 noundef %div1.i) #10
  br label %zl10036_set_frequency.exit

zl10036_set_frequency.exit:                       ; preds = %do.end.i101, %if.end32.zl10036_set_frequency.exit_crit_edge
  %call13.i = call fastcc i32 @zl10036_write(ptr noundef %1, ptr noundef nonnull %buf.i98, i8 noundef zeroext 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp35 = icmp slt i32 %call13.i, 0
  br i1 %cmp35, label %zl10036_set_frequency.exit.error_crit_edge, label %if.end38

zl10036_set_frequency.exit.error_crit_edge:       ; preds = %zl10036_set_frequency.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end38:                                         ; preds = %zl10036_set_frequency.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_bf.i) #7
  %29 = ptrtoint ptr %buf_bf.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -16384, ptr %buf_bf.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_br.i) #7
  %30 = ptrtoint ptr %buf_br.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -4096, ptr %buf_br.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zl10036_rsd_off.i) #7
  %31 = ptrtoint ptr %zl10036_rsd_off.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -56, ptr %zl10036_rsd_off.i, align 1
  %32 = call i32 @llvm.umin.i32(i32 %div7, i32 32000)
  %33 = call i32 @llvm.umax.i32(i32 %32, i32 5000)
  %34 = add nuw nsw i32 %33, 3000
  call void @__sanitizer_cov_trace_const_cmp4(i32 25821, i32 %33)
  %cmp4.i = icmp ult i32 %33, 25821
  br i1 %cmp4.i, label %if.end38.if.end6.i_crit_edge, label %if.else.i

if.end38.if.end6.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i102 = mul nuw nsw i32 %34, 419
  %div.i = udiv i32 212331000, %mul.i102
  %conv.i103 = trunc i32 %div.i to i8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.end38.if.end6.i_crit_edge
  %br.0.i = phi i8 [ %conv.i103, %if.else.i ], [ 17, %if.end38.if.end6.i_crit_edge ]
  %conv17.i104 = zext i8 %br.0.i to i32
  %mul18.i = mul nuw nsw i32 %34, 1257
  %mul19.i = mul nuw nsw i32 %mul18.i, %conv17.i104
  %div20.i = udiv i32 %mul19.i, 10111000
  %35 = trunc i32 %div20.i to i8
  %conv21.i = add nsw i8 %35, -1
  %36 = call i8 @llvm.umin.i8(i8 %conv21.i, i8 62) #7
  %shl.i = shl nuw nsw i8 %36, 1
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %buf_bf.i, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %shl.i, ptr %arrayidx.i, align 1
  %shl30.i = shl nuw nsw i8 %br.0.i, 2
  %and31.i = and i8 %shl30.i, 124
  %arrayidx33.i = getelementptr inbounds [2 x i8], ptr %buf_br.i, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %and31.i, ptr %arrayidx33.i, align 1
  %39 = load i32, ptr @zl10036_debug, align 4
  %and34.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool.not.i105 = icmp eq i32 %and34.i, 0
  br i1 %tobool.not.i105, label %if.end6.i.do.end41.i_crit_edge, label %do.end.i107

if.end6.i.do.end41.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41.i

do.end.i107:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv27.i = zext i8 %36 to i32
  %call.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %34, i32 noundef %conv17.i104, i32 noundef %conv27.i) #10
  br label %do.end41.i

do.end41.i:                                       ; preds = %do.end.i107, %if.end6.i.do.end41.i_crit_edge
  %br43.i = getelementptr inbounds %struct.zl10036_state, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %br43.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %br43.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %br.0.i, i8 %41)
  %cmp45.not.i = icmp eq i8 %br.0.i, %41
  br i1 %cmp45.not.i, label %do.end41.i.if.end53.i_crit_edge, label %if.then47.i

do.end41.i.if.end53.i_crit_edge:                  ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then47.i:                                      ; preds = %do.end41.i
  %call48.i = call fastcc i32 @zl10036_write(ptr noundef %1, ptr noundef nonnull %buf_br.i, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.then47.i.zl10036_set_bandwidth.exit.thread_crit_edge, label %if.then47.i.if.end53.i_crit_edge

if.then47.i.if.end53.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then47.i.zl10036_set_bandwidth.exit.thread_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10036_set_bandwidth.exit.thread

if.end53.i:                                       ; preds = %if.then47.i.if.end53.i_crit_edge, %do.end41.i.if.end53.i_crit_edge
  %bf55.i = getelementptr inbounds %struct.zl10036_state, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %bf55.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bf55.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %43)
  %cmp57.not.i = icmp eq i8 %36, %43
  br i1 %cmp57.not.i, label %if.end53.i.zl10036_set_bandwidth.exit_crit_edge, label %if.then59.i

if.end53.i.zl10036_set_bandwidth.exit_crit_edge:  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10036_set_bandwidth.exit

if.then59.i:                                      ; preds = %if.end53.i
  %call61.i = call fastcc i32 @zl10036_write(ptr noundef %1, ptr noundef nonnull %buf_bf.i, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 0
  br i1 %cmp62.i, label %if.then59.i.zl10036_set_bandwidth.exit.thread_crit_edge, label %if.end65.i

if.then59.i.zl10036_set_bandwidth.exit.thread_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10036_set_bandwidth.exit.thread

if.end65.i:                                       ; preds = %if.then59.i
  call void @msleep(i32 noundef 1) #7
  %call67.i = call fastcc i32 @zl10036_write(ptr noundef %1, ptr noundef nonnull %zl10036_rsd_off.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %cmp68.i = icmp slt i32 %call67.i, 0
  br i1 %cmp68.i, label %if.end65.i.zl10036_set_bandwidth.exit.thread_crit_edge, label %if.end65.i.zl10036_set_bandwidth.exit_crit_edge

if.end65.i.zl10036_set_bandwidth.exit_crit_edge:  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10036_set_bandwidth.exit

if.end65.i.zl10036_set_bandwidth.exit.thread_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl10036_set_bandwidth.exit.thread

zl10036_set_bandwidth.exit.thread:                ; preds = %if.end65.i.zl10036_set_bandwidth.exit.thread_crit_edge, %if.then59.i.zl10036_set_bandwidth.exit.thread_crit_edge, %if.then47.i.zl10036_set_bandwidth.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call67.i, %if.end65.i.zl10036_set_bandwidth.exit.thread_crit_edge ], [ %call61.i, %if.then59.i.zl10036_set_bandwidth.exit.thread_crit_edge ], [ %call48.i, %if.then47.i.zl10036_set_bandwidth.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zl10036_rsd_off.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_br.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_bf.i) #7
  br label %error

zl10036_set_bandwidth.exit:                       ; preds = %if.end65.i.zl10036_set_bandwidth.exit_crit_edge, %if.end53.i.zl10036_set_bandwidth.exit_crit_edge
  %44 = ptrtoint ptr %br43.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %br.0.i, ptr %br43.i, align 4
  %45 = ptrtoint ptr %bf55.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %36, ptr %bf55.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zl10036_rsd_off.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_br.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_bf.i) #7
  br label %for.body

for.body:                                         ; preds = %if.end53.for.body_crit_edge, %zl10036_set_bandwidth.exit
  %i.0110 = phi i32 [ 0, %zl10036_set_bandwidth.exit ], [ %inc, %if.end53.for.body_crit_edge ]
  %call46 = call fastcc i32 @zl10036_read_status_reg(ptr noundef %1)
  %46 = and i32 %call46, -2147483584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %if.end53, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end53:                                         ; preds = %for.body
  call void @msleep(i32 noundef 10) #7
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end53.error_crit_edge, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end53.error_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.end53.error_crit_edge, %for.body.error_crit_edge, %zl10036_set_bandwidth.exit.thread, %zl10036_set_frequency.exit.error_crit_edge, %zl10036_set_gain_params.exit.error_crit_edge
  %ret.1 = phi i32 [ %call29.i, %zl10036_set_gain_params.exit.error_crit_edge ], [ %call13.i, %zl10036_set_frequency.exit.error_crit_edge ], [ %retval.0.i.ph, %zl10036_set_bandwidth.exit.thread ], [ %call46, %for.body.error_crit_edge ], [ %call46, %if.end53.error_crit_edge ]
  %48 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool56.not = icmp eq ptr %49, null
  br i1 %tobool56.not, label %error.cleanup_crit_edge, label %if.then57

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 %49(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %error.cleanup_crit_edge, %if.else15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.else15.cleanup_crit_edge ], [ %ret.1, %if.then57 ], [ %ret.1, %error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zl10036_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.zl10036_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 456, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @zl10036_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @zl10036_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 472, i32 3}
!8 = !{ptr @zl10036_attach._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @zl10036_attach._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 478, i32 3}
!12 = !{ptr @zl10036_attach._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @zl10036_attach._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 490, i32 2}
!16 = !{ptr @zl10036_attach._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @zl10036_attach._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_zl10036_attach, !19, !"__ksymtab_zl10036_attach", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 499, i32 1}
!20 = !{ptr @__param_debug, !21, !"__param_debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 501, i32 1}
!22 = !{ptr @__UNIQUE_ID_debugtype290, !21, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_debug291, !24, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 502, i32 1}
!25 = !{ptr @__UNIQUE_ID_description292, !26, !"__UNIQUE_ID_description292", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 503, i32 1}
!27 = !{ptr @__UNIQUE_ID_author293, !28, !"__UNIQUE_ID_author293", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 504, i32 1}
!29 = !{ptr @__UNIQUE_ID_author294, !30, !"__UNIQUE_ID_author294", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 505, i32 1}
!31 = !{ptr @__UNIQUE_ID_file295, !32, !"__UNIQUE_ID_file295", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 506, i32 1}
!33 = !{ptr @__UNIQUE_ID_license296, !32, !"__UNIQUE_ID_license296", i1 false, i1 false}
!34 = !{ptr @zl10036_debug, !35, !"zl10036_debug", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 25, i32 12}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 68, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @zl10036_read_status_reg._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @zl10036_read_status_reg._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 73, i32 2}
!43 = !{ptr @zl10036_read_status_reg._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @zl10036_read_status_reg._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 76, i32 3}
!47 = !{ptr @zl10036_read_status_reg._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @zl10036_read_status_reg._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 403, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @zl10036_init_regs._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @zl10036_init_regs._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 107, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @zl10036_write._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @zl10036_write._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 111, i32 5}
!61 = !{ptr @zl10036_write._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @zl10036_write._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 112, i32 4}
!65 = !{ptr @zl10036_write._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @zl10036_write._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 118, i32 3}
!69 = !{ptr @zl10036_write._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @zl10036_write._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @zl10036_tuner_ops, !72, !"zl10036_tuner_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 435, i32 35}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 139, i32 2}
!75 = !{ptr @zl10036_sleep._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @zl10036_sleep._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 290, i32 2}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @zl10036_set_gain_params._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @zl10036_set_gain_params._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 183, i32 2}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @zl10036_set_frequency._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @zl10036_set_frequency._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/zl10036.c", i32 239, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @zl10036_set_bandwidth._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @zl10036_set_bandwidth._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @__param_str_debug, !21, !"__param_str_debug", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
